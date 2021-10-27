//
//  ViewController.swift
//  NASSEER_ASEERI_12
//
//  Created by Nasser Aseeri on 17/03/1443 AH.
/*

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //===========================================
    
    
    class Hero {
        var name: String
        var heal = 10
        var sword: Int
        var megaFist: Int
        var lifePoint: Int
        init (name : String , heal: Int, sword: Int, megaFist: Int, lifePoint: Int) {
            self.name = "lazarud"
            self.heal = 10
            self.sword = -15
            self.megaFist = -20
            self.lifePoint = 160
            
            }
    }
//==================================
        
    class wizard {
        var name1: String
        var heal1 : Int
        var fireBall : Int
        var stickWise : Int
        var lifePoint1 : Int
        init(name1: String , heal1: Int, fireBall: Int, stickWise: Int, lifePoint1: Int){
            super.name1(name1: "Elvin", heal1: 15, fireBall: -30, stickWise: -20, lifePoint1: 140)
            self.heal1 = 15
            self.fireBall = -20
            self.stickWise = -30
            self.lifePoint1 = 140
        }
        
        
        
       

        

     
        }
  */
//===========================================================
        struct weapons {
                var name = String()
                var damage = Int()
                var attackAction = String()
                var specialEffect = Int()
         }
//===========================================================
            struct powers {
                var name = String()
                var damage = Int()
                var attackAction = String()
                var specialEffect = Int()
}
var power = powers(name: "Lazarus", damage: -10, attackAction: <#T##String#>, specialEffect: <#T##Int#>)

    print("Lazarus uses his powerfull sword to his opponent -10 Damage")
        
        /*
 //==========\\

    //============\\
    //Weapons Skills\\
    struct Weapon {
        var name: String
        var damage: Int
        var attackAction: String
        func swordAvtion() {
            print("Lazarus uses his powerfull sword to his opponent -10 Damage")
        }
        func stickAction() {
            print("Elvin uses his magical and strange stick to beat his opponent -15 Damage")
        }
    }
    //==========\\
    //Power Skills\\
    struct Power {
        var name: String
        var damage: Int
        var attackAction: String
        var specialEffect: Int
        func fistAction() {
            print("Lazarus uses his Fist to beat his opponent -30 Damage and get +2 Life Points")
        }
        func fireBallAction() {
            print("Elvin uses the powerful fire spell learned centuries ago -20 Damage and empower his attack by 10")
        }
    }
}
}

*/
