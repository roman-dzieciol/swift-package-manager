/*
 This source file is part of the Swift.org open source project

 Copyright 2016 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See http://swift.org/LICENSE.txt for license information
 See http://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

import XCTest

import Commands

final class PackageToolTests: XCTestCase {
    func testUsage() throws {
        XCTAssert(try SwiftPMProduct.SwiftPackage.execute(["--help"], printIfError: true).contains("USAGE: swift package"))
    }
    
    func testVersion() throws {
        XCTAssert(try SwiftPMProduct.SwiftPackage.execute(["--version"], printIfError: true).contains("Swift Package Manager"))
    }

    static var allTests = [
        ("testUsage", testUsage),
        ("testVersion", testVersion),
    ]
}