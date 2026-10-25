//
//  TableView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct TableView: View {
    let patkice = DemoPodaci.ducks
    var body : some View{
        ScrollView(.horizontal){
            ScrollView(.vertical){
                
                VStack(spacing: 0){
                    
                    HStack(spacing: 0){
                        TableStyle.headerCell("Ime", width: TableStyle.imeWidth)
                        TableStyle.headerCell("Boja", width: TableStyle.bojaWidth)
                        TableStyle.headerCell("Cijena", width: TableStyle.cijenaWidth)
                    }
                    .background(TableStyle.headerColor)
                    Divider()
                    ForEach(
                        Array(patkice.enumerated()),
                            id: \.offset
                    ){index, patkica in
                        HStack(spacing: 0){
                            TableStyle.dataCell(patkica.ime, width: TableStyle.imeWidth)
                            TableStyle.dataCell(patkica.boja, width: TableStyle.bojaWidth)
                            TableStyle.dataCell(patkica.cijena, width: TableStyle.cijenaWidth)
                        }
                        .background(TableStyle.rowCell(index: index))
                        Divider()
                    }
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .navigationTitle("Tablični prikaz podatka o patkicama")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        TableView()
    }
}
