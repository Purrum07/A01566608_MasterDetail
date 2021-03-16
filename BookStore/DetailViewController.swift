//
//  DetailViewController.swift
//  BookStore
//
//  Created by user192467 on 3/5/21.
//

import UIKit

class DetailViewController: UIViewController {
    // MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var yearLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let myBook = detailItem {
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            yearLabel.text = myBook.year
            descriptionTextView.text = myBook.description
        }
    }
    
    
    
    
    
    var detailItem : Book? {
        didSet {
            // Update the view.
        }
    }
    
    @IBAction func cancel(sender: AnyObject){
        dismiss(animated: false, completion: nil)
    }
}
