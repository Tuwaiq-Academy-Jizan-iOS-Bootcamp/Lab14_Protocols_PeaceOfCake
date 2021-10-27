//
//  ViewController.swift
//  NouraA
//
//  Created by NoON .. on 20/03/1443 AH.
//

import UIKit
protocol appleCake {
    var name: String {get}
    var number: Int {get set}
    var Description:String {get set}
}

class DairyProduct:appleCake{
    var name: String
    var number: Int
    var Description: String
    init(name:String, number:Int, Description:String){
        self.name = name
        self.number = number
        self.Description = Description
    
}
}
class  Milk:DairyProduct{
    
    }
class Butter:DairyProduct{
    
}
class FruitProduct:appleCake{
        var name: String
        var number: Int
    var Description: String
    init(name:String, number:Int, Description:String){
            self.name = name
            self.number = number
        self.Description = Description
        
}
}
    class Apple:FruitProduct{
    }
class OtherProduct:appleCake{
    var name: String
    var number: Int
var Description: String
init(name:String, number:Int, Description:String){
        self.name = name
        self.number = number
    self.Description = Description
    }
}
class aggs:OtherProduct{
    
}
class sugar:OtherProduct{
    
}
class flour:OtherProduct{
    
}
class vanillia:OtherProduct{
    
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let milk = Milk(name: "milk", number: 2, Description: "pure Milk🥛")
        let butter = Butter(name: "butter", number: 2, Description: "Darigold Butter")
        let fruit = FruitProduct(name: "apple", number: 2, Description: "Apple🍎")
        let aggs = aggs(name: "aggs", number: 3, Description: "Aggs🥚")
        let sugar = sugar(name: "sugar", number: 2, Description: "smooth sugar🎋")
        let flour = flour(name: "flour", number: 3, Description: "deluxe flour")
        let vanillia = vanillia(name: "vanillia", number: 1, Description: "Vanillia boder")
    
        let bowl: [appleCake] = [milk,butter,fruit,aggs,sugar,flour,vanillia]
        oven(array: bowl)
        }

}
    func oven (array:[appleCake]){
        for index in 0...6{
            print("\(array[index].Description)")
            print("\(array[index].number)")
        }
                
    }
