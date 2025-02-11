//
//  Task.swift
//  Lock In
//
//  Created by Serena Lambert on 11/02/2025.
//

import Foundation
import SwiftData

@Model
class Task {
    var title: String
    var reason: String
    var notes: String?
    var status: TaskStatus
    var createdAt: Date
    @Relationship(deleteRule: .cascade) var subtasks: [Subtask]
    
    init(title: String, reason: String, status: TaskStatus, createdAt: Date = Date(), subtasks: [Subtask] = []) {
        self.title = title
        self.reason = reason
        self.status = status
        self.createdAt = createdAt
        self.subtasks = subtasks
    }
}

enum TaskStatus: String, Codable {
    case active, completed, archived
}
