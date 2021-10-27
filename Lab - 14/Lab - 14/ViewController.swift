//
//  ViewController.swift
//  Lab - 14
//
//  Created by Afrah Omar on 20/03/1443 AH.
//

import UIKit
//........Create protocol
  protocol Cake {
    var name:String {get}
    var number:Int {get set}
    var description: String{get set}
  }

//..... Class Dairy Product (milk, butter)....//

   class DairyProduct {
   func discribeTheProduct() {
   }
   }
   class Milk:DairyProduct, Cake {
    var name:String
    var number:Int
    var description: String
    
       init(name:String, number:Int, description:String) {
         self.name = name
         self.number = number
         self.description = description
       }
   }
     
    class Butter:DairyProduct, Cake {
        var name:String
        var number:Int
        var description: String
     
        init(name:String, number:Int, description: String) {
             self.name = name
             self.number = number
             self.description = description
        }
    }
//..Class Fruit Product (like Apple)..//
            
    class FruitProduct {
      func discribeTheProduct()
      {
      }
    }
      class Apple:FruitProduct, Cake{
          var name: String
          var number: Int
          var description: String
         init(name:String,number:Int, description: String) {
                     self.name = name
                     self.number = number
                     self.description = description
                 }
             }
        
//..Class Other product (like eggs, sugar, flour, extract vanillia)../
        
        class OtherProduct {
            func discribeTheProduct() {
            }}
         class Eggs:OtherProduct, Cake {
             var name: String
             var number: Int
             var description: String
             
             init(name:String,number:Int,description: String) {
                 self.name = name
                 self.number = number
                 self.description = description
                
             }
         }
         class Sugar:OtherProduct, Cake{
             var name: String
             var number: Int
             var description: String
             
             init(name:String,number:Int,description: String) {
                 self.name = name
                 self.number = number
                 self.description = description
             
             }
         }
         class Flour:OtherProduct, Cake {
             var name: String
             var number: Int
             var description: String
            
             init(name:String,number:Int,description: String) {
                 self.name = name
                 self.number = number
                 self.description = description
                 
             }
         }
         class Vanillia:OtherProduct, Cake {
             var name: String
             var number: Int
             var description: String
        
             init(name:String,number:Int,description: String) {
                 self.name = name
                 self.number = number
                 self.description = description
              
             }
         }
            

   
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var milk = Milk(name: "Milk🥛", number: 1, description: "cup milk")
        var butter = Butter(name: "Butter", number: 1, description: "cup butter")
        var apple = Apple(name: "Apple🍎", number: 3, description: "Apple")
        var eggs = Eggs(name: "Eggs🥚", number: 3, description: "Eggs")
        var sugar = Sugar(name: "Suger", number: 3, description: "cup Suger")
        var flour = Flour(name: "Flour", number: 2, description: "flour")
        var vanillia = Vanillia(name: "Vanillia", number: 1, description: "Tablespoone of Vanillia")
        
        var bowl: [Cake] = [milk, butter, apple, eggs, sugar, flour,vanillia]
   oven(array: bowl)
   print("mix them in the bowl ")
        print("put the mix in oven 🍰")
        
    }
}
func oven (array :[Cake]){
    for index in 0...6{
        
        print("\(array[index].number)")
        print("\(array[index].description)")
        
    }
}
