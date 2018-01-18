//
//  ASLocalizeBetterUITests.swift
//  ASLocalizeBetterUITests
//
//  Created by Andrea on 17/01/2018.
//  Copyright © 2018 Andrea Stevanato. All rights reserved.
//

import XCTest

class ASLocalizeBetterUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
    }

    func testITLocalization() {

        app = XCUIApplication()
        app.launchArguments.append("-AppleLanguages")
        app.launchArguments.append("(it)")
        app.launch()

        XCTAssert(app.staticTexts["LocalizeBetter IT"].exists)
        XCTAssert(app.staticTexts["Titolo Sezione 1"].exists)
        XCTAssert(app.staticTexts["Titolo Sezione 2"].exists)
        XCTAssert(app.staticTexts["Titolo Sezione 3"].exists)
        XCTAssert(app.staticTexts["Chiave di localizzazione mancante circondata da **"].exists)
        XCTAssert(app.staticTexts["**missing_key**"].exists)
    }

    func testENLocalization() {

        app = XCUIApplication()
        app.launchArguments.append("-AppleLanguages")
        app.launchArguments.append("(en)")
        app.launch()

        XCTAssert(app.staticTexts["LocalizeBetter EN"].exists)
        XCTAssert(app.staticTexts["Title Section 1"].exists)
        XCTAssert(app.staticTexts["Title Section 2"].exists)
        XCTAssert(app.staticTexts["Title Section 3"].exists)
        XCTAssert(app.staticTexts["Missing localization key surrounded by **"].exists)
        XCTAssert(app.staticTexts["**missing_key**"].exists)
    }
    
}
