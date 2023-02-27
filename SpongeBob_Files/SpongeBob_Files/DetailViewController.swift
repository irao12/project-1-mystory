//
//  DetailViewController.swift
//  SpongeBob_Files
//
//  Created by Ivan Rao on 2/26/23.
//

import UIKit

class DetailViewController: UIViewController {

    var contextItem: ContextItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contextItem = contextItem {
            print(contextItem.name)
        }
        print("hi")
        // Do any additional setup after loading the view.
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
