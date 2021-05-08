//
//  AddViewController.swift
//  BookStore
//
//  Created by user192467 on 4/16/21.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var authorText: UITextField!
    @IBOutlet weak var pagesText: UITextField!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var switchOutlet: UISwitch!
    
    var book = Book()
    var delegate: BookStoreDelegate?
    var editBook = false
    
    @IBAction func saveBook(_ sender: UIButton) {
        book.title = titleText.text!
        book.author = authorText.text!
        book.description = descriptionText.text!
                
        if let text = pagesText.text, let pages = Int(text) {
            book.pages = pages
        }
                
        if switchOutlet.isOn {
            book.readThisBook = true
        } else {
            book.readThisBook = false
        }
        if editBook{
            delegate?.editBook(self, editBook: book)
        }else{
            delegate?.newBook(self, newBook: book)
        }
                

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        print(text)
        if text == "\n" {
            
            textView.resignFirstResponder()
            return false
        }else{
            return true
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleText.delegate = self
        authorText.delegate = self
        pagesText.delegate = self
        descriptionText.delegate = self
        
        // Do any additional setup after loading the view.
        if editBook{
            self.title = "Edit Book"
            titleText.text = book.title
            authorText.text = book.author
            pagesText.text = String(book.pages)
            descriptionText.text = book.description
            
            if book.readThisBook{
                switchOutlet.isOn = true
            }else{
                switchOutlet.isOn = false
            }
        }else{
            self.title = "Add Book"
        }
    }
}
