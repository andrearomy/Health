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
            VStack {
                NavigationStack {
                    List {
                        Section {
                            VStack {
                                HStack {
                                    Image(systemName: "bed.double.fill").foregroundStyle(.mint)
                                    Text("Sleep")
                                        .foregroundStyle(.mint)
                                    Spacer()
                                    Text("18 Nov")
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                }.padding(.bottom)
                                VStack {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            HStack {
                                                Text("No Data").font(.headline).foregroundStyle(.gray)
                                            }
                                        }.padding(.leading, -155)
                                    }
                                }
                            }.accessibilityElement(children: .combine)
                        } header: {
                            Text("Favourites")
                                .font(.title2)
                                .bold()
                                .padding(EdgeInsets(top: 0, leading: -15, bottom: 0, trailing: 0))
                        }.headerProminence(.increased)
                        Section {
                            VStack {
                                HStack {
                                    Image(systemName: "flame.fill").foregroundStyle(.red)
                                    Text("Steps")
                                        .foregroundStyle(.red)
                                    Spacer()
                                    Text("20:44")
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                }.padding(.bottom)
                                VStack {
                                    HStack {
                                        VStack(alignment: .leading) {
                                            HStack {
                                                Text("873 steps")
                                            }
                                        }.padding(.leading, -155)
                                    }
                                }
                            }.accessibilityElement(children: .combine)
                            
                        }.listSectionSpacing(12)
                        Section {
                            Text("").background(Image("hearing").accessibilityHidden(true)).frame(width: 9000, height: 180).accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading) {
                                Text("Why Hearing Health Matters").font(.title2).bold()
                                Text("Get insight into your hearing and how to look after it.").font(.callout)
                            }
                        } header: {
                            Text("Articles")
                                .font(.title2)
                                .bold()
                                .padding(EdgeInsets(top: 25, leading: -15, bottom: -10, trailing: 0))
                        }.headerProminence(.increased)
                        Section {
                            Text("").background(Image("walking").accessibilityHidden(true)).frame(width: 100, height: 180).accessibilityHidden(true)
                            VStack(alignment: .leading) {
                                Text("Understanding Walking Steadiness").font(.title2).bold()
                                Text("What it is and why you should pay attention to it.").font(.callout)
                            }
                        }.listSectionSpacing(12)
                        Section {
                            Text("").background(Image("cardio").accessibilityHidden(true)).frame(width: 5000, height: 180).accessibilityHidden(true)
                            VStack(alignment: .leading) {
                                Text("Learn About Cardio Fitness").font(.title2).bold()
                                Text("How it's measured, why it matters and how to improve yours.").font(.callout)
                            }
                        }
                        .listSectionSpacing(12)
                        Section {
                            Text("").background(Image("respiratory").accessibilityHidden(true)).frame(width: 3000, height: 180).accessibilityHidden(true)
                            VStack(alignment: .leading) {
                                Text("Learn About Your Respiratory Rate").font(.title2).bold()
                                Text("Why you might breathe faster or slower.").font(.callout)
                            }
                        }
                        .listSectionSpacing(12)
                    }
                    .navigationTitle("Summary")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button {
                                showModal.toggle()
                            } label: {
                                Circle().foregroundStyle(.yellow)
                                    .frame(width: 40, height: 40)
                                    .overlay {
                                        Image("Profile")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .font(.system(size: 80))
                                            .padding(.bottom, 2)
                                        .padding(.top, 5) }
                            }
                        }
                    }
                    .sheet(isPresented: $showModal, content: {ModalView().presentationDetents([.large])})
                }
        }
    }
}

#Preview {
    SummaryView()
}
