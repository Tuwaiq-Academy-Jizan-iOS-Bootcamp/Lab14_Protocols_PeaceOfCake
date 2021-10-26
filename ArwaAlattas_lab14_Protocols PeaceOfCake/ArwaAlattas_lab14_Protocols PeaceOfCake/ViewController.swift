//
//  ViewController.swift
//  ArwaAlattas_lab14_Protocols PeaceOfCake
//
//  Created by Arwa Alattas on 20/03/1443 AH.
//

import UIKit
protocol Cake {
    
    var name :String {get}
    var number :Int {get set}
    
    func Description ()
    }
    
class  DairyProduct {

}

class Milk:DairyProduct,Cake{
    var name: String
    
    var number: Int
    
    init(name : String,number : Int) {
        self.name = name
        self.number = number
    }
    
    func Description() {
        print("Add \(number) cups of the \(name) to the bowl ")
    }
    
}
class Butter :DairyProduct,Cake{
    var name: String
    
    var number: Int
    init(name : String,number : Int) {
        self.name = name
        self.number = number
    }
    func Description() {
        print("Add \(number) cup of the \(name) to the bowl ")
    }}
    
    class FruitProduct {
        
    }
    
    
class Apple:FruitProduct,Cake{
    var name: String
    
    var number: Int
    init(name : String,number : Int) {
        self.name = name
        self.number = number
    }
    func Description() {
        print("Add \(number)  \(name)s to the bowl ")
    }
}

class Otherproduct{
    
}
class Eggs :Otherproduct,Cake{
    var name: String
    
    var number: Int
    init(name : String,number : Int) {
        self.name = name
        self.number = number
    }
    func Description() {
        print("Add \(number) \(name)s to the bowl ")
    }
}
class Sugar:Otherproduct,Cake{
    var name: String
    
    var number: Int
    init(name : String,number : Int) {
        self.name = name
        self.number = number
    }
    func Description() {
        print("Add \(number) spoon of \(name) to the bowl ")
    }
}
class Flour:Otherproduct,Cake{
    var name: String
    
    var number: Int
    init(name : String,number : Int) {
        self.name = name
        self.number = number
    }
    func Description() {
        print("Add \(number) cups of \(name) to the bowl ")
    }
}
class Vanillia:Otherproduct,Cake{
    var name: String
    
    var number: Int
    init(name : String,number : Int) {
        self.name = name
        self.number = number
    }
    func Description() {
        print("Add \(number) spoon of \(name) to the bowl ")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let milk = Milk(name: "Milk", number: 1)
        let butter = Butter(name: "Butter", number: 1)
        let apple = Apple(name: "Apple", number: 3)
        let egg = Eggs(name: "Egg", number: 2)
        let sugar = Sugar(name: "Sugar", number: 2)
        let flour = Flour(name: "Flour", number: 4)
        let vanilla = Vanillia(name: "Vanilla", number: 1)
      
        let  bowl: [Cake] = [milk,butter,apple,egg,sugar,flour,vanilla]
      oven(fromArray: bowl)
        print("we will mix them and  Put this a mix to the oven")
        
        print("       🍰  🥧  French Apple Cake is done  🥧 🍰            ")
    }
    
    func oven (fromArray :[Cake]){
        for index in 0...6{
            
            fromArray[index].Description()
           
            
        }
    
    }
    
    
    
}
