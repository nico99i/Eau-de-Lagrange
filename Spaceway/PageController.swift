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
    
    var planetTitleLabel = UILabel();
    var subtitleLabel = UILabel();
    var descriptionTextView = UITextView();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PAGE_ISOPEN = true
        
        // Adjust constraits buttons schede
        turismWidth.constant = actualScreenBounds.width / 2
        businessWidth.constant = actualScreenBounds.width / 2
        
        // Load image
        topImage.image = UIImage(named: "\(PLANET_NUM)")
        
        // Load contents
//        planetTitleLabel.frame = CGRect(x: 0, y: 260, width: actualScreenBounds.width, height: 60)
//        planetTitleLabel.font = UIFont(name: "Rubik-Bold", size: 22)
//        planetTitleLabel.textAlignment = .center
//        planetTitleLabel.text = PLANET_TITLES[PLANET_NUM]
//        print(PLANET_TITLES[PLANET_NUM])
//        contentView.addSubview(planetTitleLabel)
//        
//        subtitleLabel.frame = CGRect(x: 0, y: 330, width: actualScreenBounds.width, height: 60)
//        subtitleLabel.font = UIFont(name: "Rubik-Bold", size: 18)
//        subtitleLabel.text = SUBTITLES[PLANET_NUM]
//        contentView.addSubview(subtitleLabel)
//        
//        descriptionTextView.frame = CGRect(x: 0, y: 350, width: actualScreenBounds.width, height: 1000)
//        descriptionTextView.font = UIFont(name: "Rubik-Regular", size: 17)
//        descriptionTextView.text = DESCRIPTIONS[PLANET_NUM]
//        descriptionTextView.textColor = UIColor.black
//        descriptionTextView.translatesAutoresizingMaskIntoConstraints = true
////        descriptionTextView.sizeToFit()
//        descriptionTextView.isScrollEnabled = false
//        contentView.addSubview(descriptionTextView)
//        
////        let contentViewHeight = planetTitleLabel.frame.size.height + 10 + subtitleLabel.frame.size.height + 20 + descriptionTextView.contentSize.height + 30
//        contentView = UIView(frame: CGRect(x: 0, y: 0, width: actualScreenBounds.width, height: 2000))
//        
//        scrollView = UIScrollView(frame: CGRect(x: 0, y: 260, width: actualScreenBounds.width, height: actualScreenBounds.height - 260))
//        scrollView.bounds.size = CGSize(width: actualScreenBounds.width, height: scrollView.frame.size.height)
//        scrollView.contentSize = CGSize(width: actualScreenBounds.width, height: contentView.frame.height)
//        scrollView.contentOffset.y = contentView.frame.height - actualScreenBounds.height
//        scrollView.delegate = self
//        scrollView.addSubview(contentView)
//        self.view.addSubview(scrollView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closePage(_ sender: Any) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let spaceController = mainStoryboard.instantiateViewController(withIdentifier: "SpaceController")
        //        let modalStyle: UIModalTransitionStyle = UIModalTransitionStyle.CoverVertical
        //        pageController.modalTransitionStyle = modalStyle
        self.present(spaceController, animated: true, completion: nil)
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
