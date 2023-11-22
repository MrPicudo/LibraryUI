/* ButtonsView.swift --> NC1 LibraryUI. Created by José Miguel Torres Chávez Nava on 14/11/23. */

import SwiftUI

struct StaticViewInScroll: View {
    
    let tabBarHeight: CGFloat = 49
    
    var body: some View {
        ZStack(alignment: .bottom) { // Cambia a .bottom para fijar en la parte inferior
            ScrollView {
                // Contenido del ScrollView
                ForEach(0..<50) { index in
                    Text("Ítem \(index)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
            }
            .padding(.bottom, tabBarHeight)
            
                VStack {
                    Spacer()
                    // Vista que se mantiene fija
                    Text("Vista Fija")
                        .frame(height: 50)
                                            .frame(maxWidth: .infinity)
                                            .background(Color.purple)
                }
            }
    }
}

#Preview {
    StaticViewInScroll()
}
