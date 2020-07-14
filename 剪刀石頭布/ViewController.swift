//
//  ViewController.swift
//  剪刀石頭布
//
//  Created by Yvonne on 2020/7/8.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    @IBOutlet weak var iphoneImageView: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    

    @IBOutlet weak var playerImageView: UIImageView!
    
 
    
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBOutlet weak var rockButton: UIButton!
    
    @IBOutlet weak var papperButton: UIButton!
    
    

    
    
    
    
    
    let iphoneImageNames = ["papper","scissors","rock"]
    
    

  
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
        
    
    @IBAction func scissorsButton(_ sender: UIButton) {
        iphoneImageView.image = UIImage(named: "scissors")
        playerImageView.image = UIImage(named: "playerScissors")
        resultLabel.text = ""
        iphonePlay()
        whoWin()
        
    }
    

    @IBAction func rock(_ sender: UIButton) {
        iphoneImageView.image = UIImage(named: "rock")
        playerImageView.image = UIImage(named: "playerRock")
        resultLabel.text = ""
        iphonePlay()
        whoWin()
        
    }
    
    @IBAction func papper(_ sender: UIButton) {
        iphoneImageView.image = UIImage(named: "papper")
        playerImageView.image = UIImage(named: "playerPapper")
        resultLabel.text = ""
        iphonePlay()
        whoWin()
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func iphonePlay(){
        let shuffleName = iphoneImageNames.randomElement()!
        iphoneImageView.image = UIImage(named: "\(shuffleName)")
    }
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    func whoWin(){
        //平手,都出布
        if iphoneImageView.image == UIImage(named: "papper"),playerImageView.image == UIImage(named: "playerPapper"){
            resultLabel.text = "save"
            
        }
        
        else if iphoneImageView.image == UIImage(named: "scissors"),playerImageView.image == UIImage(named: "playerScissors"){
            resultLabel.text = "save"
            
        }
        else if iphoneImageView.image == UIImage(named: "rock"),playerImageView.image == UIImage(named: "playerRock"){
            resultLabel.text = "save"
            
        }
       
        //電腦出剪刀
        else if iphoneImageView.image == UIImage(named: "scissors"),playerImageView.image == UIImage(named: "playerPapper"){
            resultLabel.text = "you lose"
        }
        else if iphoneImageView.image == UIImage(named: "scissors"),playerImageView.image == UIImage(named: "playerRock"){
            resultLabel.text = "you win"
        }
        //電腦出石頭
        else if iphoneImageView.image == UIImage(named: "rock"),playerImageView.image == UIImage(named: "playerScissors"){
            resultLabel.text = "you lose"
        }
        else if iphoneImageView.image == UIImage(named: "rock"),playerImageView.image == UIImage(named: "playerPapper"){
            resultLabel.text = "you win"
        }
        //電腦出布
        else if iphoneImageView.image == UIImage(named: "papper"),playerImageView.image == UIImage(named: "playerScissors"){
            resultLabel.text = "you win"
        }
        else if iphoneImageView.image == UIImage(named: "papper"),playerImageView.image == UIImage(named: "playerRock"){
            resultLabel.text = "you lose"
        }
        
        
        
        
        
        }
        
    
  
    
   
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    



}
