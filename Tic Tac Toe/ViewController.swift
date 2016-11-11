//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Adhita Selvaraj on 26/02/16.
//  Copyright (c) 2016 DreamCatcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activePlayer = 1
    var gameState = [0,0,0,0,0,0,0,0,0]
    var winningCombinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6,], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var gameActive = true
    @IBOutlet weak var button: UIButton!
    
    @IBAction func playagainButton(sender: AnyObject) {
    
     
    
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
    
        if gameActive == true{
        if gameState[sender.tag] == 0{
            
            gameState[sender.tag] = activePlayer
        
            var image = UIImage()
        
            if activePlayer == 1{
            
                image = UIImage(named: "cross.png")!
                activePlayer = 2
                }
        
            else {
                image = UIImage(named: "circle.png")!
                activePlayer = 1
            }
            
        sender.setImage(image, forState: .Normal)
        
            for combinations in winningCombinations{
                
            if gameState[combinations[0]] != 0 && gameState[combinations[0]] == gameState[combinations[1]] && gameState[combinations[1]] == gameState[combinations[2]]{
                if gameState[combinations[0]] == 1{
                resultLabel.text = "Player \(gameState[combinations[0]]) (Crosses) has won"
                }
                else{
                    resultLabel.text = "Player \(gameState[combinations[0]]) (Zeros) has won"
                    
                }
                
                                gameActive = false
                
            }
            }
            
            
        }
    
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

