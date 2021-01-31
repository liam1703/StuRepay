//
//  ViewController.swift
//  StudentRepay
//
//  Created by Liam Bradbury on 22/01/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var salaryTextField: UITextField!
    @IBOutlet weak var undergradButton: UIButton!
    @IBOutlet weak var postgradButton: UIButton!
    @IBOutlet weak var calculateButton: UIButton!
    
    var isUndergrad = false
    var isPostgrad = false
    var salary = 0
    var totalRepay = 0.00
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func degreeSelection(_ sender: UIButton)
    {
        if sender.isSelected == true{
            sender.isSelected = false
            sender.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            if sender.currentTitle == "Undergrad" {
                isUndergrad = false
            } else if sender.currentTitle == "Postgrad" {
                isPostgrad = false
            }
            
        } else if sender.isSelected == false {
            sender.isSelected = true
            sender.backgroundColor = #colorLiteral(red: 0.3476296961, green: 0.7546870112, blue: 0.6883704066, alpha: 1)
            if sender.currentTitle == "Undergrad" {
                isUndergrad = true
            } else if sender.currentTitle == "Postgrad" {
                isPostgrad = true
                
            }
        }
        
    }
    

    @IBAction func calculatePressed(_ sender: Any)
    {
        
        let salAmount = salaryTextField.text!
        if salAmount != "" {
            let salAmountTotal = Int(salAmount)!
            let monthly = CalcMonthly()
            totalRepay = Double(monthly.calc(salary: salAmountTotal, isPost: isPostgrad, isUnder: isUndergrad))
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }

        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //because we could have multiple different screens which we might want to perform a check
            if (segue.identifier == "goToResult"){
                
                let resultsVC = segue.destination as! RepayView
                resultsVC.payment = String(format: "%.2f", self.totalRepay)
            }

    }
}
