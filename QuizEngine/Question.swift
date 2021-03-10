//
//  Question.swift
//  QuizApp
//
//  Created by Brett Christian on 8/03/21.
//

import Foundation

public enum Question<T: Hashable> : Hashable {
    case singleAnswer(T)
    case multipleAnswer(T)
    
    ///Method to silence the hashValue Depricated warning.
    public func hash(into hasher: inout Hasher) {}
    
    public var hashValue: Int {
        switch self {
        case .singleAnswer(let value):
            return value.hashValue
        case .multipleAnswer(let value):
            return value.hashValue
        }
    }
}
