//
//  Question.swift
//  Personality Quiz
//
//  Created by Alona Trekhlib on 3/3/19.
//  Copyright © 2019 Alona Trekhlib. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
    init(text: String, type: ResponseType, answers: [Answer]) {
        self.text = text
        self.type = type
        self.answers = answers
    }
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
    
    init(text: String, type: AnimalType) {
        self.text = text
        self.type = type
    }
}

enum AnimalType: String {
    case dog, cat, rabbit, turtle
    
    var definition: String {
        switch self {
        case .dog:
            return "You have been the happiest dog in your last life. You were surrouded with the ones you loved and enjoyed outdoor activities!"
        case .cat:
            return "Mischievous, yet mild-tempered, you have enjoyed doing things on your own terms."
        case .rabbit:
            return "You were the sweetest animal in the world. You were healthy and full of energy!"
        case .turtle:
            return "Slow and steady wins the race!"
        }
    }
}



