//
//  TemperatureRange.swift
//  UnitConvertorAbhi
//
//  Created by Kunal Dandona on 2019-04-13.
//  Copyright © 2019 Abhi. All rights reserved.
//

import UIKit; import Foundation

class TemperatureRange: NSObject, UIPickerViewDataSource {

    let values = (-100...100).map{ $0 }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }

        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
