//
//  Subtask.swift
//  Lock In
//
//  Created by Serena Lambert on 11/02/2025.
//

import Foundation
import SwiftData

@Model
class Subtask {
    var title: String
    var isCompleted: Bool
    
    init(title: String, isCompleted: Bool = false) {
        self.title = title
        self.isCompleted = isCompleted
    }
}
