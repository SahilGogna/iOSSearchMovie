//
//  ViewController.swift
//  Favourite-Movie-App
//
//  Created by Sahil Gogna on 2019-02-04.
//  Copyright © 2019 Sahil Gogna. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var favouriteMovies:[Movie] = []
    @IBOutlet var mainTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movieCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        let idx:Int = indexPath.row
        
        movieCell.movieTitleLabel?.text = favouriteMovies[idx].title
        movieCell.movieDateLabel?.text = favouriteMovies[idx].year
        displayMovieImage(idx, movieCell: movieCell)
        return movieCell
    }
    
    func displayMovieImage(_ row:Int, movieCell:CustomTableViewCell){
        let url:String = (URL(string:favouriteMovies[row].imageUrl)?.absoluteString)!
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {(data, response, error) -> Void in
            if error != nil{
                print(error!)
                return
            }
            DispatchQueue.main.async (execute:{
                let image = UIImage(data: data!)
                movieCell.movieImageView.image = image
            })
        }).resume()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mainTableView.reloadData()
        if favouriteMovies.count == 0{
            favouriteMovies.append(Movie(id: "0011", title: "BatMan returns", year: "2005", imageUrl: "https://upload.wikimedia.org/wikipedia/en/8/83/Batman_returns_poster2.jpg"))
        }
        super.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

