/* ButtonsView.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 22/11/23. */

import SwiftUI

struct ButtonsView: View {
    
    @State private var selectedRole: Role = .none
    @State private var selectedSize: Size = .regular
    @State private var isExpanded = false
    
    var body: some View {
        
        ZStack(alignment: .top) {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack {
                ScrollView {
                    Color(.systemBackground)
                    
                    VStack(spacing: 0) {
                        HStack {
                            Text("Button Role")
                            Spacer()
                            Picker("Button Role", selection: $selectedRole) {
                                Text("None").tag(Role.none)
                                Text("Destructive").tag(Role.destructive)
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(Color(UIColor.systemGray6)) // Fondo de la celda
                        
                        Divider()
                            .padding(.leading, 15)
                        
                        HStack {
                            Text("Button Size")
                            Spacer()
                            Picker("Button Size", selection: $selectedSize) {
                                Text("Large").tag(Size.large)
                                Text("Regular").tag(Size.regular)
                                Text("Small").tag(Size.small)
                                Text("Mini").tag(Size.mini)
                            }
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(Color(UIColor.systemGray6)) // Fondo de la celda
                    }
                    .cornerRadius(8) // Esquinas redondeadas
                    .padding() // Padding para el VStack
                    
                    VStack(spacing: 13) {
                        Button() {
                            //
                        } label: {
                            Text("Standard Button")
                        }.controlSize(selectedSize.controlSize)
                        
                        Button(){
                            //
                        } label: {
                            Text("Plain Button")
                        }.buttonStyle(.plain)
                            .controlSize(selectedSize.controlSize)
                        
                        Button(){
                            //
                        } label: {
                            Text("Bordered")
                        }.buttonStyle(.bordered)
                            .controlSize(selectedSize.controlSize)
                        
                        Button(){
                            //
                        } label: {
                            Text("Prominent Border")
                        }.buttonStyle(.borderedProminent)
                            .controlSize(selectedSize.controlSize)
                        
                    }
                }
                Spacer()
                DisclosureGroup(isExpanded: $isExpanded) {
                    Image("ButtonsCode")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                } label: {
                    HStack {
                        Text("{ Code }")
                            .foregroundStyle(.black)
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                    }
                    .frame(height: 75)
                    .padding(.horizontal)
                    .background(.teal.opacity(0.40))
                }
                .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
        }
        .navigationTitle("Buttons")
        .navigationBarTitleDisplayMode(.inline)
    }
}

enum Role: String, CaseIterable, Identifiable {
    case none, destructive
    var id: Self { self }
}



enum Size {
    // Definimos los casos que va a tener el enum
    case large, regular, small, mini
    // Definimos un atributo computable que toma esos casos para definir un controlSize.
    var controlSize: ControlSize {
            switch self {
            case .large:
                return .large
            case .regular:
                return .regular
            case .small:
                return .small
            case .mini:
                return .mini
            }
        }
}


#Preview {
    ButtonsView()
}
