//
//  ViewController.swift
//  doaaAlageel_lab14
//
//  Created by Dua'a ageel on 20/03/1443 AH.
//

import UIKit
protocol IngredientsOftheCake {
     var name: String {get}
     var number:Int { get set}
     var description: String {get set}

 }
class productCake{
}

class DairyProduct:productCake,IngredientsOftheCake{
     var name: String
     var number: Int
     var description: String

     init(name: String, number: Int,description: String ){
         self.name = name
         self.number = number
         self.description = description

     }
    func DairyProduct (){
             print("the dairy product: \(name) and quantity \(number), descrip : \(description)")
         }
     }

class FruitProduct:productCake,IngredientsOftheCake{
     var name: String
     var number: Int
     var description: String
   
    init(name: String, number: Int,description: String ){
         self.name = name
         self.number = number
         self.description = description

     }

     func FruitProduct (){
         print("the Fruit Product: \(name) and quantity \(number), descrip : \(description)")
     }
 }

class OtherProduct:productCake,IngredientsOftheCake {
     var name: String
     var number: Int
     var description: String
    
    init(name: String, number: Int, description: String ){
         self.name = name
         self.number = number
         self.description = description
     } }


class Milk:DairyProduct{

}

class butter:DairyProduct{

}
class Apple:FruitProduct{

}

class eggs:OtherProduct{

}
class suger:OtherProduct{
}

class flour:OtherProduct{
}
 
class vanillia:OtherProduct{
}

class ViewController: UIViewController {

     override func viewDidLoad() {
         super.viewDidLoad()
         
         let Ingredient1 = Milk(name: "Milk", number: 2, description: "we need liquid milk")
         let Ingredient2 = butter(name: "butter", number: 3, description: "unsalted butter")
         let Ingredient3 = FruitProduct(name: "Apple", number: 7, description: "green apple")
         let Ingredient4 =  eggs(name: "eggs", number: 2, description: "warm eggs")
         let Ingredient5 = suger(name: "suger", number: 2, description: "brown sugar")
         let Ingredient6 = flour(name: "flour", number: 4, description: "special flour for cake")
         let Ingredient7 = vanillia(name: "vanillia", number: 1, description: "liquid vanillia ")
     
         let theBowl: [IngredientsOftheCake] = [Ingredient1, Ingredient2, Ingredient3, Ingredient4, Ingredient5, Ingredient6, Ingredient7]

         mixTheingredient(Array: theBowl)
                  theOven()

     }
    func mixTheingredient (Array: [IngredientsOftheCake]){
                 for index in 0...6 {
            print("the Ingredients: \(Array[index].name)")
            print("Amount of ingredients : \(Array[index].number)")
            print("More details for the cake : \(Array[index].description)")
                 }
        
    }
    func theOven(){
             print("****Finally... we need to put the cake in the oven****")
    }
    
}
