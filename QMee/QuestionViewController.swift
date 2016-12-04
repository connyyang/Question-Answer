//
//  QuestionViewController.swift
//  QMee
//
//  Created by Conny Yang on 4/12/2016.
//  Copyright © 2016 Conny Yang. All rights reserved.
//

//
//  ViewController.swift
//  QMee
//
//  Created by Conny Yang on 3/12/2016.
//  Copyright © 2016 Conny Yang. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var score : Int = 0
    
    let gainScore : Int = 15
    
    var currentIndex : Int = 0
    
    var questions : [Question] = [Question]()
    
    var testArray : [String]!
    
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var questionImage: UIImageView!
    
    @IBOutlet weak var questionText: UILabel!
    
    
    @IBOutlet weak var qaProgress: UIProgressView!
    
    @IBAction func chooseTrueAns(_ sender: Any) {
        if currentIndex < questions.count{
            let currentQuestion = questions[currentIndex]
            let answer = currentQuestion.answerTxt
            if answer {
                score += currentQuestion.ratingScore
            }
            
            displayNextQuestion()
        }
        
        
    }
    
    @IBAction func chooseFalseAns(_ sender: Any) {
        
        if currentIndex < questions.count{
            let currentQuestion = questions[currentIndex]
            let answer = currentQuestion.answerTxt
            if answer {
                score += currentQuestion.ratingScore
            }
            
            
            displayNextQuestion()
            
        }
        
    }
    
    
    func displayNextQuestion() {
        let nextQuestion = questions[currentIndex]
        questionText.text = nextQuestion.questionTxt
        
        questionImage.image = UIImage(named: nextQuestion.imageName)
        
        scoreLabel.text = String(score)
        currentIndex = currentIndex + 1
        qaProgress.progress += Float(1) / Float(questions.count)
        print(qaProgress.progress)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testArray = ["ddd"]
        
        scoreLabel.text = "0"
        
        let question1 = Question(questionTxt: "What’s the name of this city in the United States with a bell in the near middle of the city?", answerTxt: true, ratingScore: 15, imageName: "1")
        questions.append(question1)
        
        let question2 = Question(questionTxt: "What is the name of the spaceship first landed on the moon?", answerTxt: true, ratingScore: 15, imageName: "2")
        questions.append(question2)
        
        let question3 = Question(questionTxt: "What does 'umbros' mean in Latin? Translate it into Sentinelese.", answerTxt: false, ratingScore: 15, imageName: "3")
        questions.append(question3)
        
        let question4 = Question(questionTxt: "What’s the first photo printed from a camera in the world?", answerTxt: true, ratingScore: 15, imageName: "4")
        questions.append(question4)
        
        let question5 = Question(questionTxt: "When was the first email ever sent in the world?", answerTxt: false, ratingScore: 15, imageName: "5")
        questions.append(question5)
        
        let question6 = Question(questionTxt: "… and what was that email about?", answerTxt: false, ratingScore: 15, imageName: "6")
        questions.append(question6)
        
        // print(questions)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


