//
//  ViewController.swift
//  TIVisionKit
//
//  Created by 房懷安 on 2020/6/15.
//  Copyright © 2020 房懷安. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var fetures : [NavigationIdentifier] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        fetures.append(NavigationIdentifier(Title: "Start Camera", SegueIdentifier: "moveToCameraSelectionViewSegue"))
        fetures.append(NavigationIdentifier(Title: "Image Processing", SegueIdentifier: "moveToImageProcessingViewSegue"))
        fetures.append(NavigationIdentifier(Title: "QR Code Tracking", SegueIdentifier: "moveToQRCodeTrackingViewSegue"))
        fetures.append(NavigationIdentifier(Title: "Face Tracking", SegueIdentifier: "moveToFaceTrackingViewSegue"))
        fetures.append(NavigationIdentifier(Title: "Core ML", SegueIdentifier: "moveToStillImageViewSegue"))
    }


}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let feature = self.fetures[ indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: FeatureViewCell.identifier ) as! FeatureViewCell
        
        cell.updateContent(title: feature.Title)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let feature = self.fetures[ indexPath.row]
        
        self.performSegue(withIdentifier: feature.SegueIdentifier, sender: self)
        
        
        
    }
    
}

