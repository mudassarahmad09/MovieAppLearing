//
//  ViewController.swift
//  MovieApp
//
//  Created by Mudassar Ahmad on 08/12/2022.
//

import UIKit

class DetailVC: UIViewController {

    let movieDetailView = MoiveDetailUI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieDetailView.layout(in: self)
    }

}
