//
//  SecondViewController.swift
//  TransferApp
//
//  Created by MacBookAir on 3.02.24.
//

import UIKit


protocol UpdatingDataController: class {
    var updatingData: String { get set }
}

class SecondViewController: UIViewController, UpdatingDataController {
    //...
    @IBOutlet var dataTextField: UITextField!
    //...
    
    var updatingData: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        updateTextFieldData(withText: updatingData)
    }
    
    //обновляем данные в текстовом поле
    private func updateTextFieldData(withText text: String) {
        dataTextField.text = text
    }
}

