//
//  ViewController.swift
//  DimitriSMITH_Protocol_Demo
//
//  Created by Dimitri SMITH on 26/10/2021.
//

import UIKit


protocol CarousselWithHorse {
    var name: String {get}
    var age: Int {get set}
    var peopleSize: Int {get set}
    var peopleWeight: Int {get set}
    
    func discribeOurCaroussel ()
    func whoUseTheCaroussel(name: String) -> String
}

class Person {
    func discribeSuperClass() {
        print("The Super Class is Person")
    }
}
class Child:Person, CarousselWithHorse {
    var name: String
    var age: Int
    var peopleSize: Int
    var peopleWeight: Int
    
    init(name:String, age:Int, peopleSize:Int, peopleWeight:Int) {
        self.name = name
        self.age = age
        self.peopleSize = peopleSize
        self.peopleWeight = peopleWeight
    }
    
    func discribeOurCaroussel() {
        print("My Child use The Caroussel with Horse !")
    }
    func whoUseTheCaroussel(name: String) -> String {
        var carousselUser = ""
        carousselUser = "\(name) use the Caroussel"
        return carousselUser
    }
    
}
class Father: Person {
}
struct Mother: CarousselWithHorse {
    var name: String
    var age: Int
    var peopleSize: Int
    var peopleWeight: Int
    func discribeOurCaroussel() {
        print("The Mother want to use the Caroussel with her Child")
    }
    
    func whoUseTheCaroussel(name: String) -> String {
        var carousselUser = ""
        carousselUser = "\(name) use the Caroussel"
        return carousselUser
    }
    
    
    
    
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var theChild = Child(name: "Hugo", age: 8, peopleSize: 120, peopleWeight: 30)
        var theFather = Father()
        var theMother = Mother(name: "Miriam", age: 30, peopleSize: 165, peopleWeight: 60)
        
        var familyUsedTheCaroussel: [CarousselWithHorse] = [theChild,theMother]
        var test = ["a","b","c"]
        
        displayUserFromArray(fromArray: familyUsedTheCaroussel)
        //loopInArray(fromArray: test)
        
        
    
    }
    func displayUserFromArray (fromArray: [CarousselWithHorse]){
        for index in 0...1 {
            //print(fromArray(element))
            print("\(fromArray[index].name)")
        }
    }
    
    func loopInArray(fromArray: [String]) {
        for element in fromArray{
            print(element)
        }
    }


}

