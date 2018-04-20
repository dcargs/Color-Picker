//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Devin Cargill on 4/20/18.
//  Copyright © 2018 Devin Cargill. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var colorPicker: UIPickerView!
    let initialIndex = 0
    let colorsArray: [Color] = [Color(colorLabel: "Red", uiColor: UIColor.red),
                                Color(colorLabel: "Orange", uiColor: UIColor.orange),
                                Color(colorLabel: "Yellow", uiColor: UIColor.yellow),
                                Color(colorLabel: "Green", uiColor: UIColor.green),
                                Color(colorLabel: "Blue", uiColor: UIColor.blue),
                                Color(colorLabel: "Purple", uiColor: UIColor.purple)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //return colorsArray.count
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorsArray[row].colorLabel
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colorsArray[row].colorLabel
        self.view.backgroundColor = colorsArray[row].uiColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = colorsArray[initialIndex].colorLabel
        self.view.backgroundColor = colorsArray[initialIndex].uiColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
