/* TabViewContainer.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 14/11/23. */

import SwiftUI

struct TabViewContainer: View {
    var body: some View {
        TabView {
            ComponentsView()
                .tabItem {
                    Label("Components", systemImage: "curlybraces.square")
                }
            ComponentsView()
                .tabItem {
                    Label("Configuration", systemImage: "gear")
                }
        }
    }
}

#Preview {
    TabViewContainer()
}
