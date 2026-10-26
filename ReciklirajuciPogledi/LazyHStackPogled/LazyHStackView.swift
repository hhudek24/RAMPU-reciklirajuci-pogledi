//
//  LazyHStackView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 26.10.2026..
//

import SwiftUI

struct LazyHStackView: View {
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(spacing: 15){
                ForEach (DemoPodaci.ducks, id: \.id){ patkica in
                    VStack(spacing: 8){
                        Text(patkica.ime)
                        Text("Boja: \(patkica.boja)")
                        Text("Cijena: \(patkica.cijena)")
                    }
                    .frame(width: 180, height: 160)
                    .padding()
                    .cornerRadius(12)
                    .background(Color.pink.opacity(0.1))
                    
                }
            }
            .padding()
        }
        .navigationTitle("LazyHStack prikaz patkica")
    }
}

#Preview {
    NavigationStack{
        LazyHStackView()
    }
}
