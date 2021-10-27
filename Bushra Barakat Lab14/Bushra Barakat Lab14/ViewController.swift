//
//  ViewController.swift
//  Bushra Barakat Lab14
//
//  Created by Bushra Barakat on 20/03/1443 AH.
//

import UIKit
protocol AppleCakeRecipe{
    var name: String {get}
    var number: Int {get set}
    var description: String {get set}
    
}

class DiaryProduct : AppleCakeRecipe {
    var name: String
    var number: Int
    var description: String
    init(name: String, number:Int, description: String){
        self.name = name
        self.number = number
        self.description = description
    }
    
    func descripation() {
        print (name,number,description)

    }
    }


class Milk: DiaryProduct {
    }
   
class Butter: DiaryProduct {
   
    }


class FruitProduct: AppleCakeRecipe {
    var name: String
    var number: Int
    var description: String
    init(name: String, number:Int, description: String){
        self.name = name
        self.number = number
        self.description = description
    }
    
    func descripation() {
        print (name,number,description)

    }
    }
    
class Apple: FruitProduct {
    }
    
class OtherProduct {
    var name: String
    var number: Int
    var description: String
    init(name: String, number:Int, description: String){
        self.name = name
        self.number = number
        self.description = description
        }
        
    func descripation() {
        print (name,number,description)

    }
        }
class Eggs: OtherProduct {
      }
class Suger: OtherProduct {
      }

class Flour: OtherProduct {
      }
class ExtraVanillia: OtherProduct {
    }
    



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var theMilk = Milk.init(name: "milk", number: 1, description: "cup")
        var theButter = Butter.init(name: "butter", number: 80, description: "g ")
        var theApple = Apple.init(name: "apple", number: 3, description: " apple")
        var theeggs = Eggs.init(name: "eggs", number: 2, description: "eggs")
        var theSuger = Suger.init(name: "suger", number: 2, description: "spon")
        var theFlour = Flour.init(name: "flour", number: 2, description: "cup ")
        var theExtraVanillia = ExtraVanillia.init(name: "extravanillia", number:1, description: "spon ")
        print("........🥧 Apple cake recip 🥧.......")
        theMilk.descripation()
        theButter.descripation()
        theApple.descripation()
        theeggs.descripation()
        theSuger.descripation()
        theFlour.descripation()
        theExtraVanillia.descripation()
        print (".......mix it all in the bowl 👩🏻‍🍳...... ")
        var bowel : [AppleCakeRecipe] = [theMilk, theButter, theApple]
        var oven = bowel
        recipe(array: bowel)
        print ("add ather ingredients")
        print ("but it in the oven for half hour 🔥")
        print ("cake is ready to eat 🥧 🍽 😋")
    }
       
    func recipe(array: [AppleCakeRecipe]){
        for index in 0...array.count-1 {
            print (array[index].name)
    }
    
    }

}

