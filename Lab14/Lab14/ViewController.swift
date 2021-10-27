//
//  ViewController.swift
//  Lab14
//
//  Created by موسى مسملي on 26/10/2021.
//
import UIKit

protocol Ingredient {
  var name: String {get}
  var productNumber: Int {get set}
  var description: String {get set}
}
class DairyProduct : Ingredient{
  var name: String
  var productNumber: Int
  var description: String
  init(name: String, productNumber: Int, description: String) {
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
  init(name: String, productNumber: Int, description: String) {
    self.name = name
    self.productNumber = productNumber
    self.description = description
}
   
    func cookiAa(){
      print("this is Frity \(name) and my \(productNumber) and the \(description)")
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
    }
  class Milk:DairyProduct {
  }
  class Butter:DairyProduct {
  }
  class Apple: FruitProduct{
  }
  class Eggs:OtherProdect {
  }
  class sugar:OtherProdect{
  }
  class Flour:OtherProdect{
  }
  class ExtractVanillia:OtherProdect{
  }
class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
  // Do any additional setup after loading the view.
      
     
      let theMilk = Milk (name:"milk",productNumber: 1,description: "Own Cup pf milk")
      
      let theButter = Butter (name:"Butte", productNumber: 2, description: "two butter to creat cake")
  
     let theApple = Apple (name: "Apple", productNumber: 6, description: "put the apple with suqar")
                                 
          let theEggs = Eggs(name: "Eggs", productNumber: 9, description: "the eggs put the yellw only")
                             
          let theSugar = sugar(name: "Sugar", productNumber:5, description:"wc can put five scop of sugar")
                             
          let theFlour = Flour(name: "Flour", productNumber:2, description: "the flour fwe to add")
                               
      let theExtractVanillia = ExtractVanillia(name: "ExtractVanillia", productNumber: 1, description: "Put the vanillia with milk to add ")
          let bowl: [Ingredient] = [theMilk,theButter,theApple,theEggs,theSugar,theFlour,theExtractVanillia]
          mix(fromArray:bowl)
          oven()
        }
  func mix(fromArray:[Ingredient]){
    for index in 0...6 {
      print("The max Ingredient:\(fromArray[index].name)")
      print("With quantity:\(fromArray[index].productNumber)")
      print("Mix with: \(fromArray[index].description)")
    }
  }
  func oven(){
  print("Put inside the oven and wite 30 minutes")
}
  func Respi(){
  }
}

