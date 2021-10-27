//
//  ViewController.swift
//  Fatan Abdullah Lab14.
//
//  Created by Faten Abdullh salem on 21/03/1443 AH.
//

import UIKit
protocol appleCake {
var name: String {get}
var number: Int {get set}
var description:String {get set}
    
}

class Dairy:appleCake {
var name:String
var number:Int
var description:String
    
init(name:String,number:Int,description:String){
        self.name = name
        self.number = number
        self.description = description
}
}
    
    class Fruit:appleCake {
    
var name:String
var number:Int
var description:String
    
init(name:String, number:Int, description:String){
            self.name = name
            self.number = number
            self.description = description

    }
    }
class  other:appleCake{
    var name:String
    var number:Int
    var description:String
        
init(name:String, number:Int, description:String){
                self.name = name
                self.number = number
                self.description = description
    
}
}
class milk:Dairy{
}
class butter:Dairy{
}
class apple:Fruit{
}
class aggs:other{
}
class sugar:other{
}
class flour:other{
}
class vanillia:other{
    
}

class ViewController: UIViewController {


override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view.
    let milk = milk(name: "Milk", number: 3,description:"pure milk")
    let butter = butter(name:"Butter",number: 3,description:"Darigold Butter")
    let fruit = Fruit(name: "apple", number: 5, description: "Apple")
    let aggs = aggs(name: "aggs", number: 3, description: "Aggs")
    let sugar = sugar(name:"Sugar", number: 3, description: "Sugar")
    let flour = flour(name: "Flour", number: 2, description: "flour")
    let vanillia = vanillia(name: "Vanilli", number: 2, description: "vanillia")
    
    let bowl: [appleCake] = [milk,butter,fruit,aggs,sugar,flour,vanillia]
    oven(array: bowl)
}
}
func oven (array:[appleCake]){
    for index in 0...6{
        print("\(array[index].description)")
        print("\(array[index].number)")
    }

}

