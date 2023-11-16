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
        NavigationStack {
            VStack {
                
                Image(systemName: "person.crop.circle.fill")
                    .font(.custom("", size: 80))
                    .foregroundStyle(.blue)
                    .padding(.bottom, 2)
                
                Text("Andrea Romano")
                    .font(.title)
                    .bold()
                    .padding(.bottom, -10)
                
                List{
                    ForEach(modalList) { modalList in
                        
                        
                        NavigationLink(destination: Text(""), label: {
                            Text(modalList.name)
                        })
                        
                    }
                    
                    Section {
                        NavigationLink(destination: Text(""), label: {
                            Text("Health Checklist")
                        })
                        NavigationLink(destination: Text(""), label: {
                            Text("Notifications")
                        })
                    } header: {
                        Text("Features")
                            .font(.title2)
                            .bold()
                            .padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0))
                        
                        
                    }.headerProminence(.increased)
                    
                    Section {
                        NavigationLink(destination: Text(""), label: {
                            Text("Apps and Services")
                        })
                        NavigationLink(destination: Text(""), label: {
                            Text("Research Studies")
                        })
                        NavigationLink(destination: Text(""), label: {
                            Text("Devices")
                        })
                    } header: {
                        Text("Privacy")
                            .font(.title2)
                            .bold()
                            .padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0))
                        
                        
                    }.headerProminence(.increased)
                    
                    Section {
                        Button {
                            print("ciao")
                        } label: {
                            Text("Export All Health Data")
                        }
                    }
                }
                Spacer()
                
                    .navigationTitle("")
                    .toolbar(content: {
                        ToolbarItem {
                            Button {
                                dismiss()
                            } label: {
                                Text("Done")
                            }
                        }
                    })
            }
            
            
            .background(Color("Gray background"))
        }.ignoresSafeArea()
        
    }
}

#Preview {
    ModalView()
}
