//
//  PopupViewController.swift
//  MejaFix
//
//  Created by Mirza Fachreza 2 on 18/09/19.
//  Copyright © 2019 Mirza Fachreza. All rights reserved.
//

import UIKit
import LocalAuthentication

class PopupViewController: UIViewController {

    let mycontext: LAContext = LAContext()
    
    @IBOutlet weak var nomor: UILabel!
    @IBOutlet weak var bookBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBAction func bookPressed(_ sender: UIButton) {
        
        if mycontext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: nil){
            
            mycontext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Your Face ID") { (bener, error) in
                if bener{
                    print("Mantap")
                   
                    self.dismiss(animated: true, completion: nil)
                }
                else{
                    print("Salah")
                }
            }
        }
    }
    
    @IBAction func exitPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
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
