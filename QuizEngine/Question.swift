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
}
