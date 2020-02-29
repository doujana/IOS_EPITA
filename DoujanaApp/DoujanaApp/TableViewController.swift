//
//  ViewController.swift
//  DoujanaApp
//
//  Created by epita on 28/02/2020.
//  Copyright © 2020 fr.epita.doujana.app. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var uitableview: UITableView!
    let apiservice = ApiService()
    var array: [Album]?
    var SelectedAlbum: Album?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uitableview.delegate = self
        uitableview.dataSource = self
        apiservice.fetchAlbums(completionHandler: reloadTable(albums: ))
    }
    
    func reloadTable(albums: [Album]) {
        array = albums
        DispatchQueue.main.async {
            self.uitableview.reloadData()
        }
    }
    
}



extension TableViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as? AlbumTableViewCell else {
            return UITableViewCell()
            
        }
        guard let album = array?[indexPath.row] else{
            return UITableViewCell()
        }
    
        cell.titlelabel.text = album.title
        cell.setImageFor(urlString: album.cover_medium)
        cell.recordtypelabel.text = album.record_type
        
        return cell
    
}
    }
    

extension TableViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        guard let array = array else {
            return indexPath
        }
        SelectedAlbum = array[indexPath.row]
        return indexPath
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }
    }
    

