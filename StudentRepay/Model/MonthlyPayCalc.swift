//
//  MonthlyPayCalc.swift
//  StudentRepay
//
//  Created by Liam Bradbury on 25/01/2021.
//

import Foundation


struct CalcMonthly{
//    var isPost : Bool
//    var isUnder : Bool
//    var amount : Int
    func calc(salary : Int, isPost : Bool, isUnder : Bool) -> Double {
        if salary <= 21000 {
            return 0.00
        } else if salary > 26575 && isUnder && isPost {
            let placeholderU = Double((salary - 26575) / 12)
            let placeholderP = Double((salary - 21000) / 12)
            let post = Double(placeholderP * 0.06)
            let under = Double(placeholderU * 0.09)
            return Double(post + under)
        } else if salary > 26575 && isUnder && !isPost{
            let placeholderU = Double((salary - 26575) / 12)
            let under = Double(placeholderU * 0.09)
            return Double(under)
        } else if salary > 21000 && isPost && !isUnder {
            let placeholderP = Double((salary - 21000) / 12)
            let post = Double(placeholderP * 0.06)
            return Double(post)
        }
        return 0.00
    }
    
}
