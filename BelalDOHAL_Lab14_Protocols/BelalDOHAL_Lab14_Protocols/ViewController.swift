import UIKit
//------------------------// Cake Protocol //
protocol RespectTheCake {
    var name:String {get}
    var number:Int {get set}
    var descreption:String {get set}
}
//------------------------// Class Dairy Product //
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
//------------------------// Class Fruit Product //
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
//------------------------// Class Other Product //
class OtherProduct: RespectTheCake {
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
//------------------------// Dairy Product //
    var butter = DairyProduct(name: "Butter", number: 1, descreption: "Unsalted Butter")
    var milk = DairyProduct(name: "Milk", number: 1, descreption: "Cow milk")
//------------------------// Fruit Product //
    var apples = FruitProduct(name: "Apple", number: 2, descreption: "Peeled and sliced Apples")
//------------------------// Other Product //
    var eggs = OtherProduct(name: "Egg", number: 2, descreption: "Chicken eggs")
    var sugar = OtherProduct(name: "Sugar", number: 1, descreption: "Cup of Sugar")
    var flour = OtherProduct(name: "Flour", number: 2, descreption: "Cups of wheat flour")
    var vanillia = OtherProduct(name: "Vanillia Extract", number: 1, descreption: "Tablespoone of Vanillia extract")
    override func viewDidLoad() {
        super.viewDidLoad()
//------------------------// Bowl //
        let bowl: [RespectTheCake] = [butter,milk,apples,eggs,sugar,flour,vanillia]
//------------------------// Function Of Oven //
        func oven(array: [RespectTheCake]){
            for index in 0..<array.count {
                print("\(array[index].name)")
            }
        }
//------------------------// Bowl In The Oven //
        oven(array: bowl.shuffled())
    }
}// E.Z.P.Z 👌🏽
