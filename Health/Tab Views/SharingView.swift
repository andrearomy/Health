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
                            Image(systemName: "person.2.fill")
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
                        
                        VStack(alignment: .leading) {
                            HStack(spacing: 17.0) {
                                    Image(systemName: "checklist")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .bold()
                                        .foregroundStyle(.blue)
                                        .frame(width: 30)
                                        
                                VStack(alignment: .leading) {
                                    Text("You're in Control")
                                        .font(.headline)
                                    
                                    Text("Keep friends and family up to date on how you're doing by securely sharing your Health data.")
                                        .font(.callout)
                                        .foregroundStyle(.gray.opacity(0.9))
                                }
                            }.padding(.horizontal)
                                .padding(.bottom, 25)
                            
                            VStack(alignment: .leading) {
                                HStack(spacing: 17.0) {
                                    Image(systemName: "bell.badge.fill")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .bold()
                                        .foregroundStyle(.blue)
                                        .frame(width: 30)
                                    
                                    
                                    VStack(alignment: .leading) {
                                        Text("Dashboard and Notifications")
                                            .font(.headline)
                                        
                                        Text("Data you share will appear in their Health app. They can also get notifications if there's an update.")
                                            .font(.callout)
                                            .foregroundStyle(.gray.opacity(0.9))
                                    }
                                }.padding(.horizontal)
                                    .padding(.bottom, 25)
                            }
                            
                            HStack(spacing: 15.0) {
                                VStack {
                                    Image(systemName: "lock.fill")
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .bold()
                                        .foregroundStyle(.blue)
                                    
                                    
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("Private and Secure")
                                        .font(.headline)
                                    
                                    Text("Only a summary of each topic is shared, not the details. The information is encrypted and you can stop sharing at any time.")
                                        .font(.callout)
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
                    Text("Apps and Services")
                    Text("Research Studies")
                }
                Section {
                    Text("Sharing With You")
                }
            }
            .navigationTitle("Sharing")
        }
    }
    
}

#Preview {
    SharingView()
}
