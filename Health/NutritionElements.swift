//
//  NutritionElements.swift
//  Health
//
//  Created by Andrea Romano on 16/11/23.
//

import SwiftUI

struct NutritionElements: Identifiable {
    let id = UUID()
    let name: String
    
}

struct ElementsList {
    
    static let element = [
        NutritionElements(name: "Biotin"),
        NutritionElements(name: "Caffeine"),
        NutritionElements(name: "Calcium"),
        NutritionElements(name: "Carbohydrates"),
        NutritionElements(name: "Chloride"),
        NutritionElements(name: "Chromium"),
        NutritionElements(name: "Copper"),
        NutritionElements(name: "Dietary Cholesterol"),
        NutritionElements(name: "Dietary Energy"),
        NutritionElements(name: "Dietary Sugar"),
        NutritionElements(name: "Fibre"),
        NutritionElements(name: "Folate"),
        NutritionElements(name: "Iodine"),
        NutritionElements(name: "Iron"),
        NutritionElements(name: "Magnesium"),
        NutritionElements(name: "Manganese"),
        NutritionElements(name: "Molybdenum"),
        NutritionElements(name: "Monounsatured Fat"),
        NutritionElements(name: "Niacin"),
        NutritionElements(name: "Pantothenic Acid"),
        NutritionElements(name: "Phosphorus"),
        NutritionElements(name: "Polyunsaturated Fat"),
        NutritionElements(name: "Potassium"),
        NutritionElements(name: "Protein"),
        NutritionElements(name: "Riboflavin"),
        NutritionElements(name: "Satured Fat"),
        NutritionElements(name: "Selenium"),
        NutritionElements(name: "Sodium"),
        NutritionElements(name: "Thiamine"),
        NutritionElements(name: "Total Fat"),
        NutritionElements(name: "Vitamin A"),
        NutritionElements(name: "Vitamin B6"),
        NutritionElements(name: "Vitamin B12"),
        NutritionElements(name: "Vitamin C"),
        NutritionElements(name: "Vitamin D"),
        NutritionElements(name: "Vitamin E"),
        NutritionElements(name: "Vitamin K"),
        NutritionElements(name: "Water"),
        NutritionElements(name: "Zinc")
    ]
}

