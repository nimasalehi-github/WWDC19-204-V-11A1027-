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
        NavigationView {
            List(rooms) { room in
                ExtractedView(room: room)
            }
            .navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}

struct ExtractedView: View {
    let room: Room

    var body: some View {
        return NavigationLink(destination: SwiftUIView_RoomDetail(room: room)) {
            
            Image(room.thumbnailName)
                .cornerRadius(15.0)
            
            VStack {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
