//
//  ProfileHost.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 23/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    
    @State var draftProfile = Profile.default
     
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }.padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
