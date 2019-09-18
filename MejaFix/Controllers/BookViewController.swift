//
//  BookViewController.swift
//  MejaFix
//
//  Created by Mirza Fachreza 2 on 18/09/19.
//  Copyright © 2019 Mirza Fachreza. All rights reserved.
//

import UIKit

class BookViewController: UIViewController {

    var nomorMeja: Int = 0
    
    @IBOutlet var tombolMeja: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func mejaTapped(_ sender: UIButton) {
        
        nomorMeja = sender.tag
        
        print(nomorMeja)
        
        performSegue(withIdentifier: "popupSegue", sender: nil)
        
        
        
       
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "popupSegue"{
            let nav = self.storyboard?.instantiateViewController(withIdentifier: "PopUpVC") as! PopupViewController
            nav.modalTransitionStyle = .crossDissolve
            nav.modalPresentationStyle = .overCurrentContext
            
            
            
            self.present(nav, animated: true, completion:  nil)
            
            
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
