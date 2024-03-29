//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by 陈勇 on 2022/7/26.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var questionNum = 0
    var score = 0

    let questionList = [
        Question("A slug's blood is green.", "True"),
        Question("Approximately one quarter of human bones are in the feet.", "True"),
        Question("The total surface area of two human lungs is approximately 70 square metres.", "True"),
        Question("In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", "True"),
        Question("In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", "False"),
        Question("It is illegal to pee in the Ocean in Portugal.", "True"),
        Question("You can lead a cow down stairs but not up stairs.", "False"),
        Question("Google was originally called 'Backrub'.", "True"),
        Question("Buzz Aldrin's mother's maiden name was 'Moon'.", "True"),
        Question("The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", "False"),
        Question("No piece of square dry paper can be folded in half more than 7 times.", "False"),
        Question("Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", "True")
    ]
    

    mutating func checkAnswer(userAnswer: String?) -> Bool {
        let realAnswer = questionList[questionNum].answer
        
        if userAnswer! == realAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestion() -> String {
        let question = questionList[questionNum].question
        return question
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNum + 1) / Float(questionList.count)
        return progress
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func getNextNum() {
        if self.questionNum < self.questionList.count - 1 {
            self.questionNum += 1
        } else {
            self.questionNum = 0
            self.score = 0
        }
    }
}
