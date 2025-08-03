//
//  XStyleTabBar.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


import SwiftUI

@available(iOS 17.0, *)
public struct XStyleTabBar: View {
    public let tabs: [String]
    @Binding public var selectedTab: Int
    public let textColor: Color
    public let selectedColor: Color
    public let indicatorColor: Color
    
    public init(
        tabs: [String],
        selectedTab: Binding<Int>,
        textColor: Color = .gray.opacity(0.7),
        selectedColor: Color = .white,
        indicatorColor: Color = .blue
    ) {
        self.tabs = tabs
        self._selectedTab = selectedTab
        self.textColor = textColor
        self.selectedColor = selectedColor
        self.indicatorColor = indicatorColor
    }
    
    public var body: some View {
        GeometryReader { geo in
            ScrollViewReader { scrollView in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(tabs.indices, id: \.self) { index in
                            VStack(spacing: 0) {
                                DecryptingText(
                                    text: tabs[index],
                                    fontSize: 13,
                                    alignment: .center,
                                    textColor: selectedTab == index ? selectedColor : textColor
                                )
                                .font(.system(size: 13, weight: selectedTab == index ? .bold : .regular))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 8)
                                .frame(minWidth: textWidth(for: tabs[index]))
                                .fixedSize(horizontal: true, vertical: false)
                                .onTapGesture {
                                    withAnimation(.easeInOut(duration: 0.3)) {
                                        selectedTab = index
                                    }
                                }
                            }
                            .frame(width: textWidth(for: tabs[index]))
                            .id(index)
                        }
                    }
                    .padding(.horizontal, 16)
                    .overlay(
                        GeometryReader { proxy in
                            Rectangle()
                                .fill(indicatorColor)
                                .frame(width: textWidth(for: tabs[selectedTab]), height: 2)
                                .offset(x: tabOffset(for: selectedTab, in: proxy), y: proxy.size.height - 2)
                                .animation(.easeInOut(duration: 0.3), value: selectedTab)
                        }
                    )
                }
                .frame(height: 44)
                .onChange(of: selectedTab) { oldValue, newValue in
                    withAnimation(.easeInOut(duration: 0.3)) {
                        scrollView.scrollTo(newValue, anchor: .center)
                    }
                }
            }
        }
        .frame(height: 44)
    }
    
    private func textWidth(for text: String) -> CGFloat {
        let font = UIFont.systemFont(ofSize: 13, weight: .regular)
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        let size = (text as NSString).size(withAttributes: attributes)
        return size.width + 24
    }
    
    private func tabOffset(for index: Int, in geometry: GeometryProxy) -> CGFloat {
        var offset: CGFloat = 16
        for i in 0..<index {
            offset += textWidth(for: tabs[i]) + 16
        }
        return offset
    }
}

#Preview {
    if #available(iOS 17.0, *) {
        XStyleTabBar(
            tabs: ["Tout", "Achats", "Dépensés", "Remboursements", "Offres"],
            selectedTab: .constant(3),
            textColor: .gray.opacity(0.7),
            selectedColor: .gray,
            indicatorColor: .black
        )
        .padding(.horizontal, 16)
    } else {
        // Fallback on earlier versions
    }
}
