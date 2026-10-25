//
//  RootView.swift
//  ReciklirajuciPogledi
//
//  Created by foi on 25.10.2026..
//

import SwiftUI

struct RootView: View {
    @State private var isLoading = true
    
    var body: some View {
        Group {
            if isLoading {
                Loading()
            } else {
                ContentView()
            }
        }
        .task {
            guard isLoading else { return }
            try? await Task.sleep(for: .seconds(3))
            isLoading = false
        }
    }
}

#Preview {
    RootView()
}
