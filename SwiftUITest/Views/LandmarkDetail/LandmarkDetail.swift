//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 12/06/19.
//  Copyright © 2019 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    
    var landmark: Landmark
    
//    var title: String { return "Marcos Felipe" }
//    var subtitle: String { "Brazilian" }
//    var occupation: String { "iOS Developer" }
    
    var body: some View {
        VStack {
            
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .italic()
                        .font(.subheadline)
                    
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct LandmarkDetail_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
