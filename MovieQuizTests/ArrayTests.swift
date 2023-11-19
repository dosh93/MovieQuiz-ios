//
//  ArrayTests.swift
//  MovieQuizTests
//
//  Created by Dosh on 13.11.2023.
//

import Foundation
import XCTest
@testable import MovieQuiz

class ArrayTests: XCTestCase {
    func testGetValueInRange() throws {
        // Given
        let array = [1,2,3,4,5]
        // When
        let value = array[safe: 2]
        // Then
        XCTAssertNotNil(value)
        XCTAssertEqual(value, 3)
    }
    
    func testGetValueOutOfRange() throws {
        // Given
        let arrray = [1,2,3,4,5]
        // When
        let value = arrray[safe: 20]
        // Then
        XCTAssertNil(value)
    }
}
