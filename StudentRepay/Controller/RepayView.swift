//
//  RepayView.swift
//  StudentRepay
//
//  Created by Liam Bradbury on 26/01/2021.
//

import UIKit

class RepayView: UIViewController {

    var payment : String = "0.00"
    
    @IBOutlet weak var monthlyPayment: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monthlyPayment.text = "£\(payment)"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func recalcPressed(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
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
