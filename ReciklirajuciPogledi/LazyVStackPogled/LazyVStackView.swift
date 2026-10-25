//
//  LazyVStack.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct LazyVStackView: View {
    let patkice = DemoPodaci.ducks
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(spacing: 12){
                ForEach(patkice, id: \.ime) { patkica in
                    VStack{
                        Text(patkica.ime)
                        Text("Boja:  \(patkica.boja)")
                        Text("Cijena: \(patkica.cijena)")
                        }
                    .padding()
                    .cornerRadius(12)
                    .frame(width:180, height: 160)
                    .background(Color.pink.opacity(0.1))
                    
                    }
                }
            .padding()
            }
        .navigationTitle("LazyVStack")
    }
}


#Preview {
    NavigationStack{
        LazyVStackView()
    }
}
