//
//  ColorPickerView.swift
//  NC1 LibraryUI
//
//  Created by Jose Miguel Torres Chavez Nava on 22/11/23.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var showModal = false

    var body: some View {
        ZStack {
            // ... tu contenido actual ...

            Button("Mostrar Código") {
                showModal.toggle()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(Color.black.opacity(showModal ? 0.5 : 0))

            // Vista Modal Personalizada
            if showModal {
                ModalView(showModal: $showModal)
                    .frame(height: UIScreen.main.bounds.height / 2)
                    .offset(y: showModal ? UIScreen.main.bounds.height / 2 : UIScreen.main.bounds.height)
                    .animation(.spring(), value: showModal)
            }
        }
    }
}

struct ModalView: View {
    @Binding var showModal: Bool

    var body: some View {
        VStack {
            // Tus elementos de vista modal aquí
            Text("Código del Botón")
            // ...
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(20)
    }
}

#Preview {
    ColorPickerView()
}
