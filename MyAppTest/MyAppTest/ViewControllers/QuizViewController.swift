//
//  QuizViewController.swift
//  MyAppTest
//
//  Created by Roman Divkovic on 2021-02-11.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var quizImage: UIImageView!
    @IBOutlet weak var quizLabel: UILabel!
    
    let quiz = QuizModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupQuiz()
    }
    
    func setupQuiz() {
        let currentQuestion = quiz.getQuistion()
        
        quizImage.image = currentQuestion.image
        quizLabel.text = currentQuestion.quistion
    }
    
    
    @IBAction func trueButton(_ sender: UIButton) {
        let result = quiz.check(answer: true)
        showResult(isCorrect: result)
    }
    @IBAction func falseButton(_ sender: UIButton) {
        let result = quiz.check(answer: false)
        showResult(isCorrect: result)
    }
    func showResult(isCorrect correct: Bool) {
            let title = correct ? "Rätt svar" : "Fel svar"
            let message = correct ? "Du svarade rätt" : "Du svarade tyvärr fel"
            
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            let nextAction = UIAlertAction(title: "Nästa fråga", style: .default) { (action) in
                
                if self.quiz.nextQuiston() {
                    self.setupQuiz()
                    alert.dismiss(animated: true, completion: nil)
                }else {
                    alert.dismiss(animated: true, completion: nil)
                    self.showFinalScore()
                }
            }
            
            alert.addAction(nextAction)
            present(alert, animated: true, completion: nil)
            
        }
    func showFinalScore() {
            let alert = UIAlertController(title: "Poäng", message: quiz.getScore(), preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default) { (action) in
                self.quiz.reset()
                self.setupQuiz()
                
                alert.dismiss(animated: true, completion: nil)
            }
            
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
}
