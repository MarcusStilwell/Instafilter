//
//  ContentView.swift
//  Instafilter
//
//  Created by Marcus Stilwell on 11/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var showingActionSheet = false
    @State private var backgroundColor = Color.white

    var body: some View {
        Text("Hello, World!")
            .actionSheet(isPresented: $showingActionSheet) {
                ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                                .default(Text("Red")) {self.backgroundColor = .red},
                                .default(Text("Green")) {self.backgroundColor = .green},
                                .default(Text("Blue")) {self.backgroundColor = .blue},
                                .cancel()])
            }
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                self.showingActionSheet = true
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
