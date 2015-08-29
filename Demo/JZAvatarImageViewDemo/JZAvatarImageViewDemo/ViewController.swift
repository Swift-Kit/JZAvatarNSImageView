//
//  ViewController.swift
//  JZAvatarImageViewDemo
//
//  Created by Joey on 8/28/15.
//  Copyright (c) 2015 Joey. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var userImageView: JZAvatarNSImageView!
    @IBOutlet weak var wozImageView: JZAvatarNSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // default setting, draw it
        userImageView.redraw()
        
        wozImageView.borderColor = NSColor.orangeColor()
        wozImageView.borderWidth = 3.0
        wozImageView.redraw()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

