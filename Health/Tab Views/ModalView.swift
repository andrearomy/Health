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
                        .padding()
                    
                    Text("Andrea Romano")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom)
                
                    List{
                        ForEach(modalList, id: \.id) { modalList in
                            Text(modalList.name)
                            
                        }
                        
                        Section {
                            Text("Health Checklist")
                            Text("Notifications")
                            
                        } header: {
                            Text("Features")
                                .font(.title)
                                .bold()
                                .padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0))
                            
                            
                        }.headerProminence(.increased)
                        
                        Section {
                            Text("Apps and Services")
                            Text("Research Studies")
                            Text("Devices")
                        } header: {
                            Text("Privacy")
                                .font(.title)
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
            
                .scrollIndicators(.automatic)
                .background(Color("Gray background")
                )
            }
        
    }
}

#Preview {
    ModalView()
}
