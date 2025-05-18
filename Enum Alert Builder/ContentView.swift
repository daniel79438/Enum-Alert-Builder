//
//  ContentView.swift
//  Enum Alert Builder
//
//  Created by Daniel Harris on 18/05/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var alertType: AlertType? = nil
    
    var body: some View {
        VStack {
            Button("Title Only") {
                alertType = AlertType.ok(title: "This is an alert")
                
            }
            Button("Title & Message") {
                alertType = AlertType.ok(title: "Title here", message: "Message here")
                
            }
            Button("Single Button (Title & Message") {
                alertType = AlertType.singleButton(title: "Congratulations", message: "Process Completed", dismissButton: Alert.Button.default(Text("Ok")) {
                    // Some action here
                })
            }
                Button("Two Buttons no message") {
                    alertType = .twoButtons(title: "Delete Profile?",
                                            primaryButton: .destructive(Text("Ok")){
                        // Delete the profile action
                    },
                                            secondaryButton: .cancel())
                
            }
        }
        .alert(item: $alertType) { $0.alert }
        .buttonStyle(GreenButtonStyle())
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
