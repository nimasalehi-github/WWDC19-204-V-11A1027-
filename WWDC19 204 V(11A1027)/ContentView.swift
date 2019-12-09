//
//  ContentView.swift
//  WWDC19 204 V(11A1027)
//
//  Created by nimasalehi on 12/6/19.
//  Copyright © 2019 Par-Negar Ryan-Mehr. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    var rooms: [Room] = []

    var body: some View {
        
        List(rooms) { room in
            Image(room.thumbnailName)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
