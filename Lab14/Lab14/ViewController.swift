//
//  ViewController.swift
//  Lab14
//
//  Created by Ahlam Ahlam on 20/03/1443 AH.
//



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let milk = Milk(name: "Milk", number: 1)
        let butter = Butter(name: "Butter", number: 1)
        let apple = Apple(name: "Apple", number: 5)
        let egg = Eggs(name: "Egg", number: 2)
        let sugar = Sugar(name: "Sugar", number: 3)
        let flour = Flour(name: "Flour", number: 4)
        let vanilla = Vanillia(name: "Vanilla", number: 1)

        let  bowl: [PeaceOfCake] = [milk,butter,apple,egg,sugar,flour,vanilla]
      oven(fromArray: bowl)
       
        print("mix all the ingrediennts and put then in the oven")

        print(" French Apple Cake  done ✅ ")
    }

    func oven (fromArray :[PeaceOfCake]){
        for index in 0...6{

            fromArray[index].Description()


        }

    }



}


import UIKit

 protocol PeaceOfCake

{

     var name :String {get}
     var number :Int {get set}

     func Description ()
     }

 class  DairyProduct {

 }

 class Milk:DairyProduct,PeaceOfCake
{
     
     var name: String

     var number: Int

     init(name : String,number : Int)
     {
         self.name = name
         self.number = number
     }

     func Description()
     {
         print("cups of the \(name) to the bowl ")
     }

 }
 class Butter :DairyProduct,PeaceOfCake
{
     var name: String
     var number: Int
     init(name : String,number : Int)
     {
         self.name = name
         self.number = number
     }
     func Description() {
         print("cup of the \(name) to the bowl ")
     }
     
 }

     class FruitProduct {

     }


 class Apple:FruitProduct,PeaceOfCake{
     var name: String

     var number: Int
     init(name : String,number : Int) {
         self.name = name
         self.number = number
     }
     func Description() {
         print(" \(name)s to the bowl ")
     }
 }

 class Otherproduct{

 }
 class Eggs :Otherproduct,PeaceOfCake{
     var name: String

     var number: Int
     init(name : String,number : Int) {
         self.name = name
         self.number = number
     }
     func Description() {
         print(" \(name)s to the bowl ")
     }
 }
 class Sugar:Otherproduct,PeaceOfCake{
     var name: String

     var number: Int
     init(name : String,number : Int) {
         self.name = name
         self.number = number
     }
     func Description() {
         print("spoon of \(name) to the bowl ")
     }
     
 }
 class Flour:Otherproduct,PeaceOfCake{
     var name: String

     var number: Int
     init(name : String,number : Int)
     {
         self.name = name
         self.number = number
     }
     func Description()
     {
         print(" cups of \(name) to the bowl ")
     }
 }
 class Vanillia:Otherproduct,PeaceOfCake{
     var name: String

     var number: Int
     init(name : String,number : Int) {
         self.name = name
         self.number = number
     }
     func Description() {
         print(" spoon of \(name) to the bowl ")
     }
 }

