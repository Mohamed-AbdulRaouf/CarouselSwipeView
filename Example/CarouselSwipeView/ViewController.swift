//
//  ViewController.swift
//  CarouselSwipeView
//
//  Created by mohamed.a.raouf@icloud.com on 11/02/2024.
//  Copyright (c) 2024 mohamed.a.raouf@icloud.com. All rights reserved.
//

import UIKit
import CarouselSwipeView
import Kingfisher

class ViewController: UIViewController, CarouselSwipeViewManagerDelegate {
    
    @IBOutlet weak var carouselView: CarouselSwipeViewManager!
    
    var titleArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pathArray = ["https://www.gettyimages.ca/gi-resources/images/Embed/new/embed2.jpg",
                         "https://ak.picdn.net/assets/cms/97e1dd3f8a3ecb81356fe754a1a113f31b6dbfd4-stock-photo-photo-of-a-common-kingfisher-alcedo-atthis-adult-male-perched-on-a-lichen-covered-branch-107647640.jpg",
                         "https://imgct2.aeplcdn.com/img/800x600/car-data/big/honda-amaze-image-12749.png",
                         "http://www.conversion-uplift.co.uk/wp-content/uploads/2016/09/Lamborghini-Huracan-Image-672x372.jpg",
                         "https://imgct2.aeplcdn.com/img/800x600/car-data/big/honda-amaze-image-12749.png"]
        titleArray = ["picture 1","picture 2","picture 3","picture 4","picture 5"]
        carouselView.delegate = self
        carouselView.setCarouselData(paths: pathArray,  describedTitle: [], isAutoScroll: true, timer: 2.5, defaultImage: "defaultImage", adsTextLabel: "ADS", orderNowTextButton: "ORDER NOW")
        //optional method
        carouselView.setCarouselOpaque(layer: false, describedTitle: true, pageIndicator: false)
        carouselView.setCarouselLayout(displayStyle: 0, pageIndicatorPositon: 3, pageIndicatorColor: .black, describedTitleColor: nil, layerColor: nil)

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    //require method
    func downloadImages(_ url: String, _ index:Int) {
        let imageView = UIImageView()
        imageView.kf.setImage(with: URL(string: url)!, placeholder: UIImage.init(named: "defaultImage"), options: [.transition(.fade(1))], progressBlock: nil, completionHandler: { (downloadImage, error, cacheType, url) in
            if downloadImage != nil {
                self.carouselView.images[index] = downloadImage!
            }
        })
        
    }
    
    //optional method (interaction for touch image)
    func didSelectCarouselView(_ view: CarouselSwipeViewManager ,_ index:Int) {
        
    }
    
    //optional method (show first image faster during downloading of all images)
    func callBackFirstDisplayView(_ imageView: UIImageView, _ url: [String], _ index: Int) {
        imageView.kf.setImage(with: URL(string: url[index]), placeholder: UIImage.init(named: "defaultImage"), options: [.transition(.fade(1))], progressBlock: nil, completionHandler: nil)
    }
    
    func startAutoScroll() {
        //optional method
        carouselView.startScrollImageView()
    }
    
    func stopAutoScroll() {
        //optional method
        carouselView.stopScrollImageView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func close() {
        debugPrint("close")
    }
    
    func navigateForAdvertisements(index: Int) {
        debugPrint("navigateForAdvertisements =>",index)
    }
    

}

