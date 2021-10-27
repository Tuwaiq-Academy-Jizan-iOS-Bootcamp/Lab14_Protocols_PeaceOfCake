//
//  ViewController.swift
//  Amal lab14
//
//  Created by Amal Jeli on 20/03/1443 AH.
//

import UIKit


protocol ProductOfCake {
    var name: String {get}
    var number :Int {get set}
    var descreption : String {get set}
  
}
    
class DairyProduct : ProductOfCake {
var name: String
var number: Int
var descreption: String
init(name:String,number:Int,descreption:String){
    self.name = name
    self.number = number
    self.descreption = descreption
    
}
}

class FruitProduct: ProductOfCake{
     var name: String
     var number: Int
     var descreption: String
     init(name:String,number:Int,descreption:String){
         self.name = name
         self.number = number
         self.descreption = descreption
     }
 }


class Otherproduct: ProductOfCake {
     var name:String
     var number:Int
     var descreption:String
     init(name:String,number:Int,descreption:String){
         self.name = name
         self.number = number
         self.descreption = descreption
     }
 }



class ViewController: UIViewController {
var butter = DairyProduct.init(name: "Butter", number: 1, descreption: "salted Butter🧈")
    var milk = DairyProduct.init(name: "Milk",number: 1, descreption: "Coconut milk🥥🥛")
var apples = FruitProduct.init(name: "Apple", number: 4, descreption: "Green Apples🍏🍏and red Apples🍎🍎")
var eggs = Otherproduct.init(name: "Egg", number: 3, descreption: "Chicken eggs🥚🥚🥚")
var sugar = Otherproduct.init(name: "Sugar", number: 2, descreption: "Spoon of Sugar🧂")
var flour = Otherproduct.init(name: "Flour", number: 2, descreption: "Cup of flour🥡")
var vanillia = Otherproduct.init(name: "Vanillia Extract", number: 1, descreption: " Spoon of liquid Vanillia extract")
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        let bowl: [ProductOfCake] = [butter,milk,apples,eggs,sugar,flour,vanillia]
        oven(array: bowl)
                 
    }

    func oven (array: [ProductOfCake]) {
        for index in 0...6 {
            print ("mixed to gether\(array[index].name) , \(array[index].number),\(array[index].descreption)")
        }
    print ("put in the oven 🥳⏳")
        print("My cake is ready, Ummmmy ! 🎂🥮🍰😋😋💃🏼")
}
    
}

