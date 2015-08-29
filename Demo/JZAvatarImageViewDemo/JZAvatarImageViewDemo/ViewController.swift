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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // default setting, draw it
        userImageView.redraw()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

