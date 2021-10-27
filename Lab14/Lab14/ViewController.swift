//
//  ViewController.swift
//  Lab14
//
//  Created by زهور حسين on 20/03/1443 AH.
//

import UIKit
protocol Applecake {
    var name: String {get}
    var number: Int {get set}
    var discribe: String {get set}
}

class Dairy: Applecake {
    var name: String
    var number: Int
    var discribe: String
    init(name: String,number: Int,discribe: String){
        self.name = name
        self.number = number
        self.discribe = discribe
    }
        func Theway(){
            print (name,number,discribe)
   }
}
class Milk: Dairy{
}
class Butter: Dairy{
}
   
    class Fruits: Applecake {
    var name: String
    var number: Int
    var discribe:String
    init(name:String, number:Int, discribe:String) {
        self.name = name
        self.number = number
        self.discribe = discribe
    }
    
    func Theway(){
        print(name,number,discribe)
    }
}
class Apple: Fruits{
}

class Other {
        var name: String
        var number: Int
        var discribe:String
        init(name:String, number:Int, discribe:String) {
            self.name = name
            self.number = number
            self.discribe = discribe
        }
    func Theway(){
        print(name,number,discribe)
    }
    }
class Egg: Other{
}
class Suger: Other{
}
class Flour: Other{
}
class Vanillia: Other{
}
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    var theMilk = Dairy.init(name: "Milk", number: 1, discribe: "cup🍶")
    var theButter = Dairy.init(name: "Butter", number: 200, discribe: "g🧈")
    var theflour = Fruits.init(name: "flour", number: 3, discribe: "cups")
    
    var theApple = Fruits.init(name: "Apple", number: 2, discribe: "Apple green🍏 and red🍎")
    var theegg = Other.init(name: "egg", number: 2, discribe: "egg🥚🥚")
    var theSuger = Other.init(name: "Suger", number: 1, discribe: "cup")
    var thevanillia = Other.init(name: "vanilla", number: 1, discribe: "small spoonful")
    print (".............Applecake🍰.............")
    theMilk.Theway()
    theButter.Theway()
    theflour.Theway()
    theApple.Theway()
    theegg.Theway()
    theSuger.Theway()
    thevanillia.Theway()
    print (".............mix it all...........")
    var bowl : [Applecake] = [theButter,theMilk,theApple]
    var oven = bowl
    recip(array: bowl)
    print ("with other product")
    print ("but it in the oven for 15 minates")
    print ("cake is ready 🎂")
}
  
    func recip (array: [Applecake]) {
        for index in 0...array.count-1{
            print (array[index].name)
        }
    }
}
     
