//
//  ContentView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct ContentView: View {
    let vrstePrikaza = [
        "Tablica",
        "Mreža",
        "LazyVStack",
        "LazyHStack",
        "Kartični pogled"
    ]
    
    var body: some View{
        NavigationStack{
            List(vrstePrikaza, id: \.self){ prikaz in
                
                NavigationLink{
                    odabraniPrikaz(prikaz)
                }label: {
                    Text(prikaz).font(.headline).padding(.vertical, 9)
                }
            }
            .navigationTitle("Odaberi željeni prikaz patkica").navigationBarTitleDisplayMode(.inline)
        }
    }
@ViewBuilder
    func odabraniPrikaz(_ prikaz: String) -> some View{
        switch prikaz {
        case "Tablica":
            TableView()
        case "Mreža":
            MrezaView()
            
        case "Kartični pogled":
            Text("Prikaz patkica u kartičnom obliku")
            
        case "LazyVStack":
            LazyVStackView()
            
        case "LazyHStack":
            Text("Prikaz patkice obliku")
            
        default:
            Text("Pogreška")
        }
    }
}
#Preview {
    ContentView()
}
