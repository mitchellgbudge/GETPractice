//
//  CharacterDetailViewController.swift
//  AmiiboInfo
//
//  Created by Mitchell Budge on 9/3/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import UIKit

class CharacterDetailViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var searchBar: UISearchBar!
    let apiController = APIController()
    var amiibo: Amiibo? {
        didSet {
           updateViews()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        apiController.fetchAmiibos { (_) in
            self.updateViews()
        }
    }
    
    func updateViews() {
        
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
