//
//  ViewController.swift
//  SpongeBob_Files
//
//  Created by Ivan Rao on 2/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    let home = ContextItem(name: "Home", image: UIImage(named: "pineapple_house")!, text:"SpongeBob lives in a pineapple under the sea. The address is 124 Conch Street, Bikini Bottom, Pacific Ocean."
    )
    
    let pet = ContextItem(name: "Pet", image: UIImage(named: "gary")!, text:"SpongeBob has a pet snail named Gary. Despite being a snail, Gary can only say \"meow\"."
    )
    
    let funFact = ContextItem(name:"Fun Fact", image: UIImage(named:"fun_fact")!, text:"According to Ms. Puff, SpongeBob has failed the driver license exam 1,258,056 times."
    )
    
    var contextItems : [ContextItem] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contextItems = [home, pet, funFact]
        
        for contextItem in contextItems {
                print(contextItem)
            }
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {
            if tappedView.tag == 0 {
                detailViewController.contextItem = contextItems[0]
            } else if tappedView.tag == 1 {
                detailViewController.contextItem = contextItems[1]
            } else if tappedView.tag == 2 {
                detailViewController.contextItem = contextItems[2]
            } else {
                print("please check your selection.")
            }
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
