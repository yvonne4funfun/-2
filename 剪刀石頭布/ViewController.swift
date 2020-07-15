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
    
    @IBOutlet weak var upButton: UIButton!
    
    @IBOutlet weak var downButton: UIButton!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    
    var isIphoneWin = false
    //設定電腦隨機的圖
    let iphoneImageNames = ["papper","scissors","rock"]
    let iphoneInageNames2 = ["up","down","left","right"]
    

  
 
    
    override func viewDidLoad() {
        beforeMora()
        super.viewDidLoad()
        
        }
    
    
    
    
    
        
    //設定剪刀石頭布按鈕
    @IBAction func scissorsButton(_ sender: UIButton) {
        iphoneImageView.image = UIImage(named: "scissors")
        playerImageView.image = UIImage(named: "playerScissors")
        resultLabel.text = ""
        iphonePlay()
        whoWin()
        afterMora()
        
    }
    

    @IBAction func rock(_ sender: UIButton) {
        iphoneImageView.image = UIImage(named: "rock")
        playerImageView.image = UIImage(named: "playerRock")
        resultLabel.text = ""
        iphonePlay()
        whoWin()
        
        afterMora()
    }
    
    @IBAction func papper(_ sender: UIButton) {
        iphoneImageView.image = UIImage(named: "papper")
        playerImageView.image = UIImage(named: "playerPapper")
        resultLabel.text = ""
        iphonePlay()
        whoWin()
        
        afterMora()
    }
    
    @IBAction func up(_ sender: UIButton) {
        afterMora()
        iphonePlay2()
        playerImageView.image = UIImage(named: "playerUp")
        whoWin2()
        whoWin3()
    }
    
    @IBAction func down(_ sender: UIButton) {afterMora()
        iphonePlay2()
        playerImageView.image = UIImage(named: "playerDown")
        whoWin2()
        whoWin3()
    }
    
    @IBAction func left(_ sender: UIButton) {afterMora()
        iphonePlay2()
        playerImageView.image = UIImage(named: "playerLeft")
        whoWin2()
        whoWin3()
    }
    
    @IBAction func right(_ sender: UIButton) {afterMora()
        iphonePlay2()
        playerImageView.image = UIImage(named: "playerRight")
        whoWin2()
        whoWin3()
    }
    
    
    
    
    
    
    func iphonePlay2(){
        let shuffleName2 = iphoneInageNames2.randomElement()!
        iphoneImageView.image = UIImage(named: "\(shuffleName2)")
    }
    
    
    
    
    
    
    //設定電腦猜拳亂數
    func iphonePlay(){
        let shuffleName = iphoneImageNames.randomElement()!
        iphoneImageView.image = UIImage(named: "\(shuffleName)")
    }
    
    func beforeMora(){
        
        
        upButton.isHidden = true
        downButton.isHidden = true
        leftButton.isHidden = true
        rightButton.isHidden = true
    }
    
    func afterMora(){
        
        scissorsButton.isHidden = true
        rockButton.isHidden = true
        papperButton.isHidden = true
        upButton.isHidden = false
        downButton.isHidden = false
        leftButton.isHidden = false
        rightButton.isHidden = false
        iphoneImageView.isHidden = false
        playerImageView.isHidden = false
        resultLabel.isHidden = false
    }
    
    @IBAction func restart(_ sender: UIButton) {
        iphoneImageView.isHidden = true
        playerImageView.isHidden = true
        resultLabel.isHidden = true
        scissorsButton.isHidden = false
        rockButton.isHidden = false
        papperButton.isHidden = false
        upButton.isHidden = true
        downButton.isHidden = true
        leftButton.isHidden = true
        rightButton.isHidden = true
    }
    
    
    
    
    
    
    func whoWin2(){
        if isIphoneWin == true {
            if iphoneImageView.image == UIImage(named: "up"),playerImageView.image == UIImage(named: "playerUp"){
                resultLabel.text = "you lose"}
            
            else if iphoneImageView.image == UIImage(named: "up"),playerImageView.image == UIImage(named: "playerDown"){
                    resultLabel.text = "restart" }
            else if iphoneImageView.image == UIImage(named: "up"),playerImageView.image == UIImage(named: "playerLeft"){
                    resultLabel.text = "restart"
                    }
            else if iphoneImageView.image == UIImage(named: "up"),playerImageView.image == UIImage(named: "playerRight"){
                            resultLabel.text = "restart" }
            
            else if iphoneImageView.image == UIImage(named: "down"),playerImageView.image == UIImage(named: "playerDown"){
                resultLabel.text = "you lose"
                }
            else if iphoneImageView.image == UIImage(named: "down"),playerImageView.image == UIImage(named: "playerUp"){
                        resultLabel.text = "restart"
                }
            else if iphoneImageView.image == UIImage(named: "down"),playerImageView.image == UIImage(named: "playerLeft"){
                        resultLabel.text = "restart"
                        }
            else if iphoneImageView.image == UIImage(named: "down"),playerImageView.image == UIImage(named: "playerRight"){
                                resultLabel.text = "restart"}
            else if iphoneImageView.image == UIImage(named: "left"),playerImageView.image == UIImage(named: "playerLeft"){
                resultLabel.text = "you lose" }
            else if iphoneImageView.image == UIImage(named: "left"),playerImageView.image == UIImage(named: "playerUp"){
                    resultLabel.text = "restart"
            }
            else if iphoneImageView.image == UIImage(named: "left"),playerImageView.image == UIImage(named: "playerDown"){
                    resultLabel.text = "restart"
                    
                }else if iphoneImageView.image == UIImage(named: "left"),playerImageView.image == UIImage(named: "playerRight"){
                            resultLabel.text = "restart"
                            
                        }
                else if iphoneImageView.image == UIImage(named: "right"),playerImageView.image == UIImage(named: "playerRight"){
                resultLabel.text = "you lose"
            }
                else if iphoneImageView.image == UIImage(named: "right"),playerImageView.image == UIImage(named: "playerUp"){
                    resultLabel.text = "restart"
            }
                else if iphoneImageView.image == UIImage(named: "right"),playerImageView.image == UIImage(named: "playerDown"){
                    resultLabel.text = "restart"
                    
                }
                else if iphoneImageView.image == UIImage(named: "right"),playerImageView.image == UIImage(named: "playerLeft"){
                            resultLabel.text = "restart" }
            }
    }
            
            func whoWin3(){
                if isIphoneWin == false{
                    if iphoneImageView.image == UIImage(named: "up"),playerImageView.image == UIImage(named: "playerUp"){
                        resultLabel.text = "you win"
                    }
                    else
                        if iphoneImageView.image == UIImage(named: "up"),playerImageView.image == UIImage(named: "playerDown"){
                            resultLabel.text = "restart"
                    }else
                        if iphoneImageView.image == UIImage(named: "up"),playerImageView.image == UIImage(named: "playerRight"){
                            resultLabel.text = "restart"
                            
                        }else
                                if iphoneImageView.image == UIImage(named: "up"),playerImageView.image == UIImage(named: "playerLeft"){
                                    resultLabel.text = "restart"
                    
                    }else
                        if iphoneImageView.image == UIImage(named: "down"),playerImageView.image == UIImage(named: "playerDown"){
                        resultLabel.text = "you win"
                    }else
                        if iphoneImageView.image == UIImage(named: "down"),playerImageView.image == UIImage(named: "playerUp"){
                            resultLabel.text = "restart"
                    }else
                        if iphoneImageView.image == UIImage(named: "down"),playerImageView.image == UIImage(named: "playerRight"){
                            resultLabel.text = "restart"
                            
                        }else if iphoneImageView.image == UIImage(named: "down"),playerImageView.image == UIImage(named: "playerLeft"){
                                    resultLabel.text = "restart"
                    }
                    else if iphoneImageView.image == UIImage(named: "left"),playerImageView.image == UIImage(named: "playerLeft"){
                        resultLabel.text = "you win"
                    }else
                        if iphoneImageView.image == UIImage(named: "left"),playerImageView.image == UIImage(named: "playerUp"){
                            resultLabel.text = "restart"
                    }else
                        if iphoneImageView.image == UIImage(named: "left"),playerImageView.image == UIImage(named: "playerRight"){
                            resultLabel.text = "restart"
                            
                        }else
                                if iphoneImageView.image == UIImage(named: "left"),playerImageView.image == UIImage(named: "playerDown"){
                                    resultLabel.text = "restart"
                    }else
                        if iphoneImageView.image == UIImage(named: "right"),playerImageView.image == UIImage(named: "playerRight"){
                        resultLabel.text = "you win"
                    }else
                        if iphoneImageView.image == UIImage(named: "right"),playerImageView.image == UIImage(named: "playerUp"){
                            resultLabel.text = "restart"
                    }else
                        if iphoneImageView.image == UIImage(named: "right"),playerImageView.image == UIImage(named: "playerLeft"){
                            resultLabel.text = "restart"
                            
                        }else
                                if iphoneImageView.image == UIImage(named: "right"),playerImageView.image == UIImage(named: "playerDown"){
                                    resultLabel.text = "restart"
                    }
                        
                }
            
            }
    
    
                    func whoWin(){
                    //平手,都出布
                    if iphoneImageView.image == UIImage(named: "papper"),playerImageView.image == UIImage(named: "playerPapper"){
                    resultLabel.text = "restart"
                    }
                    else if iphoneImageView.image == UIImage(named: "scissors"),playerImageView.image == UIImage(named: "playerScissors"){
                    resultLabel.text = "restart"
                    }
                    else if iphoneImageView.image == UIImage(named: "rock"),playerImageView.image == UIImage(named: "playerRock"){
                    resultLabel.text = "restart"
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
        
        // Do any additional setup after loading the view.
    
                    
            
                   
                    }
                    }
                    
