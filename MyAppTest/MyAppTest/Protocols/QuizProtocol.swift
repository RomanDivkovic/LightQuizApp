//
//  QuizProtocol.swift
//  MyAppTest
//
//  Created by Roman Divkovic on 2021-02-11.
//

import Foundation

protocol QuizProtocol {
    var quistions: [Question] {set get}
    func getScore() -> String
    func getQuistion() -> Question
    func nextQuiston()-> Bool
    func check(answer: Bool)-> Bool
    func reset()
    
}
