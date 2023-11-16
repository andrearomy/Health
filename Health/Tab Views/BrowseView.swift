//
//  BrowseView.swift
//  Health
//
//  Created by Andrea Romano on 13/11/23.
//

import SwiftUI

struct BrowseView: View {
    
    @State var showModal: Bool = false
    
    var categories: [Category] = CategoryList.category
    @State private var searchTerm = ""
    
    var filteredCategories: [Category] {
        guard !searchTerm.isEmpty else { return categories }
        return categories.filter { $0.name.localizedCaseInsensitiveContains(searchTerm)}
    }
    
    var body: some View {
        NavigationStack {
            List{
                Section {
                    ForEach(filteredCategories) { category in
                        if category.name == "Nutrition" {
                            NavigationLink(destination: NutritionView(category: category),
                                           label: {
                                HStack {
                                    Image(systemName: category.symbol)
                                        .font(.title)
                                        .foregroundStyle(category.color)
                                        .frame(width: 35)
                                    
                                    Text(category.name)
                                        .font(.headline)
                                    
                                    
                                }
                            })}
                        else {
                            HStack {
                                Image(systemName: category.symbol)
                                    .font(.title)
                                    .foregroundStyle(category.color)
                                    .frame(width: 35)
                                
                                Text(category.name)
                                    .font(.headline)
                                
                            }
                            }
                        }
                    } header: {
                        HStack {
                            Text("Health Categories")
                                .padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0))
                            Spacer()
                        }
                    }.headerProminence(.increased)
                }
                .environment(\.defaultMinListRowHeight, 65)
                .navigationTitle("Browse")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            showModal.toggle()
                        } label: {
                            Image(systemName: "person.crop.circle.fill")
                                .font(.title)
                            
                        }
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {ModalView().presentationDetents([.large])})
            .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search")
        }
    }
    
    
    #Preview {
        BrowseView()
    }
