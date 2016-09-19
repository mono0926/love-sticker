//
//  MessagesViewController.swift
//  MessagesExtension
//
//  Created by mono on 9/19/16.
//  Copyright © 2016 mono. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    private let stickerViewController = StickerViewController(stickerSize: MSStickerSize.small)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stickerViewController.view.frame = self.view.frame
        self.addChildViewController(stickerViewController)
        stickerViewController.didMove(toParentViewController: self)
        self.view.addSubview(stickerViewController.view)
    }

}
