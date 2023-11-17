/* ContentView.swift --> NC1 LibraryUI. Created by José Miguel Torres Chávez Nava on 14/11/23. */

import SwiftUI

struct ComponentsView: View {
    // Objeto que nos da acceso a los datos del modelo.
    var components = ComponentsData()
    // Objetos necesarios para realizar la búsqueda.
    @State var searchText: String = ""
    var filteredControls: [ComponentsModel] {
        components.controlsData.filter {
            $0.name.localizedCaseInsensitiveContains(searchText) || searchText.isEmpty
        }
    }
    var filteredLayouts: [ComponentsModel] {
        components.layoutsData.filter {
            $0.name.localizedCaseInsensitiveContains(searchText) || searchText.isEmpty
        }
    }
    var filteredMiscellaneous: [ComponentsModel] {
        components.miscellaneousData.filter {
            $0.name.localizedCaseInsensitiveContains(searchText) || searchText.isEmpty
        }
    }
    
    var body: some View {
        // Iniciamos el Navigation Stack
        NavigationStack {
            VStack(spacing: 0) {
                TitleBarView() // Vista externa
                    .frame(height: 50)
                // Agregamos un contenedor para el cuadro de búsqueda
                ZStack {
                    Color(.systemGray6)
                    SearchBarView(text: $searchText)
                }
                .frame(height: 38)
                .padding(.top, -10)
                // Área de contenido desplazable
                List {
                    if !searchText.isEmpty {
                        // Sección de CONTROLS
                        if !filteredControls.isEmpty {
                            Section(header: Text("CONTROLS").font(.subheadline)) {
                                ForEach(filteredControls) { component in
                                    NavigationLink(destination: ButtonsView()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                        } else {
                            Section(header: Text("CONTROLS").font(.subheadline)) {
                                Text("No results found")
                            }
                        }
                        // Sección de LAYOUTS
                        if !filteredLayouts.isEmpty {
                            Section(header: Text("LAYOUTS").font(.subheadline)) {
                                ForEach(filteredLayouts) { component in
                                    NavigationLink(destination: ButtonsView()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                        } else {
                            Section(header: Text("LAYOUTS").font(.subheadline)) {
                                Text("No results found")
                            }
                        }
                        // Sección de MISCELLANEOUS
                        if !filteredMiscellaneous.isEmpty {
                            Section(header: Text("MISCELLANEOUS").font(.subheadline)) {
                                ForEach(filteredMiscellaneous) { component in
                                    NavigationLink(destination: ButtonsView()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                        } else {
                            Section(header: Text("MISCELLANEOUS").font(.subheadline)) {
                                Text("No results found")
                            }
                        }
                    } else {
                        Group {
                            // Contenido de la primera sección
                            Section(header: Text("CONTROLS").font(.subheadline)) {
                                ForEach (components.controlsData) { component in
                                    NavigationLink(destination: ButtonsView()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                            // Contenido de la segunda sección
                            Section(header: Text("LAYOUTS").font(.subheadline)) {
                                ForEach (components.layoutsData) { component in
                                    NavigationLink(destination: ButtonsView()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                            // Contenido de la tercera sección
                            Section(header: Text("MISCELLANEOUS").font(.subheadline)) {
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

#Preview {
    ComponentsView()
}
