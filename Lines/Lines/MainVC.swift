//
//  MainVC.swift
//  Lines
//
//  Created by Chris Humer on 7/24/16.
//  Copyright © 2016 Chris Humer. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MainVC: UIViewController {

    var resultSearchController:UISearchController? = nil

    
    @IBAction func restaurantsTapped(sender: UIButton) {
        
        let mapvc = MapVC()
        mapvc.locationManager
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = "Restaurants"
        search = true
        while(search){
            MKLocalSearch(request: request).start { (response, error) in
            print("a")
            guard error == nil else { return }
            guard let response = response else { return }
            guard response.mapItems.count > 0 else { return }

                    }
    }
    
    @IBAction func barsTapped(_ sender: UIButton) {
        let barsRequest = MKLocalSearchRequest()
        barsRequest.naturalLanguageQuery = "Bars"
    }
    
    @IBAction func shoppingTapped(_ sender: UIButton) {
        
        let request3 = MKLocalSearchRequest()
        request3.naturalLanguageQuery = "Shopping"
        
    }

    @IBAction func parkingTapped(_ sender: UIButton) {
        let request4 = MKLocalSearchRequest()
        request4.naturalLanguageQuery = "Parking"
       
    }
    
    @IBAction func gasTapped(_ sender: UIButton) {
        let request5 = MKLocalSearchRequest()
        request5.naturalLanguageQuery = "Gas"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
