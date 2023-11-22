//
//  MainView.swift
//  Health
//
//  Created by Andrea Romano on 21/11/2023.
//

import SwiftUI

struct MainView: View {
    
    @AppStorage("isWelcomeScreenOver") var isWelcomeScreenOver = false
    @State var checkWelcomeScreen: Bool = false
    
    var body: some View {
        VStack {
            if checkWelcomeScreen {
                HealthAppView()
            } else {
                LoginView(name: "", surname: "")
            }
        }
        .onAppear {
            checkWelcomeScreen = isWelcomeScreenOver
        }
    }
}

#Preview {
    MainView()
}
