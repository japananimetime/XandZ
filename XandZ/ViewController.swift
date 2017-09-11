//
//  ViewController.swift
//  XandZ
//
//  Created by Shinrai Hikaro on 9/11/17.
//  Copyright © 2017 Shinrai Hikaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var WinOrLose: UILabel!
    
    @IBOutlet weak var Field3: UILabel!
    
    @IBOutlet weak var Field2: UILabel!
    
    @IBOutlet weak var Field1: UILabel!
    
    @IBOutlet weak var Field6: UILabel!
    
    @IBOutlet weak var Field5: UILabel!
    
    @IBOutlet weak var Field4: UILabel!

    @IBOutlet weak var Field7: UILabel!
    
    @IBOutlet weak var Field8: UILabel!
    
    @IBOutlet weak var Field9: UILabel!
    
    var counter = 0
    
    @IBAction func NewGame(_ sender: UIButton) {
        Field1.text = ""
        Field2.text = ""
        Field3.text = ""
        Field4.text = ""
        Field5.text = ""
        Field6.text = ""
        Field7.text = ""
        Field8.text = ""
        Field9.text = ""
        WinOrLose.text = ""
        counter = 0
        WinOrLose.backgroundColor = UIColor.clear
    }
    func getRandomColor() -> UIColor{
        
        let randomRed:CGFloat = CGFloat(drand48())
        
        let randomGreen:CGFloat = CGFloat(drand48())
        
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    @IBAction func FieldButton(_ sender: UIButton) {
        if counter%2==0{
            switch sender.currentTitle!{
                case "1":
                    if Field1.text!.isEmpty{
                        Field1.text = "X"
                    }
                case "2":
                    if Field2.text!.isEmpty{
                        Field2.text = "X"
                    }
                case "3":
                    if Field3.text!.isEmpty{
                        Field3.text = "X"
                    }
                case "4":
                    if Field4.text!.isEmpty{
                        Field4.text = "X"
                    }
                case "5":
                    if Field5.text!.isEmpty{
                        Field5.text = "X"
                    }
                case "6":
                    if Field6.text!.isEmpty{
                        Field6.text = "X"
                    }
                case "7":
                    if Field7.text!.isEmpty{
                        Field7.text = "X"
                    }
                case "8":
                    if Field8.text!.isEmpty{
                        Field8.text = "X"
                    }
                case "9":
                    if Field9.text!.isEmpty{
                        Field9.text = "X"
                    }
                default: break
            }
        }
        else{
            switch sender.currentTitle!{
            case "1":
                if Field1.text!.isEmpty{
                    Field1.text = "O"
                }
            case "2":
                if Field2.text!.isEmpty{
                    Field2.text = "O"
                }
            case "3":
                if Field3.text!.isEmpty{
                    Field3.text = "O"
                }
            case "4":
                if Field4.text!.isEmpty{
                    Field4.text = "O"
                }
            case "5":
                if Field5.text!.isEmpty{
                    Field5.text = "O"
                }
            case "6":
                if Field6.text!.isEmpty{
                    Field6.text = "O"
                }
            case "7":
                if Field7.text!.isEmpty{
                    Field7.text = "O"
                }
            case "8":
                if Field8.text!.isEmpty{
                    Field8.text = "O"
                }
            case "9":
                if Field9.text!.isEmpty{
                    Field9.text = "O"
                }
            default: break
            }
        }
        
        if (Field1.text=="X"  && Field5.text=="X" && Field9.text=="X") || (Field1.text=="O" && Field5.text=="O" && Field9.text=="O"){
            WinOrLose.text="YOU WIN!!!"
            WinOrLose.textColor=getRandomColor()
            WinOrLose.backgroundColor=getRandomColor()
        }
        if (Field7.text=="X"  && Field5.text=="X" && Field3.text=="X") || (Field5.text=="O" && Field7.text=="O" && Field3.text=="O"){
            WinOrLose.text="YOU WIN!!!"
            WinOrLose.textColor=getRandomColor()
            WinOrLose.backgroundColor=getRandomColor()
        }
        if (Field7.text=="X"  && Field8.text=="X" && Field9.text=="X") || (Field7.text=="O" && Field8.text=="O" && Field9.text=="O"){
            WinOrLose.text="YOU WIN!!!"
            WinOrLose.textColor=getRandomColor()
            WinOrLose.backgroundColor=getRandomColor()
        }
        if (Field4.text=="X"  && Field5.text=="X" && Field6.text=="X") || (Field4.text=="O" && Field5.text=="O" && Field6.text=="O"){
            WinOrLose.text="YOU WIN!!!"
            WinOrLose.textColor=getRandomColor()
            WinOrLose.backgroundColor=getRandomColor()
        }
        if (Field1.text=="X"  && Field2.text=="X" && Field3.text=="X") || (Field1.text=="O" && Field2.text=="O" && Field3.text=="O"){
            WinOrLose.text="YOU WIN!!!"
            WinOrLose.textColor=getRandomColor()
            WinOrLose.backgroundColor=getRandomColor()
        }
        if (Field1.text=="X"  && Field4.text=="X" && Field7.text=="X") || (Field1.text=="O" && Field4.text=="O" && Field7.text=="O"){
            WinOrLose.text="YOU WIN!!!"
            WinOrLose.textColor=getRandomColor()
            WinOrLose.backgroundColor=getRandomColor()
        }
        if (Field2.text=="X"  && Field5.text=="X" && Field8.text=="X") || (Field2.text=="O" && Field5.text=="O" && Field8.text=="O"){
            WinOrLose.text="YOU WIN!!!"
            WinOrLose.textColor=getRandomColor()
            WinOrLose.backgroundColor=getRandomColor()
        }
        if (Field3.text=="X"  && Field6.text=="X" && Field9.text=="X") || (Field3.text=="O" && Field6.text=="O" && Field9.text=="O"){
            WinOrLose.text="YOU WIN!!!"
            WinOrLose.textColor=getRandomColor()
            WinOrLose.backgroundColor=getRandomColor()
        }
        print (sender.currentTitle!)
        counter=counter+1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

