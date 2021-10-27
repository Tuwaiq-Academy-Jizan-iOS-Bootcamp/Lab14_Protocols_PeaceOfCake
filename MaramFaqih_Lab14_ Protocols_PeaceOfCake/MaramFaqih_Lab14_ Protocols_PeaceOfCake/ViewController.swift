//
//  ViewController.swift
//  MaramFaqih_Lab14_ Protocols_PeaceOfCake
//
//  Created by maram f on 20/03/1443 AH.
//

import UIKit
protocol Recipe{
    
    var name :String{get}
    var number:String{get set}
    func description()

}

class AllProduct{
    
    
}
class DairyProduct:AllProduct,Recipe{
    var name: String
    var number: String
    
    init(name:String,number: String){
        self.name = name
        self.number = number
    }
    
    func description(){
        print("add \(number)  of \(name)")
        
    }
   
}

class FruitProduct:AllProduct,Recipe {
    var name: String
    var number: String
    
    init(name:String,number: String){
        self.name = name
        self.number = number
    }
    
    func description(){
        print("add \(number)  of \(name)")
        
    }
    
}

class OtherProduct:AllProduct,Recipe{
    var name: String
    var number: String
    
    init(name:String,number: String){
        self.name = name
        self.number = number
    }
    
    func description(){
        print("add \(number)  of \(name)")
        
}
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let milk = DairyProduct(name: "milk", number: "1 cup")
        let butter = DairyProduct(name: "butter", number: "1/2 cup")
        let apple = FruitProduct(name: "Apples", number: "2 baking")
        let eggs = OtherProduct(name: "eggs", number: "2 large ")
        let sugar = OtherProduct(name: "sugar", number: "3 teaspoon")
        let flour = OtherProduct(name: "flour", number: "1 cup all-purpose")
        let vanillia = OtherProduct(name: "extract vanillia", number: "1 teaspoon")
        let bowl:[Recipe]=[milk,butter,apple,eggs,sugar,flour,vanillia]
        let oven:[Recipe]=[milk,butter,apple,eggs,sugar,flour,vanillia]
        PutAllIngredients(bowlArray: bowl)
        PutInOven(ovenArray:oven)
        
    }
    func PutAllIngredients(bowlArray:[Recipe]){
        print("Put this Ingredients in bowl:")
        for index in 0...bowlArray.count-1
        {
            print("* \(bowlArray[index].description())")
        }
        print("then Mix them.")
    }
    func PutInOven(ovenArray:[Recipe]){
        print("After mixing the ingredients:")
        for index in 0...ovenArray.count-1
        {
            print("* \(ovenArray[index].name)")
        }
        print("Put the mixture in the oven")
    }


}

