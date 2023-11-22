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
                            Section(header: Text("CONTROLS").font(.subheadline).accessibilityLabel("\(filteredControls.count) \(filteredControls.count == 1 ? "result" : "results") from controls list")) {
                                ForEach(filteredControls) { component in
                                    NavigationLink(destination: ButtonsView()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                        } else {
                            Section(header: Text("CONTROLS").font(.subheadline).accessibilityLabel("No results from controls list")) {
                                Group {
                                    Text("There are no Controls that match ") +
                                    Text("\(searchText)")
                                        .fontWeight(.bold)
                                        .foregroundStyle(.blue)
                                }
                                .accessibilityElement(children: .combine) // Consideramos los elementos del Group como un único elemento de accesibilidad.
                                .accessibilityHidden(true) // Ignoramos el texto que ya mencionamos en el Heading.
                            }
                        }
                        // Sección de LAYOUTS
                        if !filteredLayouts.isEmpty {
                            Section(header: Text("LAYOUTS").font(.subheadline).accessibilityLabel("\(filteredLayouts.count) \(filteredLayouts.count == 1 ? "result" : "results") from layouts list")) {
                                ForEach(filteredLayouts) { component in
                                    NavigationLink(destination: StaticViewInScroll()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                        } else {
                            Section(header: Text("LAYOUTS").font(.subheadline).accessibilityLabel("No results from layouts list")) {
                                Group {
                                    Text("There are no Layouts Views that match ") +
                                    Text("\(searchText)")
                                        .fontWeight(.bold)
                                        .foregroundStyle(.blue)
                                }
                                .accessibilityElement(children: .combine) // Consideramos los elementos del Group como un único elemento de accesibilidad.
                                .accessibilityHidden(true) // Ignoramos el texto que ya mencionamos en el Heading.
                            }
                        }
                        // Sección de MISCELLANEOUS
                        if !filteredMiscellaneous.isEmpty {
                            Section(header: Text("MISCELLANEOUS").font(.subheadline).accessibilityLabel("\(filteredMiscellaneous.count) \(filteredMiscellaneous.count == 1 ? "result" : "results") from layouts list")) {
                                ForEach(filteredMiscellaneous) { component in
                                    NavigationLink(destination: StaticViewInScroll()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                        } else {
                            Section(header: Text("MISCELLANEOUS").font(.subheadline).accessibilityLabel("No results from miscellaneous list")) {
                                Group {
                                    Text("There are no Miscellaneous Views that match ") +
                                    Text("\(searchText)")
                                        .fontWeight(.bold)
                                        .foregroundStyle(.blue)
                                }
                                .accessibilityElement(children: .combine) // Consideramos los elementos del Group como un único elemento de accesibilidad.
                                .accessibilityHidden(true) // Ignoramos el texto que ya mencionamos en el Heading.
                            }
                        }
                    } else { /* Ahora definimos qué pasa si el cuadro de búsqueda SI está vacío. */
                        Group {
                            // Contenido de la primera sección
                            Section(header: Text("CONTROLS").font(.subheadline).accessibilityLabel("Controls list with currently \(components.controlsData.count) elements.")) {
                                ForEach (components.controlsData) { component in
                                    NavigationLink(destination: ButtonsView()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                            // Contenido de la segunda sección
                            Section(header: Text("LAYOUTS").font(.subheadline).accessibilityLabel("Layouts list with currently \(components.layoutsData.count) elements.")) {
                                ForEach (components.layoutsData) { component in
                                    NavigationLink(destination: StaticViewInScroll()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                            // Contenido de la tercera sección
                            Section(header: Text("MISCELLANEOUS").font(.subheadline).accessibilityLabel("Miscellaneous list with currently \(components.miscellaneousData.count) elements")) {
                                ForEach (components.miscellaneousData) { component in
                                    NavigationLink(destination: StaticViewInScroll()) {
                                        ListItemView(sfsymbol: component.image, component: component.name, color: component.color)
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Components")
            .navigationBarHidden(true)
            
        }
        
    }
}

#Preview {
    ComponentsView()
}
