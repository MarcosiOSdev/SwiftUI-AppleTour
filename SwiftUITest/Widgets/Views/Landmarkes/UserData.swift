//
//  UserData.swift
//  SwiftUITest
//
//  Created by Marcos Felipe Souza on 10/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject, Identifiable {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
