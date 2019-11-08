//
//  ViewController.swift
//  FourSquare
//
//  Created by Pursuit on 11/8/19.
//  Copyright © 2019 Neema Philippe. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    
    lazy var venueSearchBar: UISearchBar = {
        let vs = UISearchBar()
        vs.backgroundColor = .lightGray
        return vs
    }()
    
    lazy var citySearchBar: UISearchBar = {
        let cs = UISearchBar()
        cs.backgroundColor = .lightGray
        return cs
        
    }()
    
    private func addViews(){
        view.addSubview(venueSearchBar)
        view.addSubview(citySearchBar)
    }
    
    private func constrainVenueSB(){
        venueSearchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            venueSearchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            venueSearchBar.heightAnchor.constraint(equalToConstant: 200),
            venueSearchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            venueSearchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    
    private func constrainCitySB(){
        citySearchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            citySearchBar.topAnchor.constraint(equalTo: venueSearchBar.bottomAnchor, constant: 10),
            citySearchBar.heightAnchor.constraint(equalToConstant: 200),
            citySearchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            citySearchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private func loadConstraints(){
        constrainVenueSB()
        constrainCitySB()
    }
    
    private func setUpDelegates(){
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpDelegates()
        addViews()
        loadConstraints()
        
    }
    
    
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        <#code#>
    }
    
    
}
