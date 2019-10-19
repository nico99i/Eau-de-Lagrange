//
//  AnimationHelper.swift
//  ImokProject
//
//  Created by Matteo Melloni on 11/04/16.
//  Copyright © 2016 Riccardo De Santi. All rights reserved.
//

import UIKit

struct AnimationHelper {
    
    // Non funziona bene (è molto lenta)
    static func imageWithCornerRadius(_ image: UIImage, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(image.size, false, 0.0)
        
        // Add a clip before drawing anything, in the shape of an rounded rect
        UIBezierPath(roundedRect: CGRect(origin: CGPoint.zero, size: size), cornerRadius: 40).addClip()
        // Draw your image
        image.draw(in: CGRect(origin: CGPoint.zero, size: size))
        
        // Get the image, here setting the UIImageView image
        return UIGraphicsGetImageFromCurrentImageContext()!
    }
    
    //optionView 0.5 e 0.6
    static func bumpAppearenceAnimation(_ view: UIView, duration: TimeInterval, usingSpringWithDamping dampingRatio: CGFloat, deltaSize: CGFloat) {
        view.alpha = 0
        view.transform = CGAffineTransform(scaleX: deltaSize, y: deltaSize)
        
        view.isHidden = false
        
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: dampingRatio, initialSpringVelocity: 1, options: [], animations: {
            view.transform = CGAffineTransform(scaleX: 1, y: 1);
            view.alpha = 1
            }, completion: nil)
    }
    
    static func zoomOutAnimation(_ view: UIView, duration: TimeInterval) {
        UIView.animate(withDuration: duration, animations:{
            view.alpha = 0
            view.transform = CGAffineTransform(scaleX: 1/2, y: 1/2)
        })
    }
    
    static func littleBumpAnimatation(_ view: UIView, duration: TimeInterval) {
        UIView.animate(withDuration: duration/3, animations: {
            view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        })
        UIView.animate(withDuration: duration, delay: duration/3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions(), animations: {
            view.transform = CGAffineTransform.identity
            }, completion: nil)
    }
    
    static func mediumBumpAnimatation(_ view: UIView, duration: TimeInterval) {
        UIView.animate(withDuration: duration/3, animations: {
            view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        })
        UIView.animate(withDuration: duration, delay: duration/3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions(), animations: {
            view.transform = CGAffineTransform(scaleX: 1.20, y: 1.20)
            }, completion: nil)
    }
    
    static func costumizedBumpAnimatation(_ view: UIView, duration: TimeInterval, deltaScale:CGFloat) {
        UIView.animate(withDuration: duration/3, animations: {
            view.transform = CGAffineTransform(scaleX: deltaScale, y: deltaScale)
        })
        UIView.animate(withDuration: duration, delay: duration/3, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions(), animations: {
            view.transform = CGAffineTransform.identity
            }, completion: nil)
    }
    
    static func delay(_ delay:Double, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
    
}
