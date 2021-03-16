//
//  BookStore.swift
//  BookStore
//
//  Created by user192467 on 3/9/21.
//

import Foundation

class BookStore{
    var bookList: [Book] = []
    
    init(){
        var newBook = Book()
        newBook.title = "A Game of Thrones"
        newBook.author = "George R.R. Martin"
        newBook.year = "1996"
        newBook.description = """
        The first volume in Martin's first fantasy saga, A Song of Ice and Fire, combines intrigue, action, romance, and mystery in a family saga. The family is the Starks of Winterfell, a society in crisis due to climatic change that has created decades-long seasons, and a society almost without magic but with human perversity abundant and active.
        """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "A Clash of Kings"
        newBook.author = "George R.R. Martin"
        newBook.year = "1998"
        newBook.description = """
        THow does he do it? George R.R. Martin's high fantasy weaves a spell sufficient to seduce even those who vowed never to start a doorstopper fantasy series again (the first book--A Game of Thrones--runs over 700 pages). A Clash of Kings is longer and even more grim, but Martin continues to provide compelling characters in a vividly real world.
        """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Harry Potter and the Philosopher's Stone"
        newBook.author = "J. K. Rowling"
        newBook.year = "1997"
        newBook.description = """
        This is the tale of Harry Potter (Daniel Radcliffe), an ordinary eleven-year-old boy serving as a sort of slave for his aunt and uncle who learns that he is actually a wizard and has been invited to attend the Hogwarts School for Witchcraft and Wizardry. Harry is snatched away from his mundane existence by Rubeus Hagrid (Robbie Coltrane), the groundskeeper for Hogwarts, and quickly thrown into a world completely foreign to both him and the viewer. 
        """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "The Shack"
        newBook.author = "William P Young"
        newBook.year = "2007"
        newBook.description = """
        After the abduction and presumed death of Mackenzie Allen Phillips' youngest daughter, Missy, Mack receives a letter and suspects it is from God, asking him to return to The Shack where Missy may have been murdered. After contemplating it, he leaves his home to go to The Shack for the first time since Missy's abduction and an encounter that will change his life forever.
        """
        bookList.append(newBook)
        
        newBook = Book()
        newBook.title = "Harry Potter and the Deathly Hallows"
        newBook.author = "J.K. Rowling"
        newBook.year = "2007"
        newBook.description = """
        Voldemort's (Ralph Fiennes') power is growing stronger. He now has control over the Ministry of Magic and Hogwarts. Harry (Daniel Radcliffe), Ron (Rupert Grint), and Hermione (Emma Watson) decide to finish Dumbledore's (Sir Michael Gambon's) work and find the rest of the Horcruxes to defeat the Dark Lord. But little hope remains for the trio, and the rest of the Wizarding World, so everything they do must go as planned.
        """
        bookList.append(newBook)
        
        bookList.sort(){$0.title < $1.title}
        
    }
}
