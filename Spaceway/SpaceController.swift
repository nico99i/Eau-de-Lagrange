//
//  SpaceController.swift
//  Spaceway
//
//  Created by Matteo Melloni on 19/10/2019.
//  Copyright © 2019 Matteo Melloni. All rights reserved.
//

import UIKit

class SpaceController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
//    @IBOutlet weak var buttonProva: UIButton!
    @IBOutlet weak var marteButton: UIButton!
    @IBOutlet weak var saturnoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.contentOffset = CGPoint(x: 1067, y: 1067)
//        self.scrollView.canCancelContentTouches = true
//        self.scrollView.delaysContentTouches = true
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        if (PAGE_ISOPEN) {
            scrollView.contentOffset = SPACE_SCROLLVIEW_POS
            PAGE_ISOPEN = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openPage(storyboardName: String, controllerName: String) {
        SPACE_SCROLLVIEW_POS = scrollView.contentOffset
        let pageStoryboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        let pageController = pageStoryboard.instantiateViewController(withIdentifier: controllerName)
        //        let modalStyle: UIModalTransitionStyle = UIModalTransitionStyle.CoverVertical
        //        pageController.modalTransitionStyle = modalStyle
        self.present(pageController, animated: true, completion: nil)
    }
    
    @IBAction func openService(_ sender: Any) {
        openPage(storyboardName: "Buttons", controllerName: "ServiceController")

    }
    
    @IBAction func openDetails(_ sender: Any) {
        openPage(storyboardName: "Deta", controllerName: "DetailsController")
    }
    
    @IBAction func openMarte(_ sender: Any) {
        AnimationHelper.littleBumpAnimatation(marteButton, duration: 0.3)
        self.openPage(storyboardName: "Pages", controllerName: "Page0Controller")
    }
    
    @IBAction func openSaturno(_ sender: Any) {
        AnimationHelper.littleBumpAnimatation(saturnoButton, duration: 0.3)
        self.openPage(storyboardName: "Pages", controllerName: "Page1Controller")
    }
    
    @IBAction func openTransneptunian(_ sender: Any) {
        self.openPage(storyboardName: "Transneptunian", controllerName: "RocceController")
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
