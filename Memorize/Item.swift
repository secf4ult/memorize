//
//  Item.swift
//  Memorize
//
//  Created by Yu Xiao on 8/6/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    var content: String
    
    init(timestamp: Date, content: String) {
        self.timestamp = timestamp
        self.content = content
    }
}
