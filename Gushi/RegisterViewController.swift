//
//  RegisterViewController.swift
//  Gushi
//
//  Created by CNTT on 5/20/22.
//  Copyright © 2022 fit.tdc. All rights reserved.
//

import UIKit
import CoreData

class RegisterViewController: UIViewController {

    @IBOutlet weak var txtTaiKhoan: UITextField!
    @IBOutlet weak var txtMatKhau: UITextField!
    @IBOutlet weak var txtNhapLaiMatKhau: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterCancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnDangKy(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "User"
            , in: context)
        
        let newUser = NSManagedObject.init(entity: entity!, insertInto: context)
        
        newUser.setValue(txtTaiKhoan.text,forKey: "tenDangNhap")
        newUser.setValue(txtMatKhau.text,forKey: "matKhau")
        newUser.setValue(txtNhapLaiMatKhau.text,forKey: "nhapLaiMatKhau")
        
        do{
            try context.save()
        }
        catch{
            print("Khong the them ng dung")
        }

    }
    
    func getData(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let fetch = NSFetchRequest<NSFetchRequestResult>.init(entityName: "User")
        
        do
        {
            let result = try context.fetch(fetch)
            for data in result as! [NSManagedObject]{
                let name = data.value(forKey: "tenDangNhap") as! String
                let password = data.value(forKey: "matKhau") as! String
                let repassword = data.value(forKey: "nhapLaiMatKhau") as! String
                print("Data : \(name) \(password) \(repassword)")
            }
        }
        catch{
            print("Khong the doc du lieu")
        }

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
