/* ListItemView.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 14/11/23. */

import SwiftUI

struct ListItemView: View {
    
    let sfsymbol: String
    let component: String
    let color: Color
    
    var body: some View {
        
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .frame(width: 30, height: 30)
                    .shadow(radius: 3)
                Image(systemName: sfsymbol)
                    .resizable()
                    .frame(width: 18, height: 18)
                    .foregroundColor(.white)
                    .background(color)
            }
            Text(component)
                .padding(.leading, 7)
            Spacer()
        }
        
    }
}

#Preview {
    ListItemView(sfsymbol: "globe", component: "Buttons", color: .purple)
}
