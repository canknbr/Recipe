//
//  SettingsView.swift
//  Recipe
//
//  Created by Can Kanbur on 31.05.2023.
//

import SwiftUI

struct SettingsView: View {
    @State var enableNotificaion = false
    @State var backgroundRefresh = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .black.opacity(0.6), radius: 8, x: 0, y: 8)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            Form {
                Section {
                    Toggle(isOn: $enableNotificaion) {
                        Text("Enable Notifications")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }
                } header: {
                    Text("General Settings")
                }

                Section {
                    if enableNotificaion {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Recipes")
                        }
                        HStack {
                            Text("Compatabilty").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone")
                        }
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Can Kanbur")
                        }
                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }

                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                } header: {
                    Text("Application")
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
