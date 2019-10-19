//
//  PageController.swift
//  Spaceway
//
//  Created by Matteo Melloni on 19/10/2019.
//  Copyright © 2019 Matteo Melloni. All rights reserved.
//

import UIKit

class PageController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var turismButton: UIButton!
    @IBOutlet weak var businessButton: UIButton!
    @IBOutlet weak var turismWidth: NSLayoutConstraint!
    @IBOutlet weak var businessWidth: NSLayoutConstraint!
    var contentView = UIView()
    var scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView = UIView(frame: CGRect(x: 0, y: 0, width: actualScreenBounds.width, height: 3360))
        
        // Add things to content view
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 200, width: actualScreenBounds.width, height: actualScreenBounds.height - 200))
        scrollView.bounds.size = CGSize(width: actualScreenBounds.width, height: scrollView.frame.size.height)
        scrollView.contentSize = CGSize(width: actualScreenBounds.width, height: contentView.frame.height)
        scrollView.contentOffset.y = contentView.frame.height - actualScreenBounds.height
        scrollView.delegate = self
        scrollView.addSubview(contentView)
        self.view.addSubview(scrollView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
