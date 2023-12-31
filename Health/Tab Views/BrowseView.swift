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
                                        .symbolRenderingMode(.multicolor)
                                        .frame(width: 40)
                                    
                                    Text(category.name)
                                        .font(.headline)
                                    
                                    
                                }
                            })}
                        else {
                            NavigationLink(destination: Text(""), label: {
                                HStack {
                                    Image(systemName: category.symbol)
                                        .font(.title)
                                        .foregroundStyle(category.color)
                                        .symbolRenderingMode(.multicolor)
                                        .frame(width: 40)
                                    
                                    Text(category.name)
                                        .font(.headline)
                                }
                            })
                        }
                    }
                } header: {
                    HStack {
                        Text("Health Categories")
                            .font(.title2)
                            .bold()
                            .padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0))
                        Spacer()
                    }
                }.headerProminence(.increased)
                Section {
                    HStack {
                        Image(systemName: "list.clipboard").accessibilityHidden(true)
                            .font(.title)
                            .frame(width: 35)
                            .symbolRenderingMode(.multicolor)
                        
                        NavigationLink(destination: Text(""), label: {
                            Text("Clinical Documents")
                                .font(.headline)
                        })
                    }.accessibilityElement(children: .combine)
                }
            }
            .environment(\.defaultMinListRowHeight, 65)
            .navigationTitle("Browse")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showModal.toggle()
                    } label: {Circle().foregroundStyle(.yellow)
                            .frame(width: 40, height: 40)
                            .overlay {
                                Image("Profile")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .font(.system(size: 80))
                                    .padding(.bottom, 2)
                                    .padding(.top, 5)
                            }
                            .font(.title)
                    }.accessibilityLabel("Profile")
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
