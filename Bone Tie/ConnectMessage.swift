//
//  SendMessage.swift
//  Bone Tie
//
//  Created by iD Student on 7/15/15.
//  Copyright (c) 2015 iD Student. All rights reserved.
//

import Foundation
import MessageUI
import UIKit
let textMessageRecipients = ["1-914-216-3053"]
class MessageConnect: NSObject, MFMessageComposeViewControllerDelegate {
    
    // A wrapper function to indicate whether or not a text message can be sent from the user's device
    func canSendText() -> Bool {
        return MFMessageComposeViewController.canSendText()
    }
    

    func configuredMessageComposeViewController() -> MFMessageComposeViewController {
        let messageComposeVC = MFMessageComposeViewController()
        messageComposeVC.messageComposeDelegate = self
        messageComposeVC.recipients = textMessageRecipients
        messageComposeVC.body = "00000000"
        return messageComposeVC
    }
    

    func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult) {
        controller.dismissViewControllerAnimated(true, completion: nil)
    }
}
class SendMessage1: UIViewController {
    @IBAction func Connect(sender: AnyObject) {
        //self.DogNameT.text = Dogg.text
        let messageComposer = MessageConnect()
        // Make sure the device can send text messages
        if (MessageConnect().canSendText()) {
            let messageComposeVC = MessageConnect().configuredMessageComposeViewController()
            
        } else {
            // Let the user know if his/her device isn't able to send text messages
            let errorAlert = UIAlertView(title: "Cannot Send Text Message", message: "Your device is not able to send text messages.", delegate: self, cancelButtonTitle: "OK")
            errorAlert.show()
        }
    }
}
