//
//  ContentView.swift
//  SwiftUI-MVVM-Example
//
//  Created by Andrew Bogaevskyi on 08.02.2022.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    @Published var text = "Hello @StateObject"
    
    init() { print("ContentViewModel init") }
    deinit { print("ContentViewModel deinit") }
}

struct ContentView: View {
    @StateObject private var viewModel: ContentViewModel
    
    init(viewModel: @autoclosure @escaping () -> ContentViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel())
        print("ContentView init")
    }

    var body: some View {
        Text(viewModel.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}
