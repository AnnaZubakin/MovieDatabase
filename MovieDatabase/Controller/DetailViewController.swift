//
//  ViewController.swift
//  MovieDatabase
//
//  Created by anna.zubakina on 23/11/2023.
//

import UIKit
import SDWebImage

class DetailViewController: UIViewController {

  /*  @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var contentMovie: UILabel!
    @IBOutlet weak var releaseMovie: UILabel!
    @IBOutlet weak var infoMoview: UILabel! */
    
    
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var contentMovie: UILabel!
    @IBOutlet weak var releaseMovie: UILabel!
    @IBOutlet weak var infoMovie: UILabel!
    
    var movies: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movies {
            
         
            titleMovie.text = movie.title
            contentMovie.text = Constants.Icon.overview + (movie.overview != "" ? movie.overview! : "Plot unknown")
            releaseMovie.text = Constants.Icon.releaseDate + movie.releaseDate!
            posterImage.sd_setImage(with: URL(string: Constants.API.posterUrl.appending(movie.posterPath ?? "")))
            
           
            infoMovie.text = "Original Title: \(movie.originalTitle ?? "")\n" +
                         //    "Budget: \(movie.budget ?? 0)\n" +
                        //     "Genres: \(movie.genres?.compactMap { $0.name }.joined(separator: ", ") ?? "")\n" +
                             "Popularity: \(movie.popularity ?? 0.0)"
                        
            
           // infoMovie.text = "Original Title: \(movie.originalTitle ?? "")\n"
            // Do any additional setup after loading the view.
        }
    }

}
