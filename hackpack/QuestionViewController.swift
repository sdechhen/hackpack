//
//  QuestionViewController.swift
//  hackpack
//
//  Created by Dechhen Sherpa on 1/13/22.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var questionProgressView: UIProgressView!
    var questions: [Question] = [
      Question(
        text: "What's your dream vacation?",
        answers: [
            Answer(text: "All inclusive trip to Colonial Williamsburg",type: .tranchida),
            Answer(text: "7 day zoo pass in San Francisco",type: .shaw),
          Answer(text: "An architects tour of Chichen Itza", type: .flan),
          Answer(text: "Cemetery tour in Stratford upon Avon and a visitors pass to The Codrington Library", type: .docRob)
        ]
      ),
      Question(
        text: "A student is singing on top of a table at the start of class. What do you do?",
        answers: [
          Answer(text: "Sing with them", type: .tranchida),
          Answer(text: "Tell them the history behind the harkness table at Hackley", type: .shaw),
          Answer(text: "Comment on their singing ", type: .flan),
          Answer(text: "Close your eyes and hope they stop", type: .docRob)
        ]
      ),
      Question(
        text: "Dechhen and Catherine wrote these books. Which sounds most intriguing to you?",
        answers: [
          Answer(text: "Geometry for the Girlzzzzz", type: .tranchida),
          Answer(text: "What is a problem? An essentialists guide.", type: .shaw),
          Answer(text: "Hackley, a history", type: .flan),
          Answer(text: "Monkfish", type: .docRob)
        ]
      ),
      Question(
        text: "What is your choice of exercise?",
        answers: [
          Answer(text: "Crossfit in the Johnson Center Mondays & Thursdays", type: .tranchida),
          Answer(text: "Walking your dog", type: .shaw),
          Answer(text: "Laps around Akin Common", type: .flan),
          Answer(text: "Powerlifting", type: .docRob)
        ]
      ),
      Question(
        text: "Break has been assigned for advisory time. Where are you?",
        answers: [
          Answer(text: "No where to be found", type: .tranchida),
          Answer(text: "Alone in your advisory room since no one showed up", type: .shaw),
          Answer(text: "Sitting quietly with your advisory", type: .flan),
          Answer(text: "Giving random announcements to your advisees", type: .docRob)
        ]
      ),
    ]
    
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func nextQuestion(){
        questionIndex += 1
            if questionIndex < questions.count {
                updateUI()
            } else {
                performSegue(withIdentifier: "Results",sender: nil)
            }
    }
    
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder, responses:
               answersChosen)
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
            switch sender {
            case button1:
                answersChosen.append(currentAnswers[0])
            case button2:
                answersChosen.append(currentAnswers[1])
            case button3:
                answersChosen.append(currentAnswers[2])
            case button4:
                answersChosen.append(currentAnswers[3])
            default:
                break
            }
        
            nextQuestion()
        }
    
    
    func updateUI() {
        singleStackView.isHidden = false
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float (questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated:true)
        updateStack(using: currentAnswers)
    }
    
    func updateStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        button1.setTitle(answers[0].text, for: .normal)
        button2.setTitle(answers[1].text, for: .normal)
        button3.setTitle(answers[2].text, for: .normal)
        button4.setTitle(answers[3].text, for: .normal)
    }
}


