//
//  Result.swift
//  QuizEngine
//
//  Created by Brett Christian on 23/02/21.
//

import Foundation

public struct Result<Question: Hashable, Answer>{
    public let answers: [Question: Answer]
    public let score: Int
    
    
    /// Public initialiser primarily to help with building robust tests. This can be removed at a later stage if a better implementation is found.
    /// - Parameters:
    ///   - answers: Answers in the form of a Question with it's corresponding answers.
    ///   - score: Score holder to keep track of the score.
    public init(answers: [Question: Answer], score: Int) {
        self.answers = answers
        self.score = score
    }
}
