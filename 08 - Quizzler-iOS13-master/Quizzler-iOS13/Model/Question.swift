//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 陈勇 on 2022/7/26.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let question: String
    let answer: String
    
    init(_ question: String, _ answer: String) {
        self.question = question
        self.answer = answer
    }
}
