//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Alona Trekhlib on 3/5/19.
//  Copyright © 2019 Alona Trekhlib. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    var responses: [Answer]!
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequestAnswersSorted = frequencyOfAnswers.sorted(by: {(pair1, pair2) -> Bool in return pair1.value > pair2.value})
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1}.first!.key
        
         resultAnswerLabel.text = "You're a \(mostCommonAnswer.rawValue)!"
         resultDefinitionLabel.text = mostCommonAnswer.definition
    }
}
