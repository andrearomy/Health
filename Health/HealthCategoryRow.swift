//
//  HealthCategoryRow.swift
//  Health
//
//  Created by Andrea Romano on 13/11/23.
//

import SwiftUI

struct HealthCategoryRow: View {
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
    HealthCategoryRow(categoryName: "Ok", imageName: "heart.fill")
}
