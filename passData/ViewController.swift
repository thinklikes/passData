//
//  ViewController.swift
//  passData
//
//  Created by Rhys.K on 2023/12/29.
//

import UIKit

class ViewController: UIViewController {
    var percent: Double = 0
    var timer: Timer?
    var sourceViewController: FirstViewController?
    
    @IBOutlet weak var myImage: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as! FirstViewController
        // Use data from the view controller which initiated the unwind segue
        if (sourceViewController.isFinished) {
            print("test")
            sourceViewController.isFinished = false
            let controller = SecondViewController()
            present(controller, animated: false)
        }

        print("first", sourceViewController.isFinished)
    }
    
}

