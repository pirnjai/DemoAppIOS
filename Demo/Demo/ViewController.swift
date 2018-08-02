//
//  ViewController.swift
//  Demo
//
//  Created by pirnjai on 8/2/18.
//  Copyright © 2018 pirnjai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let fruity:[String] = ["Antoine  Griezmann",
                            "Cristiano  Ronaldo",
                            "Lionel  Messi",
                            "Andres  Iniesta",
                            "Luka  Modric",
                            "Toni  Kroos",
                            "Leonardo  Bonucci",
                            "Gerard  Pique",
                            "Jerome  Boateng",
                            "Sergio  Ramos",
                            "Gianluigi  Buffon"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailFruity" {
            if let vc = segue.destination as? ImageDetailViewController {
                let fruityName = sender as! String
                vc.detail = fruityName
            }
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruity.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fruity cell", for: indexPath)
        cell.textLabel?.text = fruity[indexPath.row]
//        let detailVC = ImageDetailViewController()
//        navigationController?.pushViewController(detailVC, animated: true)
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let displayFruity = fruity[indexPath.row]
        performSegue(withIdentifier: "DetailFruity", sender: displayFruity)
    }
}
