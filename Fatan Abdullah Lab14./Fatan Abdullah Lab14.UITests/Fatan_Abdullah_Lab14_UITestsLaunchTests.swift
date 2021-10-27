//
//  Fatan_Abdullah_Lab14_UITestsLaunchTests.swift
//  Fatan Abdullah Lab14.UITests
//
//  Created by Faten Abdullh salem on 21/03/1443 AH.
//

import XCTest

class Fatan_Abdullah_Lab14_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
