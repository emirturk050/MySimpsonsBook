//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Emir Türk on 9.02.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var mySimpsons = [info]()
    var choosenSimpson : info?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        // Simpsons Object
        
        let homer = info(nameInıt: "Homer Simpson", jobInıt: "Nucleer Safety", imageInıt: UIImage(named: "homer")!)
        let bart = info(nameInıt: "Bart Simpson", jobInıt: "Student", imageInıt: UIImage(named: "bart")!)
        let marge = info(nameInıt: "Marge Simpson", jobInıt: "House Wife", imageInıt: UIImage(named: "marge")!)
        let lisa = info(nameInıt: "Lisa Simpson", jobInıt: "Student", imageInıt: UIImage(named: "lisa")!)
        let maggie = info(nameInıt: "Maggie Simpson", jobInıt: "baby", imageInıt: UIImage(named: "maggie")!)
    
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(marge)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenSimpson = mySimpsons[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = choosenSimpson
        }
    }
    

}

