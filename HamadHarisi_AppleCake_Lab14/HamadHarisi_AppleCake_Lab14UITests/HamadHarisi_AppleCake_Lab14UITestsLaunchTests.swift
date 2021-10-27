//
//  HamadHarisi_AppleCake_Lab14UITestsLaunchTests.swift
//  HamadHarisi_AppleCake_Lab14UITests
//
//  Created by حمد الحريصي on 26/10/2021.
//

import XCTest

class HamadHarisi_AppleCake_Lab14UITestsLaunchTests: XCTestCase {

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
