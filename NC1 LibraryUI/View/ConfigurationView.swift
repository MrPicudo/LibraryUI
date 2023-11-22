/* ConfigurationView.swift --> NC1 LibraryUI. Created by José Miguel Torres Chávez Nava on 16/11/23. */

import SwiftUI

struct ConfigurationView: View {
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea(.all)
            NavigationStack {
                VStack {
                    Text("Settings")
                        .font(.title3)
                        .fontWeight(.medium)
                    List {
                        Group {
                            Section {
                                NavigationLink(destination: ButtonsView()) {
                                    SettingsItemView(sfsymbol: "eyedropper", component: "Appearance", color: Color.teal)
                                }
                            }
                            Section {
                                NavigationLink(destination: ButtonsView()) {
                                    SettingsItemView(sfsymbol: "heart", component: "Tip Jar", color: Color.teal)
                                }
                                NavigationLink(destination: ButtonsView()) {
                                    SettingsItemView(sfsymbol: "envelope.open", component: "Feedback", color: Color.teal)
                                }
                            }
                            Section {
                                SettingsItemView(sfsymbol: "star", component: "Rate con AppStore", color: Color.teal)
                                SettingsItemView(sfsymbol: "square.and.arrow.up", component: "Share App", color: Color.teal)
                            }
                            Section {
                                NavigationLink(destination: ButtonsView()) {
                                    SettingsItemView(sfsymbol: "airplane.departure", component: "Onboarding", color: Color.teal)
                                }
                                NavigationLink(destination: ButtonsView()) {
                                    SettingsItemView(sfsymbol: "list.bullet.rectangle.portrait", component: "What's New", color: Color.teal)
                                }
                                NavigationLink(destination: ButtonsView()) {
                                    SettingsItemView(sfsymbol: "doc", component: "Acknowledgements", color: Color.teal)
                                }
                                NavigationLink(destination: ButtonsView()) {
                                    SettingsItemView(sfsymbol: "info.circle", component: "About", color: Color.teal)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ConfigurationView()
}
