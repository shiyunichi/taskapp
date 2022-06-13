//
//  CategoryInputViewController.swift
//  taskapp
//
//  Created by Shunichi Nukaga on 2022/06/10.
//

import UIKit
import RealmSwift

class CategoryInputViewController: UIViewController {
    @IBOutlet weak var categoryTextField: UITextField!
    
    let realm = try! Realm()
    var category: Category!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
        
        categoryTextField.text = category?.category
        guard categoryTextField != nil else {return}
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        try! realm.write{
            self.category.category = self.categoryTextField.text!
            self.realm.add(self.category, update: .modified)
        
            }
        super.viewWillDisappear(animated)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
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
