//
//  CardView.swift
//  Memorize
//
//  Created by Yu Xiao on 8/6/24.
//

import SwiftUI

struct CardView: View {
    var item: Item
    
    @State var backDegree: CGFloat = 0
    @State var frontDegree: CGFloat = -90
    @State var isFliped: Bool = false
    
    let duration: CGFloat = 0.3
    let delay: CGFloat = 0.3
    
    func flipCard() {
        isFliped = !isFliped
        if isFliped {
            withAnimation(.linear(duration: duration)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: duration).delay(delay)) {
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: duration).delay(delay)) {
                backDegree = 0
            }
            withAnimation(.linear(duration: duration)) {
                frontDegree = -90
            }
        }
    }
    
    var body: some View {
        ZStack {
            CardBack(degree: $backDegree)
            CardFront(item: item, degree: $frontDegree)
        }
        .padding()
        .onTapGesture {
            flipCard()
        }
    }
}

#Preview {
    var preview_item = Item(timestamp: Date(), content: "👻")
    CardView(item: preview_item)
}
