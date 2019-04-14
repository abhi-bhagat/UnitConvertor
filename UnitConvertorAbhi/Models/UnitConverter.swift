//
//  UnitConverter.swift
//  UnitConvertorAbhi
//
//  Created by Kunal Dandona on 2019-04-13.
//  Copyright © 2019 Abhi. All rights reserved.
//

import Foundation

class UnitConverter{
    func degreeFahrenheit(degreeCelcius: Int) -> Int {
        return Int(1.8 * Float(degreeCelcius) + 32.0)
    }
    
    func degreeCelcius(degreeFahrenheit: Int) -> Int{
        return Int((Float(degreeFahrenheit) - 32) * 5 / 9)
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


