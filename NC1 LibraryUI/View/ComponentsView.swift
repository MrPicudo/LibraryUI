/* ContentView.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 14/11/23. */

import SwiftUI

struct ComponentsView: View {
    
    @State var searchText: String = ""
    var components = ComponentsData()
    
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea(.all)
            VStack(spacing:0) {
                // Iniciamos el Navigation Stack
                NavigationStack {
                    VStack(spacing: 0) {
                        // Barra de título
                        TitleBarView()
                            .frame(height: 80)
                        
                        // Agregamos un contenedor para el cuadro de búsqueda
                        ZStack {
                            Color(.systemGray6)
                            TextField("Search Components", text: $searchText)
                                .padding(7)
                                .background(Color(.systemGray5))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                                .padding(.horizontal)
                        }
                        .frame(height: 38)
                        .padding(.top, -50)
                        
                        // Área de contenido desplazable
                        List {
                            Group {
                                // Contenido de la primera sección
                                Section(header: Text("CONTROLS").font(.headline)) {
                                    ForEach (components.controlsData) { component in
                                        NavigationLink(destination: ButtonsView()) {
                                            ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                        }
                                    }
                                }
                                // Contenido de la segunda sección
                                Section(header: Text("LAYOUTS").font(.headline)) {
                                    ForEach (components.layoutsData) { component in
                                        NavigationLink(destination: ButtonsView()) {
                                            ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                        }
                                    }
                                }
                                // Contenido de la tercera sección
                                Section(header: Text("MISCELLANEOUS").font(.headline)) {
                                    ForEach (components.miscellaneousData) { component in
                                        NavigationLink(destination: ButtonsView()) {
                                            ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                        }
                                    }
                                }
                            }
                            
                        }
                                            
                    }
                }
            }
        }
    }
}

/// Se encarga de mostrar un texto de título centrado perfectamente, en conjunto con un botón que se mantiene alineado a la derecha.
struct TitleBarView: View {
    var body: some View {
        ZStack {
            Color(red: 242/255, green: 242/255, blue: 247/255)
                .ignoresSafeArea(.all)
            GeometryReader { geometry in
                HStack {
                    ZStack(alignment: .trailing) {
                        Text("Controls")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: geometry.size.width, alignment: .center)
                            .padding(.top, -10)
                        Button(action: {
                            // Acción del botón
                        }) {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.teal)
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
    ComponentsView()
}
