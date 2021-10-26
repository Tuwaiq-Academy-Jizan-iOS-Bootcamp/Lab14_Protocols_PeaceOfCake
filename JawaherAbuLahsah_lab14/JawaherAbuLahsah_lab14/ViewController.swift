//
//  ViewController.swift
//  JawaherAbuLahsah_lab14
//
//  Created by Jawaher Mohammad on 20/03/1443 AH.
//

import UIKit
//Create protocol
protocol IngredientProtocol{
    var name: String {get}
    var number: Int {get set}
    var description: String {get set}
    
}
//Create class
class DairyProduct {
    func displayTheProduct(name:String,number:Int,description:String) {
    print(name,":",number,description)
    }
}
class Milk:DairyProduct, IngredientProtocol {
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String) {
        self.name = name
        self.number = number
        self.description = description
    }
}
class Butter: DairyProduct, IngredientProtocol{
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String) {
        self.name = name
        self.number = number
        self.description = description
    }
}
class FruitProduct {
    func displayTheProduct(name:String,number:Int,description:String) {
    print(name,":",number,description)
    }
}
class Apple:FruitProduct, IngredientProtocol{
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String) {
        self.name = name
        self.number = number
        self.description = description
    }
}
class OtherProduct {
    func displayTheProduct(name:String,number:Int,description:String) {
    print(name,":",number,description)
    }
}
class Eggs:OtherProduct {
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String) {
        self.name = name
        self.number = number
        self.description = description
    }
}
class Sugar:OtherProduct {
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String) {
        self.name = name
        self.number = number
        self.description = description
    }
}
class Flour:OtherProduct {
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String) {
        self.name = name
        self.number = number
        self.description = description
    }
}
class ExtractVanillia:OtherProduct {
    var name: String
    var number: Int
    var description: String
    init(name:String,number:Int,description:String) {
        self.name = name
        self.number = number
        self.description = description
    }
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let firstIngredient = Milk(name: "Milk🥛" , number: 1, description: "cup milk")
        let secondIngredient = Butter(name: "Butter🧈", number: 1, description: "cup butter")
        let thirdIngredient = Apple(name: "Apple🍎", number: 2, description: "apple")
        let product1 = Eggs(name: "Egg🥚", number: 4, description: "eggs")
        let product2 = Sugar(name: "Suger🧂", number: 1, description: "cup suger")
        let product3 = Flour(name: "Flour🍚", number: 3, description: "cup all purpose flour")
        let product4 = ExtractVanillia(name: "Extract Vanillia🫕", number: 1, description: "teaspoon extract vanillia")
        
        
        //Create Array
        let bowlForMixIngredients : [IngredientProtocol] = [firstIngredient,secondIngredient,thirdIngredient]
        
        let oven = bowlForMixIngredients
        
        
        print("---🍰French Apple Cake🍰---")
        
        firstIngredient.displayTheProduct(name: firstIngredient.name, number: firstIngredient.number, description: firstIngredient.description)
        secondIngredient.displayTheProduct(name: secondIngredient.name, number: secondIngredient.number, description: secondIngredient.description)
        thirdIngredient.displayTheProduct(name: thirdIngredient.name, number: thirdIngredient.number, description: thirdIngredient.description)
        product1.displayTheProduct(name: product1.name, number: product1.number, description: product1.description)
        product2.displayTheProduct(name: product2.name, number: product2.number, description: product2.description)
        product3.displayTheProduct(name: product3.name, number: product3.number, description: product3.description)
        product4.displayTheProduct(name: product4.name, number: product4.number, description: product4.description)
        
        
        displayTheIngredients(array: bowlForMixIngredients)
        
        print(oven[0].name,",",oven[1].name,",",oven[2].name,"and other ingredients, after mixing put them in the oven tray and into the oven")
        
        print("Bake it 45 minutes 🍰")
        print("---Bon Appétit 😋🍽---")
    }
    
    //Print Array
    func displayTheIngredients (array: [IngredientProtocol]){
        print("Put all ingredients in the bowl : ")
        for index in 0..<array.count{
               print("\(array[index].name)")
           }
        print("Mix it with the other ingredients")
       }
}

