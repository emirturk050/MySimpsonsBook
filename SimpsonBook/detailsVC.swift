//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Emir Türk on 9.02.2023.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var JobLabel: UILabel!
    var selectedSimpson : info?
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        JobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
    }
    

   

}
