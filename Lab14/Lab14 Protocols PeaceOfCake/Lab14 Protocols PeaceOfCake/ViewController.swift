//
//  ViewController.swift
//  Lab14 Protocols PeaceOfCake
//
//  Created by Hanan Somily on 26/10/2021.
//

import UIKit
//Name (name of your product)
//Number (product's number you need to make the French Apple Cake)
//Description (it's just a description for the product)
             protocol Product{
                 var name : String {get}
                 var number : Int {get set}
                 var description : String {get set}
                 func productCake ()
}
//Dairy Product (like milk, butter)
class DairyProduct{
    func dairy (){
        print("The Diary Product")
    }
}
class Milk:DairyProduct,Product{
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String){
        self.name=name
        self.number=number
        self.description=description
    }
    func productCake() {
        print("The diary product \(name) , quantity \(number) , description \(description)")
    }
}
class Butter:DairyProduct,Product{
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String){
        self.name=name
        self.number=number
        self.description=description
    }
    func productCake() {
        print("The diary product \(name) , quantity \(number) , description \(description)")
    }
}
//Fruit Product (like Apple)
class FruitProduct{
    func fruit() {
        print("The Fruit Product")
    }
}
class Apple:FruitProduct,Product{
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String){
        self.name=name
        self.number=number
        self.description=description
    }
    func productCake() {
        print("The diary product \(name) , quantity \(number) , description \(description)")
    }
}
//Other product (like eggs, sugar, flour, extract vanillia)
class OtherProduct {
    func otherpodct (){
        print("Other product")
    }
}
class Eggs:OtherProduct,Product{
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String) {
        self.name=name
        self.number=number
        self.description=description
    }
    func productCake() {
        print("The diary product \(name) , quantity \(number) , description \(description)")
    }}
    class Sugar:OtherProduct,Product{
        var name: String
        var number: Int
        var description: String
        init(name:String,number:Int,description:String) {
            self.name=name
            self.number=number
            self.description=description
        }
        func productCake() {
            print("The diary product \(name) , quantity \(number) , description \(description)")
        }
}
    class Flour:OtherProduct,Product{
        var name: String
        var number: Int
        var description: String
        init(name:String,number:Int,description:String) {
            self.name=name
            self.number=number
            self.description=description
        }
        func productCake() {
            print("The diary product \(name) , quantity \(number) , description \(description)")
        }}
        class Vanillia:OtherProduct,Product{
            var name: String
            var number: Int
            var description: String
            init(name:String,number:Int,description:String) {
                self.name=name
                self.number=number
                self.description=description
            }
            func productCake() {
                print("The diary product \(name) , quantity \(number) , description \(description)")
            }}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
var milk=Milk(name: "Milk ", number: 1, description: " cup")
var buttter=Butter(name: "Butter", number: 1, description: " unsalted butter, at room temperature")
var apple=Apple(name: "Apple", number: 3, description: "baking apples, peeled, cored and cut")
        //Other product (like eggs, sugar, flour, extract vanillia)
var eggs=Eggs(name: "Eggs", number: 3, description: "large egg")
var sugar=Sugar(name: "Sugar", number: 1, description: " granulated sugar ,plus more for sprinkling over cake")
var flour=Flour(name: "Flour", number: 1, description: "all purpose flourng")
var vanillia=Vanillia(name: "Vanillia", number: 2, description: "teaspoon vanilla extract")
        var bowl:[Product]=[milk,buttter,apple,eggs,sugar,flour,vanillia]
        var oven:[Product]=[milk,buttter,apple,eggs,sugar,flour,vanillia]
        //Cooking Tools (oven, bowl)    array
        cookingToolBowl(arrayProuduct: bowl)
        cookingToolOven(arrayProuduct: oven)
    }
    
    func cookingToolBowl(arrayProuduct:[Product]) {
        for index in 0...6{
            print(" In a small bowl, whisk together \(arrayProuduct[index].name) \(arrayProuduct[index].number) \(arrayProuduct[index].description) ...")
        }
    }
    func cookingToolOven(arrayProuduct:[Product]) {
        for index in 0...6{
            print(" \(arrayProuduct[index].name) Mix until just combined ...")
        }
        print(" Put in the oven ")
    }
}

//Put all your ingredients in the bowl
//Mix them
//Put it in your Oven
//End it's done ! ;)
