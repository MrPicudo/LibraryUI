/* ContentView.swift --> NC1 LibraryUI. Created by José Miguel Torres Chávez Nava on 14/11/23. */

import SwiftUI

struct ComponentsView: View {
    // Objeto que nos da acceso a los datos del modelo.
    var components = ComponentsData()
    // Cadena que almacena la búsqueda que realiza el usuario
    @State var searchText: String = ""
    
    /* Usamos computed properties para obtener los arreglos resultantes de las búsquedas. */
    var filteredControls: [ComponentsModel] {
        // Accedemos al arreglo "controlsData" del objeto "components", para usar la función "filter" que tienen todos los arreglos.
        components.controlsData.filter {
            // $0 representa a cada elemento del arreglo "controlsData" que sera revisado por la función filter, para ver si la cadena contenida en "searchText" coincide con el atributo "name" de cualquiera de los objetos del arreglo. En caso de que "searchText" esté vacío, el closure retorna "true" y eso significa que filter debe de incluir a todos los elementos de controlsData. Aquí lo que hacemos es decir en qué ocasiones debemos agregar un objeto al arreglo "controlsData"
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
                    /* Primero definimos qué pasa en la vista si el cuadro de búsqueda NO está vacío. */
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
                                Text("There are no Controls that match ") +
                                Text("\(searchText)")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
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
                                Text("There are no Layouts Views that match ") +
                                Text("\(searchText)")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
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
                                Text("There are no Miscellaneous Views that match ") +
                                Text("\(searchText)")
                                    .fontWeight(.bold)
                                    .foregroundStyle(.blue)
                            }
                        }
                    } else { /* Ahora definimos qué pasa si el cuadro de búsqueda SI está vacío. */
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
