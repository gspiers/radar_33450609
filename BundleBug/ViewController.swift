//
//  ViewController.swift
//  BundleBug
//
//  Created by Greg Spiers on 21/07/2017.
//  Copyright © 2017 Greg Spiers. All rights reserved.
//

import UIKit
import Example

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let genericImageLoader = GenericImageLoader(aProperty: 1)
        if let image = genericImageLoader.imageFromBundle() {
            firstImageView.image = image
        } else {
            print("Generic class was unable to load an image from it's bundle. Falling back to image in App's main bundle")
            firstImageView.image = UIImage(named: "SampleImage")
        }
        
        let notGenericImageLoader = NotGenericImageLoader()
        secondImageView.image = notGenericImageLoader.imageFromBundle()
        
    }
}

