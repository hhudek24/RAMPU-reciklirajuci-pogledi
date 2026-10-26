//
//  DetaljiPatkiceView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 26.10.2026..
//

import SwiftUI

struct DetaljiPatkiceView: View {
    var patkica: Duck
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Image(patkica.slika)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(patkica.ime).font(.title)
            HStack{
                Text("ID: ").bold()
                Text("\(patkica.id)")
            }
            HStack{
                Text("Boja: ").bold()
                Text("\(patkica.boja)")
            }
            HStack{
                Text("Cijena: ").bold()
                Text("\(patkica.cijena)")
            }
        }
        .padding(15)
        .frame(width: 250)
        .navigationTitle(patkica.ime)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.pink.opacity(0.22))
        .cornerRadius(10)

        
    }
}

#Preview {
    NavigationStack{
        DetaljiPatkiceView(patkica: DemoPodaci.ducks[0])
    }
}
