//
//  MovieCell.swift
//  favourite-movies
//
//  Created by Kath Faulkner on 24/12/2015.
//  Copyright © 2015 T3D. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        movieImg.clipsToBounds = true
    }
    
    func configureCell(movie: Movie) {
        movieImg.image = movie.getMovieImage()
        movieTitle.text = movie.movieTitle
        movieRating.text = movie.movieRating
        movieDesc.text = movie.movieDesc
    }

}
