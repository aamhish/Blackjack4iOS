//
//  Secondlolidk.swift
//  BlackjackReturns
//
//  Created by Aamhish Rao on 5/30/16.
//  Copyright © 2016 Aamhish Rao. All rights reserved.
//

import UIKit


class Secondlolidk: ViewController {
    
    @IBOutlet weak var lolman: UILabel!
    @IBOutlet weak var lolll: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("lolmanlol")
        
    }
    @IBAction func lolidklolmanhahastand(sender: AnyObject) {
        var botscore=0
      
        while(botscore<15){
            botscore+=Int(arc4random_uniform(10) + 2)
            
        }
       
        if(lolscore>21&&botscore>21){
            lolman.text="BUSTED both of you"
           // bruh.text="Restart?"
        }
        else if(lolscore>21){
            lolman.text = "You were busted Bot won: "+String(botscore)
        }
        else if(botscore>21){
            lolman.text = "Bot was busted You won! Bot score:"+String(botscore)
            
        }
        else if(lolscore==21){
            
            lolman.text="You won! Botscore:"+String(botscore)
           // bruh.text="Restart?"
        }
            
        else if(botscore==21){
            
            lolman.text="Bot won! Botscore: "+String(botscore)
           // bruh.text="Restart?"
        }
        else if(abs(21-lolscore)<abs(21-botscore)){
            lolman.text="You won! Botscore:"+String(botscore)
            
            
            
        }
        else if(abs(21-lolscore)>abs(21-botscore)){
            lolman.text=" Bot won Botscore"+String(botscore)
        }
        else{
            NSLog("lol....")
           lolman.text="tie Botscore:"+String(botscore)       }
        
    
    
        
    }
   
    @IBAction func lolidkyourdadlol(sender: AnyObject) {
        lolscore=0
        lolll.text=""
        lolman.text=""
        lolhahalol.image=UIImage(named:"backofcard")
    }
    @IBOutlet weak var lolhahalol: UIImageView!
 var lolscore = 0
    @IBAction func lolidklol(sender: AnyObject) {
       
        
        var drawloll = Int(arc4random_uniform(10) + 2)
        if(drawloll==11){
            drawloll=2
        }
        lolscore+=drawloll
        switch(drawloll){
        
        case 2:lolhahalol.image=UIImage(named:"2");lolll.text=String(lolscore);
        case 3:lolhahalol.image=UIImage(named:"card3");lolll.text=String(lolscore);
        case 4:lolhahalol.image=UIImage(named:"card4");lolll.text=String(lolscore);
        case 5:lolhahalol.image=UIImage(named:"card5");lolll.text=String(lolscore);
        case 6:lolhahalol.image=UIImage(named:"card6");lolll.text=String(lolscore);
        case 7:lolhahalol.image=UIImage(named:"card7");lolll.text=String(lolscore);
        case 8:lolhahalol.image=UIImage(named:"card8");lolll.text=String(lolscore);
        case 9:lolhahalol.image=UIImage(named:"card9");lolll.text=String(lolscore);
        case 10:lolhahalol.image=UIImage(named:"card10");lolll.text=String(lolscore);
        default:lolhahalol.image=UIImage(named:"backofcard")
        
        }
        if(lolscore==21){
            let alertController = UIAlertController(title: "Blackjack4iOS", message:
                "Blackjack", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        if(lolscore>21){
            
            let alertController = UIAlertController(title: "Blackjack4iOS", message:
                "Busted!", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Continue?", style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }

        

}
}