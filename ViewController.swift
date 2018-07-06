//
//  ViewController.swift
//  BlackjackReturns
//
//  Created by Aamhish Rao on 5/12/16.
//  Copyright © 2016 Aamhish Rao. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
  
    var count = 0
    var p1score = 0
    var p2score = 0
    var lolllidklollll = true
    var chooser = "p1"
    
    
    var backgroundMusicPlayer = AVAudioPlayer()
    
    func playBackgroundMusic(filename: String) {
        let url = NSBundle.mainBundle().URLForResource(filename, withExtension: nil)
        guard let newURL = url else {
            print("Could not find file: \(filename)")
            return
        }
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOfURL: newURL)
            backgroundMusicPlayer.numberOfLoops = -1
            backgroundMusicPlayer.prepareToPlay()
            backgroundMusicPlayer.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
    @IBAction func clearbuttonlolidk(sender: AnyObject) {
        yourmomsbuttonbro.text=""
        if(chooser.containsString("p1")){
            lolllidk.text="Player 2 come on up!";
            imageloll.image=UIImage(named:"backofcard")
            NSLog("Attempting Switch")
            chooser = "p2"
        }
        else{
            
            if(p1score>21&&p2score>21){
                lolllidk.text="BUSTED both of you"
                bruh.text="Restart?"
            }
            else if(p1score>21){
                lolllidk.text = "P1 busted. P2 won"
            }
            else if(p2score>21){
                lolllidk.text = "P2 busted. P1 won"

            }
            else if(p1score==21){
                
                lolllidk.text="Player1 WON!!!!!"
                bruh.text="Restart?"
            }
   
            else if(p2score==21){
                
                lolllidk.text="Player2 WON!!!!!"
                bruh.text="Restart?"
            }
            else if(abs(21-p1score)<abs(21-p2score)){
                lolllidk.text="Player1 WON!!!!!"

                
            
            }
            else if(abs(21-p1score)>abs(21-p2score)){
                lolllidk.text="Player 2 won"
            }
            else{
                NSLog("lol....")
                lolllidk.text="Haha lol"
            }
            
            
            
        }

    }
 
    @IBOutlet weak var yourmomsbuttonbro: UILabel!
    @IBAction func lolidklol11(sender: AnyObject) {
        if(chooser.containsString("p1")){
            p1score-=11
            p1score+=11
            lolllidk.text=" Total score right now \(p1score)"
        }
        else{
            p2score-=11
            p2score+=11
            lolllidk.text=" Total score right now \(p2score)"
        }
        yourmom11.text=""
        yourdad1.text=""
    }
 
    @IBOutlet weak var yourdad1: UILabel!
    @IBOutlet weak var yourmom11: UILabel!
    
    @IBAction func lolidklo1(sender: AnyObject) {
        if(chooser.containsString("p1")){
            p1score-=11
            p1score+=1
            lolllidk.text=" Total score right now \(p1score)"
            yourmom11.text=""
            yourdad1.text=""

        }
        else{
            p2score-=11
            p2score+=1
            lolllidk.text=" Total score right now \(p2score)"
            yourmom11.text=""
            yourdad1.text=""
        }
       

    }
    func lolidktheoriginal(){
        yourmom11.text="11"
        yourdad1.text="1"
        
    }
    

           @IBOutlet weak var bruh: UILabel!
    @IBOutlet weak var imageloll: UIImageView!
    //@IBOutlet weak var label: UILabel!
    @IBAction func lollmanloll(sender: AnyObject) {
        p1score=0
        p2score=0
        chooser = "p1"
        yourmomsbuttonbro.text=""
        

        imageloll.image=UIImage(named:"backofcard")

        
        lolllidk.text="Welcome to BasicBlackjack. Lets start with Player 1! Stand or hit?"
    }
    
   
    //@IBOutlet weak var lolllidk: UITextView!
    @IBOutlet weak var lolllidk: UITextView!
    @IBOutlet weak var testbutton: UIButton!
    override func viewDidLoad() {
        NSLog("hmm...")
        super.viewDidLoad()
        
        playBackgroundMusic("/Users/aamhishrao/Downloads/bgoundmusic.mp3")
  
                
    }
    
       @IBAction func lolzpass(sender: AnyObject) {
        lolidklolidkmanpass()
       
    }
    func lolidklolidkmanpass(){
        yourmomsbuttonbro.text="Switch?"
        
    }
    
    
    @IBAction func clickButton(sender: AnyObject) {
        var drawloll = Int(arc4random_uniform(10) + 2)
        
        
        if(chooser.containsString("p1")){
        
            p1score+=drawloll
            lolllidk.text="You drew a \(drawloll) Total score right now \(p1score)"
            switch(drawloll){
            case 11:imageloll.image=UIImage(named:"ace");lolidktheoriginal();if(p1score>21){lolidklolidkmanpass()};
            case 2:imageloll.image=UIImage(named:"2");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score) P2Turn";}
            case 3:imageloll.image=UIImage(named:"card3");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score) P2Turn"}
            case 4:imageloll.image=UIImage(named:"card4");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score) P2Turn"}
            case 5:imageloll.image=UIImage(named:"card5");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score) P2Turn"}
            case 6:imageloll.image=UIImage(named:"card6");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score)  P2Turn"}
            case 7:imageloll.image=UIImage(named:"card7");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score) P2Turn"}
            case 8:imageloll.image=UIImage(named:"card8");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score) P2Turn"}
            case 9:imageloll.image=UIImage(named:"card9");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score)P2Turn"}
            case 10:imageloll.image=UIImage(named:"card10");if(p1score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score) P2Turn"};
            default:imageloll.image=UIImage(named:"backofcard")
            
            if(p1score==21){
              
                    lolllidk.text="Player 2 come on up!";
                    imageloll.image=UIImage(named:"backofcard")
                    NSLog("Attempting Switch")
                    chooser = "p2"
               
                if(p1score>21&&p2score>21){
                    lolllidk.text="BUSTED both of you"
                    bruh.text="Restart?"
                }
                else if(p1score>21){
                    lolllidk.text = "P1 busted. P2 won"
                }
                else if(p2score>21){
                    lolllidk.text = "P2 busted. P1 won"
                    
                }
                else if(p1score==21){
                    
                    lolllidk.text="Player1 WON!!!!!"
                    bruh.text="Restart?"
                }
                    
                else if(p2score==21){
                    
                    lolllidk.text="Player2 WON!!!!!"
                    bruh.text="Restart?"
                }
                else if(abs(21-p1score)<abs(21-p2score)){
                    lolllidk.text="Player1 WON!!!!!"
                    
                    
                    
                }
                else if(abs(21-p1score)>abs(21-p2score)){
                    lolllidk.text="Player 2 won"
                }
                else{
                    NSLog("lol....")
                    lolllidk.text="tie"
                }
                
            }
            //if(drawloll==1){
              //  NSLog("lollll1")
                
            //}
            }
        }
        else
        {
            NSLog("Successful Switch")
        p2score+=drawloll
                        lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"
            lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"
            
            switch(drawloll){
            case 11:imageloll.image=UIImage(named:"ace");lolidktheoriginal()

            case 2:imageloll.image=UIImage(named:"2");if(p2score>=21){lolidklolidkmanpass()};lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"
            case 3:imageloll.image=UIImage(named:"card3");if(p2score>=21){lolidklolidkmanpass()};lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"
            case 4:imageloll.image=UIImage(named:"card4");if(p2score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"}
            case 5:imageloll.image=UIImage(named:"card5");if(p2score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"}
            case 6:imageloll.image=UIImage(named:"card6");if(p2score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"}
            case 7:imageloll.image=UIImage(named:"card7");if(p2score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"}
            case 8:imageloll.image=UIImage(named:"card8");if(p2score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"}
            case 9:imageloll.image=UIImage(named:"card9");if(p2score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p2score)"}
            case 10:imageloll.image=UIImage(named:"card10");if(p2score>=21){lolidklolidkmanpass();lolllidk.text="You drew a \(drawloll) Total score right now \(p1score)"};
            default:imageloll.image=UIImage(named:"backofcard")
                
            }
            
            

            
        }
        
        
        
        
        
        }
    
        
        
       // count+=1
      //  NSLog(String(count))
     //   label.text=String(count)
        
    

    
}






