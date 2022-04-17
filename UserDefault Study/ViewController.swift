//
//  ViewController.swift
//  UserDefault Study
//
//  Created by Ömer Faruk Kılıçaslan on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldSifre: UITextField!
    @IBOutlet weak var textFieldKullaniciAdi: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        let s = d.string(forKey: "sifre") ?? "bos"
        
        if ka != "bos" && s != "bos" {
            
            performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
            
        }

    }

    @IBAction func girisYap(_ sender: Any) {
        if let ka = textFieldKullaniciAdi.text , let s = textFieldSifre.text{
            
            if ka == "admin" && s == "123456" {
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey: "sifre")
                
                performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
            }
            else{
                print("hatalı giriş")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
}

