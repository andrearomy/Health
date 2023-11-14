//
//  BrowseView.swift
//  Health
//
//  Created by Andrea Romano on 13/11/23.
//

import SwiftUI

struct BrowseView: View {
    
    var categories: [Category] = CategoryList.category
    
    var body: some View {
        NavigationStack {
            List(categories, id: \.id) { category in
                NavigationLink(destination: NutritionView(category: category),
                               label: {
                    HStack {
                        Image(systemName: category.symbol)
                            .font(.title)
                            .foregroundStyle(category.color)
                        
                        Text(category.name)
                            .font(.headline)
                        
                    }
                })
            }
            .environment(\.defaultMinListRowHeight, 65)
            .navigationTitle("Browse")
        }
    }
}

#Preview {
    BrowseView()
}
