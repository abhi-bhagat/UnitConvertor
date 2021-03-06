//
//  ViewController.swift
//  UnitConvertorAbhi
//
//  Created by Kunal Dandona on 2019-04-13.
//  Copyright © 2019 Abhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate{

    


    @IBOutlet var temperatureRange: TemperatureRange!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var tempPicker: UIPickerView!
    
    let unitConverter = UnitConverter()
    let userDefaultsLastRowKey = "defaultCelciusPickerRow"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tempPicker.delegate = self;
        let defaultPickerRow = initialPickerRow()
        tempPicker.selectRow(defaultPickerRow, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentSwitch(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            tempLabel.text = "Celcius"
        case 1:
            tempLabel.text = "Fahrenheit"
        default:
            break
        }
        self.tempPicker.reloadAllComponents()
    }
    
    
    func initialPickerRow() -> Int {
        if let savedRow = UserDefaults.standard.object(forKey: userDefaultsLastRowKey) as? Int{
            return savedRow
        }
        return tempPicker.numberOfRows(inComponent: 0) / 2
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            return "\(temperatureRange.values[row])°C"
        case 1:
            return "\(temperatureRange.values[row])°F"
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            let celciusValue = temperatureRange.values[row]
            tempLabel.text = "\(unitConverter.degreeFahrenheit(degreeCelcius: celciusValue))°F"
        case 1:
            let fahrenheitValue = temperatureRange.values[row]
            tempLabel.text = "\(unitConverter.degreeCelcius(degreeFahrenheit: fahrenheitValue))°C"
        default:
            break
        }
    }
}

