//
//  JZAvatarNSImageView.swift
//
//  Created by Joey Zhou on 8/28/15.
//  Copyright (c) 2015 Joey Zhou. All rights reserved.
//

import Cocoa
import AppKit

class JZAvatarNSImageView: NSImageView {
    
    var cornerRadius: CGFloat = 0.0
    var borderWidth: CGFloat = 1.0
    var borderColor: NSColor
    
    override init(frame frameRect: NSRect) {
        borderColor = NSColor.grayColor()
        super.init(frame: frameRect)
        cornerRadius = frame.height/2.0
    }
    
    required init?(coder: NSCoder) {
        borderWidth = 1.0;
        borderColor = NSColor.grayColor()
        super.init(coder: coder)
        cornerRadius = frame.height/2.0
        
    }
    
    convenience init?(f: NSRect, bc: NSColor, bw: CGFloat) {
        self.init(frame: f)
        borderColor = bc
        borderWidth = bw
        redraw()
    }
    
    convenience init?(f: NSRect, i: NSImage, bc: NSColor, bw: CGFloat) {
        self.init(frame: f)
        borderColor = bc
        borderWidth = bw
        image = i
        redraw()
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
    }
    
    func redraw() {
        if (frame.width != frame.height) {
            self.print("Warning: Height and Width should be the same for image view");
        }
        
        self.wantsLayer = true
        layer?.borderWidth = borderWidth
        layer?.borderColor = borderColor.CGColor
        layer?.cornerRadius = cornerRadius
        
    }
    
}