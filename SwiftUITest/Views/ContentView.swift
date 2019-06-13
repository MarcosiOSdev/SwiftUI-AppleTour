//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 12/06/19.
//  Copyright © 2019 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct ContentView : View
{
    
    var title: String { return "Marcos Felipe" }
    var subtitle: String { "Brazilian" }
    var occupation: String { "iOS Developer" }
    
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .bold()
                HStack(alignment: .top) {
                    Text(subtitle)
                        .italic()
                        .font(.subheadline)
                    
                    Spacer()
                    Text(occupation)
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
#endif
