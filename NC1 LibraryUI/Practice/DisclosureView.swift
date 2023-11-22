/* DisclosureGroup.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 22/11/23. */

import SwiftUI

struct DisclosureView: View {
    @State private var isExpanded = false

        var body: some View {
            VStack {
                DisclosureGroup("Mostrar imagen", isExpanded: $isExpanded) {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
                .padding()
            }
        }
}

#Preview {
    DisclosureView()
}
