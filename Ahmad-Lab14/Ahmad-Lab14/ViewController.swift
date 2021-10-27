//
//  ViewController.swift
//  Ahmad-Lab14
//
//  Created by Ahmad Barqi on 21/03/1443 AH.
//
import UIKit

protocol RespectTheCake {
    var name:String {get}
    var number:Int {get set}
    var descreption:String {get set}
}
class DairyProduct: RespectTheCake{
    var name: String
    var number: Int
    var descreption: String
    init(name:String,number:Int,descreption:String){
        self.name = name
        self.number = number
        self.descreption = descreption
    }
}
class FruitProduct: RespectTheCake{
    var name: String
    var number: Int
    var descreption: String
    init(name:String,number:Int,descreption:String){
        self.name = name
        self.number = number
        self.descreption = descreption
    }
}
class Otherproduct: RespectTheCake {
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
    var butter = DairyProduct.init(name: "Butter", number: 1, descreption: "Unsalted Butter")
    var milk = DairyProduct.init(name: "Milk", number: 1, descreption: "Cow milk")
    var apples = FruitProduct.init(name: "Apple", number: 2, descreption: "Peeled and sliced Apples")
    var eggs = Otherproduct.init(name: "Egg", number: 2, descreption: "Chicken eggs")
    var sugar = Otherproduct.init(name: "Sugar", number: 1, descreption: "Cup of Sugar")
    var flour = Otherproduct.init(name: "Flour", number: 2, descreption: "Cups of wheat flour")
    var vanillia = Otherproduct.init(name: "Vanillia Extract", number: 1, descreption: "Tablespoone of Vanillia extract")
    override func viewDidLoad() {
        super.viewDidLoad()
        let bowl: [RespectTheCake] = [butter,milk,apples,eggs,sugar,flour,vanillia]
        func oven(array: [RespectTheCake]){
            for index in 0..<bowl.count {
                print("\(array[index].name)")
            }
        }
        oven(array: bowl.shuffled())
    }
}
