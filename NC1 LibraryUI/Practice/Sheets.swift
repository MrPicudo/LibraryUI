/* Sheets.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 22/11/23. */

import SwiftUI

import SwiftUI

struct Sheets: View {
    @State private var showOverlay = false

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    
                    
                    
                    Button(){
                        //
                    } label: {
                        Text("Standard Button")
                    }.controlSize(.regular)

                    Button(){
                        //
                    } label: {
                        Text("Plain Button")
                    }.buttonStyle(.plain)
                    .controlSize(.regular)

                    Button(){
                        //
                    } label: {
                        Text("Bordered")
                    }.buttonStyle(.bordered)
                    .controlSize(.regular)

                    Button(){
                        //
                    } label: {
                        Text("Prominent Border")
                    }.buttonStyle(.borderedProminent)
                    .controlSize(.regular)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
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


/*
struct StaticViewInScroll: View {
    
    let tabBarHeight: CGFloat = 49
    
    var body: some View {
        ZStack(alignment: .top) { // Cambia a .bottom para fijar en la parte inferior
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

*/
