//
//  MrezaView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct MrezaView: View {
    
    let patkice = DemoPodaci.ducks
    
    var body: some View {
        ScrollView{
            Grid(horizontalSpacing: 10, verticalSpacing: 10){
                ForEach(0..<patkice.count, id: \.self){i in
                    if i%2==0 {
                        GridRow {
                            MrezaItemView(patkica: patkice[i])
                            
                            if i+1 < patkice.count {
                                MrezaItemView(patkica: patkice[i+1])
                            }else{
                                Color.clear
                            }
                        }
                    }
                }
            }
            
            .padding()
        }
        .navigationTitle("Mreža patkica")
    }
}

#Preview {
    NavigationStack {
        MrezaView()
    }
}
