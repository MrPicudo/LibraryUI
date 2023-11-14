/* ContentView.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 14/11/23. */

import SwiftUI

struct ComponentsView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationStack {
            // Barra de título
            TitleBarView()
                .frame(height: 100)
            // Iniciamos el Navigation Stack
            
                // Área de contenido desplazable
                List {
                    // Contenido de la ScrollView
                    ForEach(0...13, id: \.self) { index in
                        NavigationLink("Texto \(index)", destination: ButtonsView())
                    }
                }
                .searchable(text: $searchText)
            }
        }
        .padding(.horizontal)
    }
}

/// Se encarga de mostrar un texto de título centrado perfectamente, en conjunto con un botón que se mantiene alineado a la derecha.
struct TitleBarView: View {
    var body: some View {
        GeometryReader { geometry in
            HStack {
                ZStack(alignment: .trailing) {
                    Text("Controls")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(width: geometry.size.width, alignment: .center)
                    Button(action: {
                        // Acción del botón
                    }) {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    .alignmentGuide(.trailing) { d in
                        d[.trailing]
                    }
                }
            }
            .frame(height: 100)
        }
    }
}

#Preview {
    ComponentsView()
}
