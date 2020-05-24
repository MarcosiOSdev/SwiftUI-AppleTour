//
//  LandmarkList.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 10/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct LandmarkList<DetailView: View>: View {
    
    @EnvironmentObject var userData: UserData
    let detailViewProducer: (Landmark) -> DetailView
    var body: some View {
        List {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites Only")
            }
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: self.detailViewProducer(landmark).environmentObject(self.userData)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            
        }.navigationBarTitle(Text("Landmarks"))
    }
}


#if os(watchOS)
typealias PreviewDetailView = WatchLandmarkDetail
#else
typealias PreviewDetailView = LandmarkDetail
#endif

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
        
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList {
                PreviewDetailView(landmark: $0)
            }
                .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
