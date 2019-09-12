//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by Yasuaki Osada on 2019/09/10.
//  Copyright © 2019 Yasuaki Osada. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var kakudaiView: UIImageView!
    
    var image: UIImage!
    
    var Image = UIImage()
    
            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        kakudaiView.image = image
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
