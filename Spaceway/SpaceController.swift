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
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func openPage(_ sender: Any) {
        SPACE_SCROLLVIEW_POS = scrollView.contentOffset
        let pageStoryboard = UIStoryboard(name: "Page", bundle: Bundle.main)
        let pageController = pageStoryboard.instantiateViewController(withIdentifier: "PageController")
        //        let modalStyle: UIModalTransitionStyle = UIModalTransitionStyle.CoverVertical
        //        pageController.modalTransitionStyle = modalStyle
        self.present(pageController, animated: true, completion: nil)
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
