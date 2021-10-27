//  ViewController.swift
//  HamadHarisi_AppleCake_Lab14
//  Created by حمد الحريصي on 26/10/2021.
import UIKit
protocol Ingredient
{
var name:String    { get     }
var number:Int     { get set }
func description()
}
class DairyProdect
{
}
class Milk: DairyProdect , Ingredient
{
var name: String
var number: Int
    
init(name:String , number:Int)
{
self.name = name
self.number = number
}
func description()
{
print("thr ejfvlerrnbigrb")
}
}
class Butter: DairyProdect , Ingredient
{
var name: String
var number: Int
    
init(name: String , number:Int)
{
self.name = name
self.number = number
}
func description()
{
print("hgjdsfhgkjdfhgkdf")
}
}
class FruitProduct
{
func Description()
{
print("tyjtryjtyjytu")
}
}
class Apple: FruitProduct , Ingredient
{
var name: String
var number: Int
init(name: String, number: Int)
{
self.name = name
self.number = number
}
func description()
{
print("jhgdkjghjh")
}
}
class OtherProduct
{
}
func discribeOtherProduct()
{
print("tyhjtrjrtyhjjyhjy")
}
class Eggs: OtherProduct, Ingredient
{
var name: String
var number: Int
init(name: String, number: Int)
{
self.name = name
    self.number = number
    }
    func description()
    {
    print("thgjhdfkjd")
    }
    
    
}
class Sugar:OtherProduct , Ingredient
{
    var name: String
    var number: Int
    init(name: String, number: Int)
    {
    self.name = name
    self.number = number
    }
    func description()
    {
    print("jghdjghnkdfg")
    }
    
}
class Flour:OtherProduct , Ingredient
{
    var name: String
    var number: Int
    
    init(name: String, number: Int)
    {
    self.name = name
    self.number = number
    }
    func description()
    {
    print("gjhdkfgjbndkg")
    }
}
class ExtractVanillia: OtherProduct , Ingredient
{
    func description()
    {
    print("gjhdkfgjbndkg")
    }
    
 
    var name: String
    var number: Int
    
    init(name: String, number: Int)
    {
    self.name = name
    self.number = number
    }
}
class ViewController: UIViewController
{
override func viewDidLoad()
{
super.viewDidLoad()
        
    let milkForCake            = Milk           (name: "milk 🥛 ",            number: 4  )
    let butterForCake          = Butter         (name: "butter 🧈 ",          number: 5  )
    let appleForCake           = Apple          (name: "apple 🍎 ",           number: 10 )
    let eggsForCake            = Eggs           (name: "eggs 🥚 ",            number: 50 )
    let sugarForCake           = Sugar          (name: "suger 🍥 ",           number: 1  )
    let flourForCake           = Flour          (name: "flour 🍞 ",           number: 8  )
    let extractVanilliaForCake = ExtractVanillia(name: "extractVanillia 🍦 ", number: 3  )
    
    let bowl: [Ingredient] = [milkForCake,butterForCake, appleForCake , eggsForCake ,sugarForCake , flourForCake ,  extractVanilliaForCake ]
        func oven (fromArray: [Ingredient])
        {
        for index in 0...6
        { print(" Put \(fromArray[index].number) pieces of \(fromArray[index].name) in the bowl") }
        }
        oven(fromArray: bowl.shuffled())
    
    print("After mixing the ingredients, put them in the oven  🌋 ")
    print("Then you will get a AplleCake  🥧 ")
        }
        }

