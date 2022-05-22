//
//  AlbumListView.swift
//  SwiftUI-Pattern
//
//  Created by Daniel Ayala on 22/5/22.
//

import SwiftUI

struct AlbumListView: View {
    
    @ObservedObject private var viewModel = AlbumListViewModel()

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


struct AlbumListView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumListView()
    }
}
