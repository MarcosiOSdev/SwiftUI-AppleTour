//
//  Test.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 10/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct Test: View {
    var body: some View {
        ZStack {
           Circle().fill(Color.green)
           Circle().fill(Color.yellow).scaleEffect(0.8)
           Circle().fill(Color.orange).scaleEffect(0.6)
           Circle().fill(Color.red).scaleEffect(0.4)
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
