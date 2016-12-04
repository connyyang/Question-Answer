//
//  Question.swift
//  QMee
//
//  Created by Conny Yang on 3/12/2016.
//  Copyright © 2016 Conny Yang. All rights reserved.
//

import Foundation

class Question{

    var questionTxt : String = ""
    
    var answerTxt : Bool
    
    var ratingScore : Int
    
    var imageName : String = ""
    
    init(questionTxt : String, answerTxt : Bool, ratingScore : Int, imageName : String){
        self.questionTxt = questionTxt
        self.answerTxt = answerTxt
        self.ratingScore = ratingScore
        self.imageName = imageName
        
    }
}
