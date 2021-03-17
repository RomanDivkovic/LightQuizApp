//
//  QuizModel.swift
//  MyAppTest
//
//  Created by Roman Divkovic on 2021-02-11.
//

import Foundation
import UIKit

class QuizModel: QuizProtocol {
    
    private var score = 0
    private var index = 0
    var quistions: [Question] = [
        Question(correctAnswer: true, quistion: "Ser du en basketboll", image: UIImage(named: "basketball")!),
        Question(correctAnswer: true, quistion: "Ser du en Mercedes", image: UIImage(named: "car1")!),
        Question(correctAnswer: false, quistion: "Ser du en Tesla", image: UIImage(named: "car2")!),
        Question(correctAnswer: false, quistion: "Ser du ett Ferrari", image: UIImage(named: "car3")!),
        Question(correctAnswer: false, quistion: "Ser du en Alfa Romero", image: UIImage(named: "car8")!),
        Question(correctAnswer: true, quistion: "Ser du en fotboll", image: UIImage(named: "football")!),
        Question(correctAnswer: true, quistion: "Ser du en orm", image: UIImage(named: "snake")!)
    ]
    
    
    func getScore() -> String {
        return "\(score) \\ \(quistions.count)"
    }
    
    func getQuistion() -> Question {
        return quistions[index]
    }
    
    func nextQuiston() -> Bool {
        index += 1
               
        if index >= quistions.count {
            return false
        }
               
        return true

    }
    
    func check(answer: Bool) -> Bool {
        let question = getQuistion()
        
        if question.correctAnswer == answer {
                    score += 1
                    return true
                }
                return false
    }
    
    func reset() {
        index = 0
        score = 0
    }
    
    
    
}
