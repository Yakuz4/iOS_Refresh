//
//  DetailViewController.swift
//  Project1
//
//  Created by Nikita on 17.06.2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var picturesCount: Int?
    var pictureNumber: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let number = pictureNumber, let count = picturesCount {
            title = "Picture \(number) of \(count)"
        } else {
            title = selectedImage
        }
        
        navigationItem.largeTitleDisplayMode = .never
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
