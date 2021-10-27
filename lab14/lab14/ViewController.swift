//
//  ViewController.swift
//  lab14
//
//  Created by grand ahmad on 20/03/1443 AH.
//

import UIKit

protocol Ingredient {
    var name: String {get}
    var number: Int {get set}
    var description: String {get set}
    
}

struct Bowl {
    var name: String
    var items: [Product]
    mutating func add(_ product: Product) {
        print("\(product.number) \(product.name) added.")
        items.append(product)
    }
    mutating func mix(){
        print("Ingredients mixed")
        items.shuffle()
    }
}

struct Oven {
    var name: String
    var bowl: Bowl?
    mutating func put(_ bowl: Bowl) {
        self.bowl = bowl
        print("Bowl put in oven")
    }
}

struct Product: Ingredient {
    var name: String
    var number: Int
    var description: String
}

var bowl:Bowl = Bowl(name: "Bowl", items: [])
var oven:Oven = Oven(name: "Oven")

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bowl.add(Product(name: "Milk", number: 1, description: "cup Milk"))
        bowl.add(Product(name: "Butter", number: 1, description: "teaspoon Butter"))
        bowl.add(Product(name: "Apple", number: 1, description: "One Apple"))
        bowl.add(Product(name: "Egg", number: 2, description: "Eggs"))
        bowl.add(Product(name: "Sugar", number: 2, description: "cup Sugar"))
        bowl.add(Product(name: "Flour", number: 2, description: "cup Flour"))
        bowl.add(Product(name: "Extract Vanilla", number: 1, description: "teaspoon"))
        bowl.mix()
        oven.put(bowl)
        print("recipe is ready")
    
    }
    
    @IBOutlet weak var imageOne: UIImageView!
    var images = ["milk","butter","apple","suger","flout","vanilla","cake Apple freanch"]
    var imageNum = 0
    @IBAction func buttons(_ sender: Any) {
        
        if imageNum < images.count{
            
        imageOne.image = UIImage(named: images[imageNum])
        imageNum += 1
    }
        
    }
}

