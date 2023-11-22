/* Sheets.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 22/11/23. */

import SwiftUI

import SwiftUI

struct Sheets: View {
    @State private var showOverlay = false

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ScrollView {
                        // Contenido del ScrollView
                        ForEach(0..<50) { index in
                            Text("Ítem \(index)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                        }
                    }
                    
                    Button("Mostrar Overlay") {
                        self.showOverlay = true
                    }
                }
                
                // Vista secundaria como overlay
                if showOverlay {
                    OverlayView(showOverlay: $showOverlay)
                }
            }
        }
    }
}

struct OverlayView: View {
    @Binding var showOverlay: Bool

    var body: some View {
        // Tu vista secundaria aquí
        VStack {
            Button("Cerrar") {
                self.showOverlay = false
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            // Resto del contenido de tu vista secundaria
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.5)) // Fondo semitransparente
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    Sheets()
}
