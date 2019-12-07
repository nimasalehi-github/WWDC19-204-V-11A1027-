//
//  ContentView.swift
//  WWDC19 204 V(11A1027)
//
//  Created by nimasalehi on 12/6/19.
//  Copyright © 2019 Par-Negar Ryan-Mehr. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "photo")
//Xcode has embedded these views into a Vstack to get the layout that I want.Now a Vstack or vertical stack is one of the common layout elements in SwiftUI. It lets you stack views vertically.
            VStack(alignment: .leading) {
                Text("Hello World")
                Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
