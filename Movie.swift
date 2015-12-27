//
//  Movie.swift
//  favourite-movies
//
//  Created by Kath Faulkner on 24/12/2015.
//  Copyright © 2015 T3D. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {

    func setMovieImage(img: UIImage) {
        let movieImg = UIImagePNGRepresentation(img)
        self.image = movieImg
    }
    func getMovieImage() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
