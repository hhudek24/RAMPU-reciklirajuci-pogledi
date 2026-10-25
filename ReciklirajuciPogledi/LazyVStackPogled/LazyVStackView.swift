//
//  LazyVStack.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct LazyVStack: View {
    let patkice = DemoPodaci.ducks
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(spacing: 12){
                ForEach(patkice, id: \.ime) { patkica in
                    VStack{
                        Text(patkica.ime)
                        Text(patkica.boja)
                        Text(patkica.cijena)
                        }
                    .padding()
                    .cornerRadius(12)
                    }
                }
            .padding()
            }
        .navigationTitle("LazyVStack")
    }
}


#Preview {
    LazyVStack()
}
