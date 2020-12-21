//
//  quick_noteApp.swift
//  quick-note
//
//  Created by miguel tomairo on 12/19/20.
//

import SwiftUI
import Amplify
import AmplifyPlugins

@main
struct quick_noteApp: App {
    
    public init() {
        let dataStorePlugin = AWSDataStorePlugin(modelRegistration: AmplifyModels())
        //let apiPlugin = AWSAPIPlugin(modelRegistration: AmplifyModels()) // UNCOMMENT this line once backend is deployed

        do {
            try Amplify.add(plugin: dataStorePlugin)
            //try Amplify.add(plugin: apiPlugin) // UNCOMMENT this line once backend is deployed
            try Amplify.configure()
            print("Initialized Amplify");
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
