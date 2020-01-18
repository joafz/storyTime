//
//  ViewController.swift
//  StoryTime
//


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
   
    //storyBrain is created as a new instance of StoryBrain in the ViewController.swift to be able to tap into the newfound capabilities of the StoryBrain
    var storyBrain = StoryBrain() //StoryBrain structure in StoryBrain.swift
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        //userChoice: sender.currentTitle! means that userChoice is = to what button user clicks on
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    //function to update the UI
    func updateUI(){
        storyLabel.text = storyBrain.getStoryTitle()//set the text of the story label
        choice1Button.setTitle(storyBrain.getChoice1(),for: .normal)//set the text of the button
        choice2Button.setTitle(storyBrain.getChoice2(),for: .normal)//set the text of the button
    }
    
    
}

