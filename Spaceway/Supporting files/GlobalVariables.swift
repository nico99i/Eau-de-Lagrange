//
//  GlobalVariables.swift
//  Leaf
//
//  Created by Riccardo De Santi on 16/02/17.
//  Copyright © 2017 Leaf. All rights reserved.
//

import Foundation
import UIKit

let actualScreenBounds = UIScreen.main.bounds
var openingPageBFromA = false
var openingPageBFromTutorial = false
var openingPageBAfterAdding = false

@IBDesignable class TopAlignedLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func drawText(in rect: CGRect) {
        if let stringText = text {
            let stringTextAsNSString = stringText as NSString
            let labelStringSize = stringTextAsNSString.boundingRect(with: CGSize(width: self.frame.width,height: CGFloat.greatestFiniteMagnitude),
                                                                    options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                                                    attributes: [NSAttributedStringKey.font: font],
                                                                    context: nil).size
            super.drawText(in: CGRect(x:0,y: 0,width: self.frame.width, height:ceil(labelStringSize.height)))
        } else {
            super.drawText(in: rect)
        }
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
    }
    
}

@IBDesignable public class ProportionalSizeLabel: UILabel {
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        configureLabel()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configureLabel()
    }
    
    func configureLabel() {
        var valueFontSize: CGFloat = 48
        
        switch actualScreenBounds.height {
        case 568: //Iphone 5
            valueFontSize = 52
        case 667: //Iphone 6/7
            valueFontSize = 48
        case 736: //Iphone plus
            valueFontSize = 50
        default: break
        }
        
        self.font = UIFont(name: self.font.fontName, size: UIScreen.main.bounds.height/valueFontSize)
    }
    
}

@IBDesignable public class ProportionalSizeLabelOfB2: UILabel {
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        configureLabel()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configureLabel()
    }
    
    func configureLabel() {
        var valueFontSize: CGFloat = 30
        
        switch actualScreenBounds.height {
        case 568: //Iphone 5
            valueFontSize = 30
        case 667: //Iphone 6/7
            valueFontSize = 30
        case 736: //Iphone plus
            valueFontSize = 32
        default: break
        }
        
        self.font = UIFont(name: self.font.fontName, size: UIScreen.main.bounds.height/valueFontSize)
    }
    
}

@IBDesignable class ProportionalSizeTopAlignedLabel: TopAlignedLabel {
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        configureLabel()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configureLabel()
    }
    
    func configureLabel() {
        var valueFontSize: CGFloat = 48
        
        switch actualScreenBounds.height {
        case 568: //Iphone 5
            valueFontSize = 52
        case 667: //Iphone 6/7
            valueFontSize = 48
        case 736: //Iphone plus
            valueFontSize = 50
        default: break
        }
        
        self.font = UIFont(name: self.font.fontName, size: UIScreen.main.bounds.height/valueFontSize)
    }
    
}
