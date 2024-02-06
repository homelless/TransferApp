//
//  ViewController.swift
//  TransferApp
//
//  Created by MacBookAir on 3.02.24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
     @IBOutlet var dataLabel: UILabel!
    // ...

    @IBAction func editDataWithProperty(_ sender: UIButton) {
    // получаем вью контроллер, в который происходит переход
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let editScreen = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
    // передаем данные
    editScreen.updatingData = dataLabel.text ?? ""
        
    // переходим к следующему экрану
    self.navigationController?.pushViewController(editScreen, animated: true)
        
    }
    
    var updatedData: String = "Test data"
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabel(withText: updatedData)
    }
    
        // обновляем данные в текстовой метке
    private func updateLabel(withText text: String) {
        dataLabel.text = updatedData
    }
}
