/* ListItemView.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 14/11/23. */

import SwiftUI

struct ListItemView: View {
    
    let sfsymbol: String
    let component: String
    
    var body: some View {
        HStack {
            Image(systemName: sfsymbol)
                .resizable()
                .frame(width: 30, height: 30)
            Text(component)
            Spacer()
        }
    }
}

#Preview {
    ListItemView(sfsymbol: "globe", component: "Buttons")
}
