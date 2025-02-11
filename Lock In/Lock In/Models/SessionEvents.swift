//
//  SessionEvents.swift
//  Lock In
//
//  Created by Serena Lambert on 11/02/2025.
//

import Foundation
import SwiftData

@Model
open class SessionEvent {
    var timestamp: Date

    private init(timestamp: Date = Date()) {
        self.timestamp = timestamp
    }

    internal init(_ timestamp: Date) {
        self.timestamp = timestamp
    }
}

@Model
open class FinishEvent: SessionEvent {
    init(timestamp: Date) {
        super.init(timestamp)
    }
}

@Model
class StartEvent: SessionEvent {
    var estimate: Int?

    init(estimate: Int? = nil, timestamp: Date = Date()) {
        self.estimate = estimate
        super.init(timestamp)
    }
}

@Model
class BreakEvent: SessionEvent {
    var duration: Int

    init(duration: Int, timestamp: Date = Date()) {
        self.duration = duration
        super.init(timestamp)
    }
}

@Model
class QuitEvent: FinishEvent {
    var reason: String?

    init(reason: String?, timestamp: Date = Date()) {
        self.reason = reason
        super.init(timestamp: timestamp)
    }
}

@Model
class CompletedEvent: FinishEvent {
    override init(timestamp: Date = Date()) {
        super.init(timestamp: timestamp)
    }
}
