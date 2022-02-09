//
//  RootView.swift
//  SwiftUI-MVVM-Example
//
//  Created by Andrew Bogaevskyi on 08.02.2022.
//

import SwiftUI

struct RootView: View {
    @State var isOn = false
    
    var body: some View {
        VStack(spacing: 20) {
            ContentView(viewModel: ContentViewModel())
            
            if isOn {
                Text("is on")
            }
            
            Button("Trigger") {
                isOn.toggle()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
