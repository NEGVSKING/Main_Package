import SwiftUI

public struct OffsetInScrollView: View {
    public let named: String
    
    public var body: some View {
        GeometryReader { proxy in
            let offset = CGPoint(x: proxy.frame(in: .named(named)).minX, y: proxy.frame(in: .named(named)).minY)
            Color.clear.preference(key: ScrollOffsetKey.self, value: offset)
        }
    }
    
    public init(named: String) {
        self.named = named
    }
}

public struct OffsetOutScrollModifier: ViewModifier {
    
    @Binding public var offset: CGPoint
    public let named: String
    
    public func body(content: Content) -> some View {
        content
            .coordinateSpace(name: named)
            .onPreferenceChange(ScrollOffsetKey.self) { value in
                offset = value
            }
    }
    
    public init(offset: Binding<CGPoint>, named: String) {
        self._offset = offset
        self.named = named
    }
}

public struct ScrollOffsetKey: PreferenceKey {
    public typealias Value = CGPoint
    public static var defaultValue = CGPoint.zero
    
    public static func reduce(value: inout Value, nextValue: () -> Value) {
        let nextPoint = nextValue()
        value.x += nextPoint.x
        value.y += nextPoint.y
    }
}