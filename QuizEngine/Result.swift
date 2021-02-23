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
}
