//
//  Filter.swift
//  MacLandmarks
//
//  Created by Marcos Felipe Souza on 24/05/20.
//  Copyright © 2020 Marcos Felipe Souza. All rights reserved.
//

import SwiftUI

struct Filter: View {
    
    @EnvironmentObject private var userData: UserData
    @Binding var filter: FilterType
    
    var body: some View {
        HStack {
            
            Picker(selection: $filter, label: EmptyView()) {
                ForEach(FilterType.allCases) { choice in
                    Text(choice.name).tag(choice)
                }
            }
            
            Spacer()
            
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites only")
            }
        }
    }
}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter(filter: .constant(.all))
            .environmentObject(UserData())
    }
}

struct FilterType: CaseIterable, Hashable, Identifiable {
    var name: String
    var category: Landmark.Category?
    
    init(_ category: Landmark.Category) {
        self.name = category.rawValue
        self.category = category
    }
    
    init(name: String) {
        self.name = name
        self.category = nil
    }
    
    static var all = FilterType(name: "All")
    
    //conform to protocol CaseIterable
    static var allCases: [FilterType] {
        return [.all] + Landmark.Category.allCases.map(FilterType.init)
    }
    
    //conform to Identifier
    var id: FilterType {
        return self
    }
}
