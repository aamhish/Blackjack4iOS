import MultipeerConnectivity
import UIKit


class bro: UIViewController, MCSessionDelegate, MCBrowserViewControllerDelegate {
    
    @IBAction func lolidk(sender: AnyObject) {
        
        lolscore+=1
        lolll.text=String(lolscore)
        
        
    }
    @IBOutlet weak var lolll: UILabel!
    var browser : MCBrowserViewController!
    var assistant : MCAdvertiserAssistant!
    var session : MCSession!
    var peerID: MCPeerID!
    var lolscore = 0
    var p2score = 0
    @IBAction func buttonbro(sender: AnyObject) {
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
    @IBAction func checkforwinnerlol(sender: AnyObject) {
        imdone="done"
        if(!(p2score==0)){
            
            if(imdone.containsString("done")){
                if(lolscore>21&&p2score>21){
                    chatView.text="You lost! Both of you were busted"
                    //.text="Restart?"
                }
                else if(lolscore>21){
                    chatView.text = "You are busted "+lolname+" won"
                }
                else if(p2score>21){
                    chatView.text = "You won! "+lolname+" was busted"
                    
                }
                else if(lolscore==21){
                    
                    chatView.text="You won"
                    //.text="Restart?"
                }
                    
                else if(p2score==21){
                    
                    chatView.text=lolname+" won"
                    //.text="Restart?"
                }
                else if(abs(21-lolscore)<abs(21-p2score)){
                    chatView.text="You won"
                    
                    
                    
                }
                else if(abs(21-lolscore)>abs(21-p2score)){
                    chatView.text=lolname+" won"
                }
                else{
                    NSLog("tie")
                    chatView.text="tie"
                }

            }
            
        }
        
        if self.session.connectedPeers.count > 0 {
            if let msg = String(lolscore).dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false) {
                // 3
                do {
                    try self.session.sendData(msg, toPeers: self.session.connectedPeers, withMode: MCSessionSendDataMode.Unreliable)
                } catch let error as NSError {
                    let ac = UIAlertController(title: "Send error", message: error.localizedDescription, preferredStyle: .Alert)
                    ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                    presentViewController(ac, animated: true, completion: nil)
                }
            }
        }
       
        
        
        }
        
    
    @IBOutlet var messageField: UITextField!
   
    @IBOutlet var chatView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.peerID = MCPeerID(displayName: UIDevice.currentDevice().name)
        print( UIDevice.currentDevice().name )
        //self.session = MCSession(peer: peerID, securityIdentity: nil, encryptionPreference: .Required)
        self.session = MCSession(peer: self.peerID)
        self.session.delegate = self
        
        // create the browser viewcontroller with a unique service name
        self.browser = MCBrowserViewController(serviceType: "LCOC-Chat", session: self.session)
        self.browser.delegate = self
        
        // tell the assistant to start advertising our fabulous chat
        self.assistant = MCAdvertiserAssistant(serviceType:"LCOC-Chat", discoveryInfo:nil, session:self.session)
        self.assistant.start()
        
    }
    
    
    @IBOutlet weak var lolhahalol: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showBrowser(sender: UIButton) {
        self.presentViewController(self.browser, animated: true, completion: nil)
        
        chatView.text="CONNECTED AND READY. MAKE YOUR MOVE AND HIT THE DONE BUTTON WHEN READY"
    }
    
    @IBAction func sendChat(sender: UIButton) {
        if self.session.connectedPeers.count > 0 {
            if let msg = self.messageField.text!.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false) {
                // 3
                do {
                    try self.session.sendData(msg, toPeers: self.session.connectedPeers, withMode: MCSessionSendDataMode.Unreliable)
                } catch let error as NSError {
                    let ac = UIAlertController(title: "Send error", message: error.localizedDescription, preferredStyle: .Alert)
                    ac.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                    presentViewController(ac, animated: true, completion: nil)
                }
            }
        }
        //-----------------this might ne3ed to be UNCOMMENTED!!!
        //self.updateChat(self.messageField.text!, fromPeer: self.peerID)
        self.messageField.text = ""
    }
    var imdone = ""
    var lolname = ""
    func updateChat(text : String, fromPeer peerID: MCPeerID) {
        // Appends some text to the chat view
        print("Incoming msg: \(text)")
        p2score = Int(text)!;
        // If this peer ID is the local device's peer ID, then show the name
        // as "Me"
        var name : String
        switch peerID {
        case self.peerID:
            name = "Me"
        default:
            name = peerID.displayName
        }
        // Add the name to the message and display it
        let message = "\(name): \(text)\n"
        self.chatView.text = self.chatView.text + message
        if(imdone.containsString("done")){
        if(lolscore>21&&p2score>21){
            chatView.text="You lost! Both of you were busted"
            //.text="Restart?"
        }
        else if(lolscore>21){
            chatView.text = "You are busted "+name+" won"
        }
        else if(p2score>21){
            chatView.text = "You won! "+name+" was busted"
            
        }
        else if(lolscore==21){
            
            chatView.text="You won"
            //.text="Restart?"
        }
            
        else if(p2score==21){
            
            chatView.text=name+" won"
            //.text="Restart?"
        }
        else if(abs(21-lolscore)<abs(21-p2score)){
            chatView.text="You won"
            
            
            
        }
        else if(abs(21-lolscore)>abs(21-p2score)){
            chatView.text=name+" won"
        }
        else{
            NSLog("tie")
            chatView.text="tie"
        }
        }
        else{
            print("Incoming msg: \(text)")
            p2score = Int(text)!;
            chatView.text=name+" is Done!!"
            lolname = name
        }
        
    }
    
    @IBAction func lol(sender: AnyObject) {
        lolscore = 0
        p2score = 0
        lolll.text = "0"
        lolhahalol.image=UIImage(named:"backofcard")
        chatView.text=""
        imdone=""
        
        
        
        
        
        
    }
    func browserViewControllerDidFinish(browserViewController: MCBrowserViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    func browserViewControllerWasCancelled(browserViewController: MCBrowserViewController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    func browserViewController(browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool {
        return true
    }
    //---------------------------------------Session
    func session(session: MCSession, didReceiveData data: NSData, fromPeer peerID: MCPeerID) {
        // Called when a peer sends an NSData to us
        
        // This needs to run on the main queue
        dispatch_async(dispatch_get_main_queue()) {
            print("Incoming data:::")
            //let msg = NSString(data: data, encoding: NSUTF8StringEncoding)
            let msg = String(data: data, encoding: NSUTF8StringEncoding)!
            
            self.updateChat(msg, fromPeer: peerID)
        }
    }
    func session(session: MCSession, peer peerID: MCPeerID, didChangeState state: MCSessionState) {
        switch state {
        case MCSessionState.Connected:
            print("Connected: \(peerID.displayName)")
            
        case MCSessionState.Connecting:
            print("Connecting: \(peerID.displayName)")
            
        case MCSessionState.NotConnected:
            print("Not Connected: \(peerID.displayName)")
        }
    }
    // The following methods do nothing, but the MCSessionDelegate protocol
    // requires that we implement them.
    func session(session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, withProgress progress: NSProgress) {
    }
    func session(session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, atURL localURL: NSURL, withError error: NSError?) {
        
    }
    func session(session: MCSession, didReceiveStream stream: NSInputStream, withName streamName: String, fromPeer peerID: MCPeerID) {
        
    }}