//
//  ViewController.swift
//  mylab14prot
//
//  Created by Abdulrhman Abuhyyh on 20/03/1443 AH.
//

import UIKit

protocol Ingredient {
    var name: String {get}
    var productNumber: Int {get set}
    var description: String {get set}
}
class DairyProduct : Ingredient {
    var name: String
    var productNumber: Int
    var description: String
    
    init(name: String, productNumber: Int, description: String){
        self.name = name
        self.productNumber = productNumber
        self.description = description
    }
    func cooki(){
        print("this is dairy \(name) and my \(productNumber) and the \(description)")
    }
}
class FruitProduct : Ingredient {

    var name: String
    var productNumber: Int
    var description: String

    init(name: String, productNumber: Int, description: String){
        self.name = name
        self.productNumber = productNumber
        self.description = description
    }
    func frut(){
        print("the fruit: \(name)and quantity \(productNumber) and the \(description)")
    }
}
class OtherProdect: Ingredient {
        var name: String
        var productNumber: Int
        var description: String
    init(name: String, productNumber: Int, description: String) {
            self.name = name
            self.productNumber = productNumber
            self.description = description
    }
    func others(){
        print("the other: \(name)and quantity \(productNumber) and the \(description)")
    }
}

class Milk:DairyProduct {
    
}
class Butter:DairyProduct {
    
}
class Apple:FruitProduct {
    
}
class Eggs:OtherProdect {
    
}
class sugar:OtherProdect {
    
}
class Flour:OtherProdect {
    
}
class ExtractVanillia:OtherProdect {
    
}
    
    
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    // Do any additional setup after loading the view.
        var theMilk = Milk(name: "milk", productNumber: 1, description: "Own Cup pf milk")
        var theButter = Butter(name: "Butter", productNumber: 2, description: "Two butter to creat cake")
        var theApple = Apple(name: "Apple", productNumber: 6, description: "put the apple with suqar")
        var theEggs = Eggs(name: "Eggs", productNumber: 9, description: "the eggs put the yellw only")
        var theSugar = sugar(name: "Sugar", productNumber: 5, description: "wc can put five scop of sugar")
        var theFlour = Flour(name: "Flour", productNumber: 2, description: "the flour fwe to add")
        var theExtractVanillia = ExtractVanillia(name: "ExtractVanillia", productNumber: 1, description: "Put the vanillia with milk to add ")
        var bowl: [Ingredient] = [theMilk,theButter,theApple,theEggs,theSugar,theFlour,theExtractVanillia]
    
        mix(fromArray:bowl)
        oven()
    }
    
    //for array
    func mix(fromArray:[Ingredient]){
        for index in 0...6 {
            print("The max Ingredient:\(fromArray[index].name)")
            print("With quantity:\(fromArray[index].productNumber)")
            print("Mix with: \(fromArray[index].description)")
            
        }
    }
    
    func oven(){
    print("Put inside the oven and wite 20 minutes")
    }
    func Respi(){
        
    }
}

//end!


