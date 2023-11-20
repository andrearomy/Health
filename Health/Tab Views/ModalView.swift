//
//  ModalView.swift
//  Health
//
//  Created by Andrea Romano on 15/11/23.
//

import SwiftUI
struct ModalView: View {
    
    var modalList: [ModalViewListStruct] = ModalList.modalList
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            List {
                Section{
                    HStack {
                        Spacer()
                        VStack {
                            Circle().shadow(radius: 1.5).foregroundStyle(.yellow)
                                .frame(width: 110, height: 100)
                                .overlay {
                                    Image("Profile")
                                        .resizable()
                                        .frame(width: 115, height: 115)
                                        .font(.system(size: 80))
                                        .padding(.bottom, 2)
                                        .padding(.top, 8)
                                        .padding(.trailing, 3)
                                }.accessibilityHidden(true)
                            
                            Text("Andrea Romano")
                                .font(.title)
                                .bold()
                                .padding(.top)
                                .padding(.bottom, -10)
                        }
                        Spacer()
                    }
                    .padding(.vertical, 35)
                }.listRowBackground(Color("Gray background"))
                    .padding(.top, -30)
                    .padding(.bottom, -30)
                
                Section {
                    ForEach(modalList) { modalListItem in
                        NavigationLink(destination: Text(""), label: {
                            Text(modalListItem.name)
                        })
                    }
                }
                
                Section(header: Text("Features").padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0)).font(.title2).bold()) {
                    NavigationLink(destination: Text(""), label: {
                        Text("Health Checklist")
                    })
                    NavigationLink(destination: Text(""), label: {
                        Text("Notifications")
                    })
                }.headerProminence(.increased)
                
                
                Section(header: Text("Privacy").padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0)).font(.title2).bold()) {
                    NavigationLink(destination: Text(""), label: {
                        Text("Apps and Services")
                    })
                    NavigationLink(destination: Text(""), label: {
                        Text("Research Studies")
                    })
                    NavigationLink(destination: Text(""), label: {
                        Text("Devices")
                    })
                }.headerProminence(.increased)
                
                Section {
                    Button {
                        print("Export All Health Data")
                    } label: {
                        Text("Export All Health Data")
                    }
                }
            }
            .listStyle(.automatic)
            .toolbar {
                ToolbarItem {
                    Button {
                        dismiss()
                    } label: {
                        Text("Done")
                    }
                }
            }
        }
    }
}


#Preview {
    ModalView()
}
