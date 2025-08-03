//
//  BirthDatePickerView.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKViews/BirthDatePickerView.swift
// E-ROK-Package
//
// Created by Fabien Koré on 14/06/2025.

import SwiftUI
import EROKUI // Pour DecryptingText
import EROKCore // Pour BirthDate, Month

public struct BirthDatePickerView: View {
    @Binding public var birthDate: BirthDate
    public let textColor: Color
    public let backgroundColor: Color
    
    @State private var day: Int
    @State private var month: Month
    @State private var year: Int
    
    public init(
        birthDate: Binding<BirthDate>,
        textColor: Color = .black,
        backgroundColor: Color = .gray.opacity(0.0)
    ) {
        self._birthDate = birthDate
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self._day = State(initialValue: birthDate.wrappedValue.day)
        self._month = State(initialValue: birthDate.wrappedValue.month)
        self._year = State(initialValue: birthDate.wrappedValue.year)
    }
    
    public var body: some View {
        VStack(spacing: 4) {
            DecryptingText(text: "Date de naissance", fontSize: 20, style: .fast, textColor: textColor)
            
            HStack(spacing: 4) {
                Picker("Jour", selection: $day) {
                    ForEach(1...month.daysInMonth(year: year), id: \.self) { day in
                        Text("\(day)").tag(day)
                    }
                }
                .pickerStyle(.wheel)
                .frame(maxWidth: .infinity, maxHeight: 120)
                .clipped()
                
                Text("/")
                    .font(.system(size: 20))
                    .foregroundStyle(textColor)
                
                Picker("Mois", selection: $month) {
                    ForEach(Month.allCases) { month in
                        Text(month.rawValue.capitalized).tag(month)
                    }
                }
                .pickerStyle(.wheel)
                .frame(maxWidth: .infinity, maxHeight: 120)
                .clipped()
                
                Text("/")
                    .font(.system(size: 20))
                    .foregroundStyle(textColor)
                
                Picker("Année", selection: $year) {
                    ForEach(1900...2025, id: \.self) { year in
                        Text("\(year)").tag(year)
                    }
                }
                .pickerStyle(.wheel)
                .frame(maxWidth: .infinity, maxHeight: 120)
                .clipped()
            }
            .padding(8)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .onChange(of: day) { _, _ in
                updateBirthDate()
            }
            .onChange(of: month) { _, _ in
                updateBirthDate()
            }
            .onChange(of: year) { _, _ in
                updateBirthDate()
            }
        }
        .padding(8)
    }
    
    private func updateBirthDate() {
        let maxDays = month.daysInMonth(year: year)
        let adjustedDay = min(day, maxDays)
        
        let newBirthDate = BirthDate(day: adjustedDay, month: month, year: year)
        birthDate = newBirthDate
        
        if adjustedDay != day {
            day = adjustedDay
        }
    }
}

#Preview {
    BirthDatePickerView(
        birthDate: .constant(BirthDate(day: 1, month: .janvier, year: 2000)),
        textColor: .black,
        backgroundColor: .gray.opacity(0.0)
    )
    .padding()
}
