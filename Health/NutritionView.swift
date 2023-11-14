//
//  NutritionView.swift
//  Health
//
//  Created by Andrea Romano on 13/11/23.
//

import SwiftUI

struct NutritionView: View {
    var category: Category
    
    var body: some View {
        VStack {
            Text("Nutrition Category")
                .font(.title)
                .padding()
            // Add your nutrition content here
        }
        .navigationTitle("Nutrition")
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView(category: CategoryList.category.first!)
    }
}

