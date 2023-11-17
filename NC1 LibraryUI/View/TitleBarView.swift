/* TitleBarView.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 17/11/23. */

import SwiftUI

/// Se encarga de mostrar un texto de título centrado perfectamente, en conjunto con un botón que se mantiene alineado a la derecha.
struct TitleBarView: View {
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea(.all)
            GeometryReader { geometry in
                HStack {
                    ZStack(alignment: .trailing) {
                        Text("Controls")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.indigo)
                            .frame(width: geometry.size.width, alignment: .center)
                            .padding(.top, -10)
                        Button(action: {
                            // Acción del botón
                        }) {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .fontWeight(.light)
                                .foregroundColor(.indigo)
                        }
                        .padding()
                    }
                }
            }
            .padding(.top, -15)
        }
    }
}

#Preview {
    TitleBarView()
}
