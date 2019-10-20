//
//  PlutoController.swift
//  Spaceway
//
//  Created by Matteo Melloni on 20/10/2019.
//  Copyright © 2019 Matteo Melloni. All rights reserved.
//

import UIKit

class PlutoController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openPage(storyboardName: String, controllerName: String) {
        let pageStoryboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)
        let pageController = pageStoryboard.instantiateViewController(withIdentifier: controllerName)
        //        let modalStyle: UIModalTransitionStyle = UIModalTransitionStyle.CoverVertical
        //        pageController.modalTransitionStyle = modalStyle
        self.present(pageController, animated: true, completion: nil)
    }
    
    @IBAction func close(_ sender: Any) {
        openPage(storyboardName: "Transneptunian", controllerName: "RocceController")
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
