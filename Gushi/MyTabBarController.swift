//
//  MyTabBarController.swift
//  Gushi
//
//  Created by CNTT on 5/14/22.
//  Copyright © 2022 fit.tdc. All rights reserved.
//

import UIKit

class MyTabBarController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

class HomeVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }
}
class FavoVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
    }
}
class NotifiVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}
