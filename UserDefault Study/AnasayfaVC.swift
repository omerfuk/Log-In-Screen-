//
//  AnasayfaVC.swift
//  UserDefault Study
//
//  Created by Ömer Faruk Kılıçaslan on 17.04.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        labelSonuc.text = ka
    }
    @IBAction func cikisYap(_ sender: Any) {
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1)
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
