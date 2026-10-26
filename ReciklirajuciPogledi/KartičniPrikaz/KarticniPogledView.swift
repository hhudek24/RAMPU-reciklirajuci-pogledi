//
//  KarticniPogledView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 26.10.2026..
//

import SwiftUI

struct KarticniPogledView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 15){
                ForEach(DemoPodaci.ducks, id: \.id){ patkica in
                    NavigationLink {
                        DetaljiPatkiceView(patkica: patkica)
                    }label:{
                                KarticaView(patkica:patkica)
                            }
                        }
                        
                    }
                    .padding()
                    .background(Color.pink.opacity(0.22))
                }
        .navigationTitle("Kartični prikaz patkica")
            }
        }

#Preview {
    NavigationStack{
        KarticniPogledView()
    }
}
