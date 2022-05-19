//
//  IntroViewController.swift
//  Gushi
//
//  Created by CNTT on 5/12/22.
//  Copyright © 2022 fit.tdc. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet weak var btnDangNhap: UIButton!
    @IBOutlet weak var btnDangKy: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        btnDangNhap.roundCornerView(corners: [.topLeft,.bottomLeft], radius: 15)
    
        btnDangKy.roundCornerView(corners: [.topRight,.bottomRight], radius: 15)
        
        // Do any additional setup after loading the view.
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
extension UIView{
    func roundCornerView(corners:UIRectCorner, radius:CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: .init(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}
