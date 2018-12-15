//
//  DetailViewController.swift
//  Flixter
//
//  Created by Jorge Alejandre on 11/19/18.
//  Copyright © 2018 Jorge Alejandre. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movie : Movie?
    
    func setViews(){
        if let movie = movie{
            backDropImageView.af_setImage(withURL: movie.backdropURL!)
            posterImageView.af_setImage(withURL: movie.posterURL!)
            titleLabel.text! = movie.title
            releaseDateLabel.text! = movie.releaseDate
            overviewLabel.text! = movie.overview
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViews()
        

        // Do any additional setup after loading the view.
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
