//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    var storyIndex: Int = 0
    let stories: [Story] = [
        Story(
              title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
              choice1: "I'll hop in. Thanks for the help!", choice1Destination: 2,
              choice2: "Better ask him if he's a murderer first.", choice2Destination: 1
              ),
        Story(
              title: "He nods slowly, unfazed by the question.",
              choice1: "At least he's honest. I'll climb in.", choice1Destination: 2,
              choice2: "Wait, I know how to change a tire.", choice2Destination: 3
              ),
        Story(
              title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
              choice1: "I love Elton John! Hand him the cassette tape.", choice1Destination: 5,
              choice2: "It's him or me! You take the knife and stab him.", choice2Destination: 4
              ),
        Story(
              title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
              choice1: "The", choice1Destination: 0,
              choice2: "End", choice2Destination: 0
              ),
        Story(
              title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
              choice1: "The", choice1Destination: 0,
              choice2: "End", choice2Destination: 0
              ),
        Story(
              title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
              choice1: "The", choice1Destination: 0,
              choice2: "End", choice2Destination: 0
              )
    ]
    mutating func nextStory(userChoice: String) {
        if userChoice == stories[storyIndex].choice1 {
            storyIndex = stories[storyIndex].choice1Destination
        } else if userChoice == stories[storyIndex].choice2 {
            storyIndex = stories[storyIndex].choice2Destination
        }
        if storyIndex >= stories.count {
            storyIndex = 0 // Reset to the first story if we go out of bounds
        }
    }
    func getStoryLabel() -> String {
        return stories[storyIndex].title
    }
    func getChoice1ButtonTitle() -> String {
        return stories[storyIndex].choice1
    }
    func getChoice2ButtonTitle() -> String {
        return stories[storyIndex].choice2
    }
}

