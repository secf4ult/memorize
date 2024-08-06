//
//  CardFront.swift
//  Memorize
//
//  Created by Yu Xiao on 8/6/24.
//

import SwiftUI

struct CardFront: View {
    var item: Item
    @Binding var degree: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.red)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 6).foregroundColor(.orange)
            Text(item.content)
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    var preview_item = Item(timestamp: Date(), content: "👻")
    CardFront(item: preview_item, degree: .constant(0.0))
}
