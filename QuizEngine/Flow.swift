//
//  Flow.swift
//  QuizEngine
//
//  Created by Brett Christian on 27/01/21.
//

import Foundation

protocol Router {
    func routeTo(question: String)
}

class Flow {
    let router: Router
    let questions: [String]
    
    init(questions: [String], router: Router) {
        self.router = router
        self.questions = questions
    }
    
    func start() {
        if !questions.isEmpty {
            router.routeTo(question: "")
        }
    }
}
