//
//  Result.swift
//  QuizEngine
//
//  Created by Brett Christian on 23/02/21.
//

import Foundation

struct Result<Question: Hashable, Answer>{
    let answers: [Question: Answer]
    let score: Int
}
