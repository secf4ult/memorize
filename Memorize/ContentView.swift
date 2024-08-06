//
//  ContentView.swift
//  Memorize
//
//  Created by Yu Xiao on 8/6/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        ForEach(items) { item in
            CardView(item: item)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
