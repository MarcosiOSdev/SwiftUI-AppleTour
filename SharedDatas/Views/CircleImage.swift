//
//  CircleImage.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 12/06/19.
//  Copyright © 2019 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    
    var image: Image
    var shadowRadius: CGFloat = 10

    var body: some View {
        
        image
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: shadowRadius)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[0].image)
    }
}
#endif
