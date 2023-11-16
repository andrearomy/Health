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
            Section {
                List {
                    
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
