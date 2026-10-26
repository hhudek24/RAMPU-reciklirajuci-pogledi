//
//  KarticaView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 26.10.2026..
//

import SwiftUI

struct KarticaView: View {
    
    var patkica: Duck
    var body: some View {
        ZStack{
            VStack(spacing: 20){
                Image(patkica.slika)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 200)
                    Spacer()
                    Text(patkica.ime)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundStyle(.pink)
            }
            .padding()
            .background(Color.pink.opacity(0.22))
            .cornerRadius(22)
            .shadow(color: .gray.opacity(0.3), radius: 5)
        }
        .padding(.horizontal)
    }
}

#Preview {
    KarticaView(patkica: DemoPodaci.ducks[0])
}
