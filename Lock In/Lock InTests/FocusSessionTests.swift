//
//  FocusSessionTests.swift
//  Lock InTests
//
//  Created by Serena Lambert on 11/02/2025.
//

import Foundation
import XCTest
@testable import Lock_In

final class FocusSessionTests: XCTestCase {
    
    func testStartTaskWithEstimate() {
        let session = FocusSession(task: Task(title: "Test", reason: "Testing", status: .active))
        let now = Date()
        
        session.logEvent(.startTask(estimate: 60, startedAt: now))
        
        XCTAssertEqual(session.startTime, now)
    }
}
