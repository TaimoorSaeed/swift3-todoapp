//
//  AddTaskViewController.swift
//  CoreTodo
//
//  Created by Nano Degree on 01/12/2016.
//  Copyright © 2016 Nano Degree. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var textFeild: UITextField!

    @IBOutlet weak var isImp: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    @IBAction func btnTapped(_ sender: AnyObject) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = textFeild.text!
        task.isImportant = isImp.isOn
        
        //save the data in core data
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController?.popViewController(animated: true)
    }
}
