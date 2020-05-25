//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Marcos Felipe Souza on 23/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedLandmark: Landmark?
    
    var body: some View {
        NavigationView {
            NavigationMaster(selectedLandmark: $selectedLandmark)
                
            if selectedLandmark != nil {
                NavigationDetail(landmark: selectedLandmark!)
            }
            
        }.frame(maxWidth: .infinity,
        maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserData())
    }
}
