//
//  Loading.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct Loading: View {
    var body: some View {
        VStack(spacing: 24){
            
            ProgressView().controlSize(.large).tint(.pink)
            
            Text("Učitavanje aplikacije...").font(.subheadline).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
    }
}

#Preview {
    Loading()
}
