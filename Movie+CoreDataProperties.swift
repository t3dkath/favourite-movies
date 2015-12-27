//
//  Movie+CoreDataProperties.swift
//  favourite-movies
//
//  Created by Kath Faulkner on 27/12/2015.
//  Copyright © 2015 T3D. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var movieTitle: String?
    @NSManaged var movieRating: String?
    @NSManaged var movieDesc: String?

}
