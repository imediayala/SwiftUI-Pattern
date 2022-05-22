//
//  ContentView.swift
//  SwiftUI-Pattern
//
//  Created by Daniel Ayala on 22/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var viewModel = ContentViewModel()

    var body: some View {
        VStack {
            Text(viewModel.viewMessage ?? "")
                .onAppear {
//                    viewModel.doSomeViewModelTask()
                }
            
            Button("Tap Me") {
                viewModel.viewMessage = "Hello World"
                viewModel.isSheetActive = true
            }
        }
        .sheet(isPresented: $viewModel.isSheetActive){
            Text("Hello Sheet")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
