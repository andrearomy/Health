//
//
//  SummaryView.swift
//  Health
//
//  Created by Andrea Romano on 13/11/23.
//

import SwiftUI

struct SummaryView: View {
    @State var showModal: Bool = false
    var body: some View {
        
        NavigationStack {
            List {
                Section {
                    VStack {
                        HStack {
                            Label("Sleep", systemImage: "bed.double.fill")
                                .foregroundStyle(.mint)
                            Spacer()
                            Text("18 Nov")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }.padding(.bottom)
                        
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Time In Bed")
                                    
                                    Text("... min")
                                }.padding(.trailing, 220)
                                
                            }
                        }
                    }
                } header: {
                    Text("Favourites")
                        .font(.title2)
                        .bold()
                        .padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0))
                }.headerProminence(.increased)
                Section {
                    VStack {
                        HStack {
                            Label("Sleep", systemImage: "bed.double.fill")
                                .foregroundStyle(.mint)
                            Spacer()
                            Text("18 Nov")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }.padding(.bottom)
                        VStack {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Time In Bed")
                                    
                                    Text("... min")
                                }.padding(.trailing, 220)
                                
                            }
                        }
                    }
                    
                }
            }
            .navigationTitle("Summary")
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
            .sheet(isPresented: $showModal, content: {ModalView().presentationDetents([.large])})
        }
    }
}

#Preview {
    SummaryView()
}
