//
//  TestApptifyApp.swift
//  TestApptify
//
//  Created by Polina Smirnova on 04.07.2023.
//

import SwiftUI

@main
struct TestApptifyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
