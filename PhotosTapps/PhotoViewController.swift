//
//  PhotoViewController.swift
//  PhotosTapps
//
//  Created by MacBook Pro on 2022-05-17.
//

import UIKit

class PhotoViewController: UIViewController {

    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
        
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _,_ in
            if bool {
                print("successful delivery")
            }
            
        }
        present(shareController, animated: true, completion: nil)
        
    }
}

