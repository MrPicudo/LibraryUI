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
                        
                    }
                }
                Spacer()
                DisclosureGroup(isExpanded: $isExpanded) {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
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

enum Size: String, CaseIterable, Identifiable {
    case large, regular, small, mini
    var id: Self { self }
}


#Preview {
    ButtonsView()
}
