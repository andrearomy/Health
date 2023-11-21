//
//  HealthApp.swift
//  Health
//
//  Created by Andrea Romano on 13/11/23.
//

import SwiftUI
import SwiftData

extension UserDefaults{
    var loginScreenShown: Bool{
        get {
            return (UserDefaults.standard.value(forKey: "loginScreenShown") as? Bool) ?? false
        }
        set{
            UserDefaults.standard.setValue(newValue, forKey: "loginScreenShown")
        }
    }
}

//@main
//struct HealthApp: App {
//    var body: some Scene {
//        WindowGroup {
//            HealthAppView()
//        }.modelContainer(for: User.self)
//    }
//}

@main
struct HealthApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }.modelContainer(for: User.self)
    }
}
