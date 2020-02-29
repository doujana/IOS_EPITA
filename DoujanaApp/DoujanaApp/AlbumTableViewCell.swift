//
//  AlbumTableViewCell.swift
//  DoujanaApp
//
//  Created by epita on 29/02/2020.
//  Copyright © 2020 fr.epita.doujana.app. All rights reserved.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    @IBOutlet weak var posterimageview: UIImageView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var recordtypelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        posterimageview.layer.cornerRadius = posterimageview.frame.height / 2
        posterimageview.clipsToBounds = true
    }

   
    func setImageFor(urlString: String) {
        let url = URL(string: urlString)
        let data = try? Data(contentsOf: url!)
        posterimageview.image = UIImage(data: data!)
    }
}
