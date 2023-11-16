//
//  NutritionView.swift
//  Health
//
//  Created by Andrea Romano on 13/11/23.
//

import SwiftUI

struct NutritionView: View {
    var category: Category
    var elements: [NutritionElements] = ElementsList.element
    
    var body: some View {
        VStack {
            NavigationStack {
                List{
                    Section {
                        ForEach(elements) { element in
                            NavigationLink(destination: Text(""), label: {
                                Text(element.name)
                                    .font(.headline)
                            })
                        }
                        
                    } header: {
                        Text("No Data Available")
                            .padding(EdgeInsets(top: 0, leading: -18, bottom: 0, trailing: 0))
                    }.headerProminence(.increased)
                }.background(LinearGradient(gradient: Gradient(colors: [Color("Green nutrition"), Color("Gray background"), Color("Gray background"), Color("Gray background"), Color("Gray background"), Color("Gray background"), Color("Gray background")]), startPoint: .top, endPoint: .bottom))
                    .scrollContentBackground(.hidden)
                
                    .navigationTitle("Nutrition")
                    .environment(\.defaultMinListRowHeight, 65)
            }
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView(category: CategoryList.category.first!)
    }
}

