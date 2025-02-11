//
//  FocusSession.swift
//  Lock In
//
//  Created by Serena Lambert on 11/02/2025.
//

import Foundation
import SwiftData

@Model
class FocusSession {
    var task: Task
    var events: [SessionEvent]  // Stores all logged events

    init(task: Task, events: [SessionEvent] = []) {
        self.task = task
        self.events = events
    }

    func logEvent(_ event: SessionEvent) {
        events.append(event)
    }

    /// ✅ Dynamically returns the first recorded StartEvent's timestamp
    var startTime: Date? {
        return events.compactMap { $0 as? StartEvent }.first?.timestamp
    }

    /// ✅ Dynamically returns the last FinishEvent's timestamp (quit or completion)
    var endTime: Date? {
        return events.compactMap { $0 as? FinishEvent }.last?.timestamp
    }
}
