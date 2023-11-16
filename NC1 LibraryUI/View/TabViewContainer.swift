/* TabViewContainer.swift --> NC1 LibraryUI. Created by José Miguel Torres Chávez Nava on 14/11/23. */

import SwiftUI

struct TabViewContainer: View {
    var body: some View {
        ZStack {
            TabView {
                ComponentsView()
                    .tabItem {
                        Label("Components", systemImage: "curlybraces.square")
                    }
                ConfigurationView()
                    .tabItem {
                        Label("Configuration", systemImage: "gear")
                    }
            }
        }
    }
}

#Preview {
    TabViewContainer()
}
