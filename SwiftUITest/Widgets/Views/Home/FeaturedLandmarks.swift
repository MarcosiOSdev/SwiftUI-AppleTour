//
//  FeaturedLandmarks.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 23/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct FeaturedLandmarks: View {
    
    var landmarks: [Landmark]
    
    var body: some View {
        landmarks[0].image.resizable()
    }
}

struct FeaturedLandmarks_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedLandmarks(landmarks: landmarkData)
    }
}
