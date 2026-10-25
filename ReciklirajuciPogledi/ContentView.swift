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
        "LayzHStack",
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
            Text("Prikaz patkica u tabičnom obliku")
            
        case "Mreža":
            Text("Prikaz patkica u mrežnom obliku")
            
        case "Kartični pogled":
            Text("Prikaz patkica u kartičnom obliku")
            
        case "LazyVStack":
            Text("Prikaz patkica u LazyVStack obliku")
            
        case "LazyHStack":
            Text("Prikaz patkica u LazyHStack obliku")
        default:
            Text("Pogreška")
        }
    }
}
#Preview {
    ContentView()
}
