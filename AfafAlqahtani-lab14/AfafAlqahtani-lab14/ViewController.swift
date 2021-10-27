//
//  ViewController.swift
//  AfafAlqahtani-lab14
//
//  Created by Afaf Yahya on 20/03/1443 AH.
//

import UIKit

protocol FrenchAppleCake{
    var name: String {get}
    var number: Int {get set}
    var discribtion: String {get }
}
    
class Dairy: FrenchAppleCake{
    
    var name: String
    var number: Int
    var discribtion: String
    init(name: String, number: Int, discribtion: String){
    
    self.name = name
    self.number = number
    self.discribtion = discribtion
    }
    func mixingCake()  {
        print("put\(number),\(name),\(discribtion)")
    }
    }
    
    class milk: Dairy{
            
//            func mixingCake() -> String {
//                return name
//                print("put\(number),\(name)")
//            }
//    }

    }
    class butter: Dairy{
            
//            func mixingCake() -> String {
//                return name
//                print("put\(number),\(name)")
//            }
//    }
    }

    class Fruit: FrenchAppleCake {
        var name:String
        var number: Int
        var discribtion: String
        init(name: String, number: Int, discribtion: String){
            self.name = name
            self.number = number
            self.discribtion = discribtion
        }
            func mixingCake()  {
                print("put\(number),\(name),\(discribtion)")
            }
    
}
    class Appl: Fruit{
      
    }
    class OtherPrudict{
        var name:String
        var number: Int
        var discribtion: String
        init(name: String, number: Int, discribtion: String){
            self.name = name
            self.number = number
            self.discribtion = discribtion
        }
            func mixingCake()  {
                print("put\(number),\(name)",discribtion)
            }
    }
        class Eggs: OtherPrudict{
            
//            func mixingCake()  {
//                print("put\(number),\(name),\(discribtion)")
//            }
        }
        class Sugar: OtherPrudict{
            
//            func mixingCake()  {
//                print("put\(number),\(name),\(discribtion)")
//            }
    
        }
            class Flour: OtherPrudict{
                
//                func mixingCake()  {
//                    print("put\(number),\(name),\(discribtion)")
//                }
//
            }
                class Extractvanillia: OtherPrudict{
//
//                    func mixingCake()  {
//                        print("put\(number),\(name),\(discribtion)")
//                    }
                }
    
class ViewController: UIViewController {

    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        let milk = milk(name: "milk", number: 1, discribtion: "glass")
        let butter = butter(name: "butter", number: 4, discribtion: "spoons")
        let apple = Appl(name: "apple", number: 6, discribtion: "sliced")
        let eggs = Eggs(name: "eggs", number: 3, discribtion: "3 eggs")
        let suger = Sugar(name: "suger", number: 1, discribtion: "glass")
        let flour = Flour(name: "flour", number: 2, discribtion: "glass")
        let vanilla = Extractvanillia(name: "vanilla", number: 1, discribtion: "spoon")
        print("My french cake")
        milk.mixingCake()
        butter.mixingCake()
        apple.mixingCake()
        eggs.mixingCake()
        suger.mixingCake()
        flour.mixingCake()
        vanilla.mixingCake()
        print("mix all the product in bowl")
        let bowl: [FrenchAppleCake] = [milk,butter,apple]
        recipe(array: bowl)
        print("and other product")
        var oven = bowl
        print("put in oven")
        print("cake is ready..🥧")
    }
        
            func recipe (array:[FrenchAppleCake]){
                for index in 0...array.count-1{
                    print (array[index].name)
                    
                }
            }
}
        
