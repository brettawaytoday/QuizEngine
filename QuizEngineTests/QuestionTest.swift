//
//  QuestionTest.swift
//  QuizAppTests
//
//  Created by Brett Christian on 8/03/21.
//

import Foundation
import XCTest
@testable import QuizEngine

class QuestionTest: XCTestCase {
    
    func test_hashValue_withSameWrappedValue_isDifferentForSingleAndMultipleAnswer() {
        let aValue = UUID()
        
        XCTAssertNotEqual(Question.singleAnswer(aValue).hashValue, Question.multipleAnswer(aValue).hashValue)
    }
    
    func test_hashValue_forSingleAnswer() {
        let aValue = UUID()
        let anotherValue = UUID()
        
        XCTAssertEqual(Question.singleAnswer(aValue).hashValue, Question.singleAnswer(aValue).hashValue)
        XCTAssertNotEqual(Question.singleAnswer(aValue).hashValue, Question.singleAnswer(anotherValue).hashValue)
    }
    
    func test_hashValue_forMultipleAnswer() {
        let aValue = UUID()
        let anotherValue = UUID()
        
        XCTAssertEqual(Question.multipleAnswer(aValue).hashValue, Question.multipleAnswer(aValue).hashValue)
        XCTAssertNotEqual(Question.multipleAnswer(aValue).hashValue, Question.multipleAnswer(anotherValue).hashValue)
    }
}
