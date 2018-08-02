//
//  ImageDetailViewController.swift
//  Demo
//
//  Created by pirnjai on 8/2/18.
//  Copyright © 2018 pirnjai. All rights reserved.
//

import UIKit

class ImageDetailViewController: UIViewController {

    @IBOutlet weak var fruityName: UILabel!
    var detail: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        fruityName.text = detail
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
