//
//  DetailViewController.swift
//  DoujanaApp
//
//  Created by epita on 29/02/2020.
//  Copyright © 2020 fr.epita.doujana.app. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var album: Album?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var recordtypLabel: UILabel!
    
    @IBOutlet weak var releasedatelabel: UILabel!
    
    @IBOutlet weak var tracklistLabel: UILabel!
    
    @IBOutlet weak var labelLabel: UILabel!

    @IBOutlet weak var posterImage: UIImageView!




    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func populateInfo(){
        guard let album = album else {
            
            return
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
