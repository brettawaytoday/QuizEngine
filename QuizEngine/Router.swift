//
//  Router.swift
//  QuizEngine
//
//  Created by Brett Christian on 23/02/21.
//

import Foundation

protocol Router {
    
    associatedtype Question: Hashable
    associatedtype Answer
    
    typealias AnswerCallback = (Answer) -> Void
    func routeTo(question: Question, answerCallback: @escaping AnswerCallback)
    func routeTo(result: Result<Question, Answer>)
}
