/* ButtonsView.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 22/11/23. */

import SwiftUI

struct ButtonsView: View {
    
    @State private var selectedRole: Role = .none
    @State private var selectedSize: Size = .regular
    @State private var isExpanded = false
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            GeometryReader { geometry in
                
                VStack {
                    List{
                        Picker("Button Role", selection: $selectedRole) {
                            Text("None").tag(Role.none)
                            Text("Destructive").tag(Role.destructive)
                        }
                        Picker("Button Size", selection: $selectedSize) {
                            Text("Large").tag(Size.large)
                            Text("Regular").tag(Size.regular)
                            Text("Small").tag(Size.small)
                            Text("Mini").tag(Size.mini)
                        }
                    }
                    .frame(height: 150)
                    
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
                    
                    Spacer()
                    
                    DisclosureGroup("Mostrar imagen", isExpanded: $isExpanded) {
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    .padding()
                }
            }
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
