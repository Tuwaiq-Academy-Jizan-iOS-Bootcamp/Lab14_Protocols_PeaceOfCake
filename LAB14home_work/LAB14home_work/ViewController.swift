//
//  ViewController.swift
//  LAB14home_work
//
//  Created by Ehab Hakami on 20/03/1443 AH.
//
// comment !!

import UIKit
protocol Ingredient {
  var name: String {get}
  var number:Int { get set}
  var description: String {get set}
}
class DairyProduct:Ingredient {
  var name: String
  var number: Int
  var description: String
  init(name: String, number: Int,description: String ){
    self.name = name
    self.number = number
    self.description = description
  }
    func MyDairyProduct (){
        print("this is my product: \(name) and quantity \(number), descrip : \(description)")
      }
    }
class FruitProduct:Ingredient {
  var name: String
  var number: Int
  var description: String
  init(name: String, number: Int,description: String ){
    self.name = name
    self.number = number
    self.description = description
  }
    func FruitProduct (){
        print("this is my FruitProduct: \(name) and quantity \(number), descrip : \(description)")
      }
    }
class OtherProduct:Ingredient {
  var name: String
  var number: Int
  var description: String
  init(name: String, number: Int, description: String ){
    self.name = name
    self.number = number
    self.description = description
  }
    
}
class Milk:DairyProduct{
}
class butter:DairyProduct{
}
class Apple:DairyProduct{
}
class eggs:OtherProduct{
}
class suger:OtherProduct{
}
class extraxctVanillia:OtherProduct{
}

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
          var themilk = Milk(name: "Milk", number: 6, description: "saudiMilk")
      
          var thebutter = butter(name: "butter", number: 1, description: "almraie butter")
      
          var thefruit = FruitProduct(name: "Apple", number: 5, description: "fruit")
      
          var eggs = eggs(name: "eggs", number: 2, description: "eggs")
      
          var sugar = suger(name: "suger", number: 4, description: "suger")
      
          var bowl : [Ingredient] = [themilk, thebutter, thefruit, eggs, sugar]
      




    
    
      mix(fromArray: bowl)
         oven()
       }
       func mix (fromArray: [Ingredient]){
           for index in 0...4 {
             print("Mix all the Ingredient: \(fromArray[index].name)")
             print("with quantity : \(fromArray[index].number)")
             print("mix it with of : \(fromArray[index].description)")
           }
         }
       func oven(){
         print("and Putt all the ingredient in the oven!")
       }
       func Recpi(){
       }
           } // end of class
