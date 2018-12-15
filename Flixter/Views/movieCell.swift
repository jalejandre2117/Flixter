//
//  movieCell.swift
//  Flixter
//
//  Created by Jorge Alejandre on 11/17/18.
//  Copyright © 2018 Jorge Alejandre. All rights reserved.
//

import UIKit
import AlamofireImage

class movieCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    var movie: Movie!
    
    /*var movieone = "Venom" {
        willSet(movieone) {
            print("About to set movie to \(movieone)")
    }
        didSet {
            print("Movie just changed from \(oldValue) to \(movieone)")
    }
    }
*/
    func setViews(){
        posterImageView.af_setImage(withURL: movie.posterURL!)
        titleLabel.text = movie.title
        overviewLabel.text = movie.overview
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
