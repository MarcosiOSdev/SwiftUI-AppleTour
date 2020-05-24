//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Marcos Felipe Souza on 23/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let userData = UserData()
    var body: some View {
        
        LandmarkList {
            WatchLandmarkDetail(landmark: $0)
        }
        .environmentObject(userData)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
