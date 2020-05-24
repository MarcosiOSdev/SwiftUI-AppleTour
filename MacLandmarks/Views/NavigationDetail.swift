//
//  NavigationDetail.swift
//  MacLandmarks
//
//  Created by Marcos Felipe Souza on 24/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct NavigationDetail: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                HStack(alignment: .center, spacing: 24) {
                    CircleImage(image: landmark.image.resizable())
                        .frame(width: 160, height: 160)
                    
                    VStack(alignment: .leading) {
                        Text(landmark.name).font(.title)
                        Text(landmark.park)
                        Text(landmark.state)
                    }
                    .font(.caption)
                }
            }
            .padding()
            .frame(maxWidth: 700)
        }
    }
}

struct NavigationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetail(landmark: landmarkData[0])
    }
}
