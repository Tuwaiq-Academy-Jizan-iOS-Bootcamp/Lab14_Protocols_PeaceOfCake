//
//  ViewController.swift
//  DAHMAALWANI_LAB14
//
//  Created by dahma alwani on 21/03/1443 AH.
//

    import UIKit


    // CREATE PROTOCOL FOR INGRIDIANT
    protocol Ingraidiant {
        
         var name:String {get}
         var number:Int {get set}
         var descreption:String {get set}
     }
    //SUPER CLASS FOR DAIRY PRODUCT
     class Dairy: Ingraidiant {
         var name: String
         var number: Int
         var descreption: String
         init(name:String,number:Int,descreption:String){
             self.name = name
             self.number = number
             self.descreption = descreption
         }
     }
    //SUPER CLASS FOR FRUIT PRODUCT
     class Fruit: Ingraidiant {
         var name: String
         var number: Int
         var descreption: String
         init(name:String,number:Int,descreption:String){
             self.name = name
             self.number = number
             self.descreption = descreption
         }
     }
    //SUPER CLASS FOR OTHER PRODUCT
   class Other: Ingraidiant {
         var name:String
         var number:Int
         var descreption:String
         init(name:String,number:Int,descreption:String){
             self.name = name
             self.number = number
             self.descreption = descreption
         }
     }
    //CREAT SUBCLASS FOR EACH ONE IN INGRIDIANT
    class Milk:Dairy{
     }
    //............................
     class Butter:Dairy {
     }
    //..........................
     class Apple:Fruit {
     }
    //...........................
     class Eggs:Other {
     }
    //...........................
     class Suger:Other {
     }
    //..........................
    class Vanillia:Other {
     }
    //..................................
    //DEFINE THE VARIABLE
     class ViewController: UIViewController {

         var butter = Dairy.init(name: "Butter", number: 2 , descreption: "125 gram of Butter")
         var milk = Dairy.init(name: "Milk", number: 1 , descreption: "1 cup of full fat milk")
         var apples = Fruit.init(name: "Apple", number: 3 , descreption: "3 Apples sliced")
         var eggs = Other.init(name: "Egg", number: 4 , descreption: "4 eggs")
         var sugar = Other.init(name: "Sugar", number: 6 , descreption: "6 tabel spon of Sugar")
         var flour = Other.init(name: "Flour", number: 2, descreption: "2 Cups of wheat flour")
         var vanillia = Other.init(name: "Vanillia ", number: 2 , descreption: "2 Tabel spoone of Vanillia")
       
         override func viewDidLoad() {
             super.viewDidLoad()
             
    //         array
             let bowl:[Ingraidiant] = [butter, milk, apples, eggs, sugar, flour, vanillia]
             oven(array: bowl)
//             let oven = bowl
             print("add all the ingridiant to bowl ")
             print("but the inside the oven at 180 F for 1 hour , DONE 🥧🍎")
         }
     
             func oven (array :[Ingraidiant]) {
                 for index in 0...6{
                    
                     print("\(array[index].descreption)")
                     
                 }
             }
     }
