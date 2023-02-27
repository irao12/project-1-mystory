//
//  DetailViewController.swift
//  SpongeBob_Files
//
//  Created by Ivan Rao on 2/26/23.
//

import UIKit

class DetailViewController: UIViewController {

    var contextItem: ContextItem?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var contextImage: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let contextItem = contextItem {
            nameLabel.text = contextItem.name
            contextImage.image = contextItem.image
            textLabel.text = contextItem.text
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

}
