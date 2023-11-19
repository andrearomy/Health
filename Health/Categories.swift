//
//  Categories.swift
//  Health
//
//  Created by Andrea Romano on 14/11/23.
//

import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let symbol: String
    let color: Color
    
}

struct CategoryList {
    
    static let category = [
        Category(name: "Activity", symbol: "flame.fill", color: .red),
        
        Category(name: "Body Measurements", symbol: "figure", color: .purple),
        
        Category(name: "Cycle Tracking", symbol: "circle.hexagonpath", color: .orange),
        
        Category(name: "Hearing", symbol: "ear", color: .blue),
        
        Category(name: "Heart", symbol: "heart.fill", color: .red),
        
        Category(name: "Medications", symbol: "pills.fill", color: .cyan),
        
        Category(name: "Mental Wellbeing", symbol: "brain.head.profile", color: .mint),
        
        Category(name: "Mobility", symbol: "arrow.left.arrow.right", color: .yellow),
        
        Category(name: "Nutrition", symbol: "carrot", color: .green),
        
        Category(name: "Respiratory", symbol: "lungs.fill", color: .blue),
        
        Category(name: "Sleep", symbol: "bed.double.fill", color: .mint),
        
        Category(name: "Symptoms", symbol: "list.bullet.clipboard", color: .gray),
        
        Category(name: "Vitals", symbol: "waveform.path.ecg.rectangle", color: .red),
        
        Category(name: "Other Data", symbol: "cross.fill", color: .blue),
        
    ]
}
