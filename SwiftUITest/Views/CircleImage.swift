//
//  CircleImage.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 12/06/19.
//  Copyright © 2019 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image ( "photo_profile" )            
            .scaledToFill()
            .clipShape( Circle() )
            .overlay( Circle() .stroke( Color.white, lineWidth: 4 ) )
            .shadow( radius: 10 )
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
