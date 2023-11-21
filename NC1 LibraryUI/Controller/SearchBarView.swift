/* SearchBarView.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 17/11/23. */

import SwiftUI

struct SearchBarView: View {
    
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            TextField("Search Components", text: $text) { isEditing in // Si agregamos un closure inmediatamente después de un TextField, estamos usando implícitamente el modificador "onEditingChanged"
                self.isEditing = isEditing
            } onCommit: {
                // Lógica para cuando se ha terminado de editar y se presiona ENTER.
            }
            .accessibilityHint("Search a component from the lists: controls, layouts and miscellaneos.")
            .padding(.leading, 30) // Espacio para el símbolo
            .padding(7) // Para evitar que la altura del cuadro de búsqueda sea muy pequeño.
            .background(Color(.systemGray5))
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay( // Agregamos el símbolo dentro del cuadro de búsqueda
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading, 8) // Ajusta la posición del símbolo
                        .accessibilityHidden(true)
                    Spacer()
                    if !text.isEmpty { // Si el usuario ha escrito al menos una letra, aparece un botón para eliminar el texto.
                        Button(action: {
                            text = ""
                        }) {
                            Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 7)
                                .accessibilityLabel("Erase search bar")
                                .accessibilityHint("Delete current text from the search bar")
                        }
                    }
                }
            )
            .padding(.horizontal) // Ajusta todo el cuadro de búsqueda a la misma dimensión de los elementos de la lista.
            
            
            
            // Botón de cancelar que se encuentra en el mismo HStack del cuadro de búsqueda.
            if isEditing {
                Button(action: {
                    // Resetear el texto y estado de edición
                    text = ""
                    isEditing = false
                    // Cerrar el teclado
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }) {
                    Text("Cancel")
                        .accessibilityLabel("Cancel search")
                        .accessibilityHint("Stop searching for components")
                }
                .padding(.trailing, 20)
            }
        }
    }
}

#Preview {
    SearchBarView(text: Binding.constant(""))
}
