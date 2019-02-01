//
//  ViewController.swift
//  ios_actionsheet_example
//
//  Created by codexpedia on 1/31/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showActionSheet(_ sender: UIButton) {
        // Create UIAlertController and using the .actionSheet to make it an action sheet
        let actionSheet = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        // Create delete action
        let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: { (action) -> Void in
            print("Delete was tapped!")
        })
        
        // Create save action
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: handleSave)
        
        // Create cancel action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) -> Void in
            print("Cancel was tapped!")
        }
        
        // Add actions to the
        actionSheet.addAction(deleteAction)
        actionSheet.addAction(saveAction)
        actionSheet.addAction(cancelAction)
        
        // Present the action
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    private func handleSave(action: UIAlertAction) {
        print("Save was tapped!")
    }
}

