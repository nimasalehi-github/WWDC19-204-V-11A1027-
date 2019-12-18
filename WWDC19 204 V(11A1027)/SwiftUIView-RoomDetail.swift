//
//  SwiftUIView-RoomDetail.swift
//  WWDC19 204 V(11A1027)
//
//  Created by nimasalehi on 12/18/19.
//  Copyright © 2019 Par-Negar Ryan-Mehr. All rights reserved.
//

import SwiftUI

// Xcode has automatically given me a new ViewStruct and also the preview code to create it.

struct SwiftUIView_RoomDetail: View {
    
//     Now since I want this detail view to show more information about my room, I'll add a property for the room.

    var room : Room
    
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
        
//We use an image and we'll show the room's image name.
//Okay, now we're showing our image but it's a little bit too large for our view.
//By default, SwiftUI shows all images at the size of their contents to prevent visual artifacts from scaling the image up or down.
        
        Image(room.imageName)
//            But for photos like this one, we want to be able to resize them down.
//And we can use an image-specific modifier called Resizable to do that.
//So I'll just drag this onto our view and all right, now it's resizing to fill the size that we have.
            .resizable()
            
//             But really we want it to maintain this original aspect ratio.
//             And we can do that with another modifier, this time aspect ratio.
//             And the aspect ratio modifier lets me choose between .
//            fill, which expands the image to take up its entire frame, or .
//            fit, which makes sure the image fits within the frame.
//             And previews let me really easily see and understand the difference between these different modes.
//             For now, let's use Fit so we can see the full image.
        
            .aspectRatio(contentMode: .fill)
            .navigationBarTitle(Text(room.name))
    }
}

struct SwiftUIView_RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        
//         And just like I did before, I'll update my preview code to pass in one of our rooms from their test data.

        SwiftUIView_RoomDetail(room:testData[0])
    }
}
