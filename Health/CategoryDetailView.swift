//
//  HealthCategoryRow.swift
//  Health
//
//  Created by Andrea Romano on 13/11/23.
//

import SwiftUI

struct CategoryDetailView: View {
    var category: Category
    var categoryName: String
    var imageName: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.title)
                .symbolRenderingMode(.multicolor)
            Text(categoryName)
                .font(.headline)
        }
    }
}

#Preview {
    CategoryDetailView(category: CategoryList.category.first!, categoryName: "Ok", imageName: "heart.fill")
}
