//
//  ViewController.swift
//  Yousef-Almalki-Lab14
//
//  Created by يوسف جابر المالكي on 20/03/1443 AH.
//
import UIKit

 protocol Cake {
     var name: String {get}
     var number:Int { get set}
     var description: String {get set}

 }

 class DairyProduct:Cake {
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
 class FruitProduct:Cake {
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
 class OtherProduct:Cake {
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
         
         var theMilk = Milk(name: "Milk🥛", number: 4, description: "Saudi Milk")
         var theButter = butter(name: "butter🧈", number: 1, description: "Saudi butter")
         var theFruit = FruitProduct(name: "Apple🍎", number: 3, description: "Fruit")
         var eggs =  eggs(name: "eggs🥚", number: 2, description: "Eggs")
         var sugar = suger(name: "suger🧂", number: 4, description: "Suger")

         var bowl : [Cake] = [theMilk, theButter, theFruit, eggs, sugar]




         mix(fromArray: bowl)
         oven()

     }
     func mix (fromArray: [Cake]){
             for index in 0...4 {
                 print("Mix all the Ingredients: \(fromArray[index].name)")
                 print("with quantity : \(fromArray[index].number)")
                 print("Mix it with of : \(fromArray[index].description)")



             }
         }

     func oven(){
         print("and Put it in the oven for 30 minutes⌛️")
         print("after that enjoy a delicious meal😋😋")
     }
     

     }

//
