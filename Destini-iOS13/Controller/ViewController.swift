//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    let example = Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right")
//    let stories : [Story] = [Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
//                             Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play Dead"),
//                             Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")]
//
//    var storyIndex: Int = 0
    var storyBrain = StoryBrain()

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    private func updateUI(){
        storyLabel.text = storyBrain.getStoryLabel()
        let choice1ButtonTitle = storyBrain.getChoice1ButtonTitle()
        let choice2ButtonTitle = storyBrain.getChoice2ButtonTitle()
        choice1Button.setTitle(choice1ButtonTitle, for: .normal)
        choice2Button.setTitle(choice2ButtonTitle, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle ?? "")
        updateUI()
    }
}

