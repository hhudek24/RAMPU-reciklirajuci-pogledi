//
//  TableStyle.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct TableStyle {
    //širina stupaca
    static let imeWidth: CGFloat = 150
    static let bojaWidth: CGFloat = 110
    static let cijenaWidth: CGFloat = 110
    
    static let headerColor = Color.pink.opacity(0.2)
    static let alternateRowColor = Color.pink.opacity(0.1)
    
    static func headerCell(
        _ text: String,
        width: CGFloat,
    ) -> some View {
        
        Text(text)
            .font(.headline)
            .frame(width: width, alignment: .leading)
            .padding(.horizontal, 8)
            .padding(.vertical, 12)
    }
    
    static func dataCell (
        _ text: String,
        width: CGFloat
    ) -> some View {
        
        Text(text)
            .font(.body)
            .frame(width: width, alignment: .leading)
            .padding(.horizontal, 8)
            .padding(.vertical, 12)
    }
    
    static func rowCell(
        index: Int) -> Color {
            index.isMultiple(of: 2)
            ? alternateRowColor
            : Color.clear
        }
}

