//
//  SharingView2.swift
//  Health
//
//  Created by Andrea Romano on 15/11/23.
//

import SwiftUI

struct SharingView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "person.2.fill").accessibilityHidden(true)
                                .font(.custom("", size: 55))
                                .padding(.top)
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(
                                    .linearGradient(colors: [.purple, .cyan], startPoint: .leading, endPoint: .trailing),
                                    .linearGradient(colors: [.purple, .indigo], startPoint: .leading, endPoint: .trailing))
                            
                            Spacer()
                        }
                        Text("Health Sharing")
                            .font(.title)
                            .bold()
                            .padding(.vertical)
                            .padding(.top, -20)
                        
                        VStack(alignment: .leading) {
                            HStack(spacing: 17.0) {
                                Image(systemName: "checklist").accessibilityHidden(true)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .bold()
                                    .foregroundStyle(.blue)
                                    .frame(width: 30)
                                
                                VStack(alignment: .leading) {
                                    Text("You're in Control")
                                        .font(.callout)
                                        .fontWeight(.medium)
                                    
                                    Text("Keep friends and family up to date on how you're doing by securely sharing your Health data.")
                                        .font(.subheadline)
                                        .foregroundStyle(.gray.opacity(0.9))
                                }
                            }.padding(.horizontal)
                                .padding(.bottom, 25)
                            
                            VStack(alignment: .leading) {
                                HStack(spacing: 17.0) {
                                    Image(systemName: "bell.badge.fill").accessibilityHidden(true)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .bold()
                                        .foregroundStyle(.blue)
                                        .frame(width: 30)
                                    
                                    
                                    VStack(alignment: .leading) {
                                        Text("Dashboard and Notifications")
                                            .font(.callout)
                                            .fontWeight(.medium)
                                        
                                        Text("Data you share will appear in their Health app. They can also get notifications if there's an update.")
                                            .font(.subheadline)
                                            .foregroundStyle(.gray.opacity(0.9))
                                    }
                                }.padding(.horizontal)
                                    .padding(.bottom, 25)
                            }
                            
                            HStack(spacing: 15.0) {
                                VStack {
                                    Image(systemName: "lock.fill").accessibilityHidden(true)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .bold()
                                        .foregroundStyle(.blue)
                                        .frame(width: 29)
                                    
                                    
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("Private and Secure")
                                        .font(.callout)
                                        .fontWeight(.medium)
                                    
                                    
                                    Text("Only a summary of each topic is shared, not the details. The information is encrypted and you can stop sharing at any time.")
                                        .font(.subheadline)
                                        .foregroundStyle(.gray.opacity(0.9))
                                        .multilineTextAlignment(.leading)
                                    
                                }
                                
                            }
                            .padding(.horizontal, 18.0)
                            .padding(.bottom)
                        }
                        
                        VStack {
                            Button {
                                
                            } label: {
                                Text("Share with Someone")
                                    .foregroundColor(.white)
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: 290)
                                    .background(Color.blue)
                                    .cornerRadius(15)
                            }
                            Button {
                                
                            } label: {
                                Text("Ask Someone to Share")
                                    .foregroundColor(.blue)
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: 290)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(15)
                                    .padding(.bottom)
                            }
                        }
                    }
                }
                Section {
                    NavigationLink(destination: Text(""), label: {
                        Text("Apps and Services")
                    })
                    NavigationLink(destination: Text(""), label: {
                        Text("Research Studies")
                    })
                }
            footer: {
                VStack{
                    Text("Sharing With You").accessibilityAddTraits(.isHeader)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(.label))
                    
                    Text("No one is sharing data with you.").padding(.leading, 45).padding(.top, 1)
                }.padding(EdgeInsets(top: 20, leading: -48, bottom: 50, trailing: 0))
            }.headerProminence(.increased)
            }
            .navigationTitle("Sharing")
        }
    }
    
}

#Preview {
    SharingView()
}
