//
//  MrezaItemView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct MrezaItemView: View {
    var patkica : Duck
    var body: some View {
        VStack(spacing: 10){
            Text(patkica.ime).font(.headline)
            
            Text(patkica.boja).font(.subheadline)
            
            Text(patkica.cijena).font(.subheadline)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.pink.opacity(0.3))
        .cornerRadius(10)
    }
}

#Preview {
    MrezaItemView(patkica: DemoPodaci.ducks[0])
}
