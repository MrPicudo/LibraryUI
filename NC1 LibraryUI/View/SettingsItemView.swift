/* SettingsItemView.swift --> NC1 LibraryUI. Created by Miguel Torres on 16/11/23. */

import SwiftUI

struct SettingsItemView: View {
    
    let sfsymbol: String
    let component: String
    let color: Color
    
    var body: some View {
        HStack {
            Image(systemName: sfsymbol)
                .resizable()
                .frame(width: 23, height: 23)
                .foregroundColor(color)
            Text(component)
                .padding(.leading, 7)
            Spacer()
        }
    }
}

#Preview {
    SettingsItemView(sfsymbol: "globe", component: "Earth", color: Color.green)
}
