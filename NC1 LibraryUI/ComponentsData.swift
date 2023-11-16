/* ComponentsData.swift --> NC1 LibraryUI. Created by Jose Miguel Torres Chavez Nava on 15/11/23. */

import Foundation
import SwiftUI

struct ComponentsData {
    // Datos de los controles de SwiftUI
    var controlsData: [ComponentsModel] = [
        ComponentsModel(image: "cursorarrow.click", name: "Buttons", color: Color.red),
        ComponentsModel(image: "eyedropper", name: "Color Picker", color: Color.blue),
        ComponentsModel(image: "calendar", name: "Date Picker", color: Color.green),
        ComponentsModel(image: "chevron.down", name: "Disclosure Group", color: Color.cyan),
        ComponentsModel(image: "pencil.tip.crop.circle", name: "Edit Button", color: Color.yellow),
        ComponentsModel(image: "rectangle.fill", name: "Form", color: Color.pink),
        ComponentsModel(image: "gauge", name: "Gauge", color: Color.green),
        ComponentsModel(image: "rectangle.3.group", name: "Group Box", color: Color.purple),
        ComponentsModel(image: "text.alignleft", name: "Label", color: Color.mint),
        ComponentsModel(image: "text.bubble.fill", name: "Labeled Content", color: Color.red),
        ComponentsModel(image: "link", name: "Link", color: Color.indigo),
        ComponentsModel(image: "list.bullet", name: "List", color: Color.orange),
        ComponentsModel(image: "line.3.horizontal.decrease.circle", name: "Menu", color: Color.brown),
        ComponentsModel(image: "calendar.badge.plus", name: "Multi Date Picker", color: Color.green),
        ComponentsModel(image: "arrow.right.doc.on.clipboard", name: "Navigation Link", color: Color.blue),
        ComponentsModel(image: "rectangle.split.3x3.fill", name: "Navigation Split View", color: Color.pink),
        ComponentsModel(image: "rectangle.stack.fill", name: "Navigation Stack", color: Color.brown),
        ComponentsModel(image: "rectangle.portrait.arrowtriangle.2.outward", name: "Navigation View", color: Color.green),
        ComponentsModel(image: "square.on.square.squareshape.controlhandles", name: "Outline Group", color: Color.green),
        ComponentsModel(image: "doc.on.doc", name: "Paste Button", color: Color.blue),
        ComponentsModel(image: "rectangle.roundedtop.fill", name: "Picker", color: Color.orange),
        ComponentsModel(image: "circle.dashed.inset.fill", name: "Progress View", color: Color.red),
        ComponentsModel(image: "text.cursor", name: "Rename Button", color: Color.green),
        ComponentsModel(image: "scroll", name: "Scroll View", color: Color.blue),
        ComponentsModel(image: "rectangle.split.3x3", name: "Section", color: Color.purple),
        ComponentsModel(image: "lock.fill", name: "Secure Field", color: Color.green),
        ComponentsModel(image: "link", name: "Share Link", color: Color.brown),
        ComponentsModel(image: "slider.horizontal.3", name: "Slider", color: Color.blue),
        ComponentsModel(image: "plusminus", name: "Stepper", color: Color.orange),
        ComponentsModel(image: "rectangle.stack", name: "Tab View", color: Color.purple),
        ComponentsModel(image: "tablecells", name: "Table", color: Color.blue),
        ComponentsModel(image: "text.alignleft", name: "Text", color: Color.green),
        ComponentsModel(image: "rectangle.and.text.magnifyingglass", name: "Text Editor", color: Color.blue),
        ComponentsModel(image: "text.cursor", name: "Text Field", color: Color.purple),
        ComponentsModel(image: "togglepower", name: "Toggle", color: Color.red)
    ]
    // Datos de los layouts de SwiftUI
    var layoutsData: [ComponentsModel] = [
        ComponentsModel(image: "square.grid.3x3.fill", name: "Control Group", color: Color.green),
        ComponentsModel(image: "rectangle.compress.vertical", name: "Depth Stack", color: Color.yellow),
        ComponentsModel(image: "gyroscope", name: "Geometry Reader", color: Color.red),
        ComponentsModel(image: "rectangle.grid.1x2", name: "Horizontal Stack", color: Color.blue),
        ComponentsModel(image: "square.grid.3x1.below.line.grid.1x2", name: "Lazy Horizontal Grid", color: Color.red),
        ComponentsModel(image: "rectangle.grid.1x2.fill", name: "Lazy Horizontal Stack", color: Color.purple),
        ComponentsModel(image: "square.grid.2x2", name: "Lazy Vertical Grid", color: Color.blue),
        ComponentsModel(image: "rectangle.grid.3x2", name: "Lazy Vertical Stack", color: Color.yellow),
        ComponentsModel(image: "eyeglasses", name: "Scroll View Reader", color: Color.blue),
        ComponentsModel(image: "minus", name: "Spacer", color: Color.teal),
        ComponentsModel(image: "rectangle.stack", name: "Vertical Stack", color: Color.green),
        ComponentsModel(image: "arrow.up.left.and.down.right.and.arrow.up.right.and.down.left", name: "View That Fits", color: Color.orange)
    ]
    // Datos de Miscellaneous components
    var miscellaneousData: [ComponentsModel] = [
        ComponentsModel(image: "square.split.diagonal.2x2", name: "Canvas", color: Color.yellow),
        ComponentsModel(image: "paintpalette", name: "Color", color: Color.purple),
        ComponentsModel(image: "rectangle.on.rectangle.angled", name: "Container Relative Shape", color: Color.cyan),
        ComponentsModel(image: "line.horizontal.3.decrease", name: "Divider", color: Color.red),
        ComponentsModel(image: "rectangle.portrait.and.arrow.right", name: "Empty View", color: Color.brown),
        ComponentsModel(image: "waveform.path.ecg", name: "Gradient", color: Color.blue),
        ComponentsModel(image: "rectangle.3.group", name: "Group", color: Color.blue),
        ComponentsModel(image: "photo", name: "Image", color: Color.green),
        ComponentsModel(image: "scribble.variable", name: "Path", color: Color.red),
        ComponentsModel(image: "rectangle.roundedtop.fill", name: "Shape", color: Color.teal),
        ComponentsModel(image: "clock.arrow.circlepath", name: "Timeline View", color: Color.orange)
    ]
}
