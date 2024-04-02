//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Henry Lazo on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // MARK: -Configure text
        textView.text = post.caption.trimHTMLTags()
        
        // MARK: -Configure image
        if post.photos.first != nil {
            guard let url = post.photos.first?.originalSize.url else { return}
            Nuke.loadImage(with: url, into: imageView)
        }
        
        navigationItem.largeTitleDisplayMode = .never
         
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
