//
//  ResultsViewController.swift
//  hackpack
//
//  Created by Dechhen Sherpa on 1/13/22.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDescriptionLabel: UILabel!
    
    var responses : [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult(){
        /*
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
                counts[answer.type, default: 0] += 1
            }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        */
        let maxValue = tally.max { a, b in a.value < b.value }
        let frequent = maxValue!.key
        resultAnswerLabel.text = "You are \(frequent.rawValue)!"
        
        resultDescriptionLabel.text = frequent.definition
    }
    
}
    
    
