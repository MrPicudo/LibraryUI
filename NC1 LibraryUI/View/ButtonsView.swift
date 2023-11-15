/* ButtonsView.swift --> NC1 LibraryUI. Created by Miguel Torres on 14/11/23. */

import SwiftUI

struct ButtonsView: View {
    
    var body: some View {
        Image(systemName: "arrowshape.up.circle.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.purple)
    }
}

#Preview {
    ButtonsView()
}
