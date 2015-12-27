//
//  CreateMovieVC.swift
//  favourite-movies
//
//  Created by Kath Faulkner on 27/12/2015.
//  Copyright © 2015 T3D. All rights reserved.
//

import UIKit
import CoreData

class CreateMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieRating: UITextField!
    @IBOutlet weak var movieDesc: UITextView!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var addImageBtn: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImage.clipsToBounds = true
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        movieImage.image = image
        dismissViewControllerAnimated(true, completion: nil)
        addImageBtn.hidden = true
    }
    
    @IBAction func addImageBtn(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func addMovieBtn(sender: AnyObject) {
        if let title = movieTitle.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.setMovieImage(movieImage.image!)
            movie.movieTitle = title
            movie.movieRating = movieRating.text
            movie.movieDesc = movieDesc.text
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Error saving movie")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
        }
    }
    

}
