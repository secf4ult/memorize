//
//  CardBack.swift
//  Memorize
//
//  Created by Yu Xiao on 8/6/24.
//

import SwiftUI

struct CardBack: View {
    @Binding var degree: CGFloat
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(.blue)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview {
    CardBack(degree: .constant(0.0))
}
