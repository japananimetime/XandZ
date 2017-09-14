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
	
	var arrayX=[0,0,0,0,0,0,0,0,0]
	var arrayO=[0,0,0,0,0,0,0,0,0]
	
	var arrayWin = [[Int]]()
	var arrayWin1 = [1,1,1,0,0,0,0,0,0]
	var arrayWin2 = [0,0,0,1,1,1,0,0,0]
	var arrayWin3 = [0,0,0,0,0,0,1,1,1]
	var arrayWin4 = [1,0,0,0,1,0,0,0,1]
	var arrayWin5 = [0,0,1,0,1,0,1,0,0]
	var arrayWin6 = [1,0,0,1,0,0,1,0,0]
	var arrayWin7 = [0,1,0,0,1,0,0,1,0]
	var arrayWin8 = [0,0,1,0,0,1,0,0,1]
	
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
		arrayX=[0,0,0,0,0,0,0,0,0]
		arrayO=[0,0,0,0,0,0,0,0,0]
	}
	func getRandomColor() -> UIColor{
		
		let randomRed:CGFloat = CGFloat(drand48())
		
		let randomGreen:CGFloat = CGFloat(drand48())
		
		let randomBlue:CGFloat = CGFloat(drand48())
		
		return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
		
	}
	@IBAction func FieldButton(_ sender: UIButton) {
		arrayWin.append(arrayWin1)
		arrayWin.append(arrayWin2)
		arrayWin.append(arrayWin3)
		arrayWin.append(arrayWin4)
		arrayWin.append(arrayWin5)
		arrayWin.append(arrayWin6)
		arrayWin.append(arrayWin7)
		arrayWin.append(arrayWin8)
		if counter%2==0{
			switch sender.currentTitle!{
			case "1":
				if Field1.text!.isEmpty{
					Field1.text = "X"
					arrayX[0]=1
				}
			case "2":
				if Field2.text!.isEmpty{
					Field2.text = "X"
					arrayX[1]=1
				}
			case "3":
				if Field3.text!.isEmpty{
					Field3.text = "X"
					arrayX[2]=1
				}
			case "4":
				if Field4.text!.isEmpty{
					Field4.text = "X"
					arrayX[3]=1
				}
			case "5":
				if Field5.text!.isEmpty{
					Field5.text = "X"
					arrayX[4]=1
				}
			case "6":
				if Field6.text!.isEmpty{
					Field6.text = "X"
					arrayX[5]=1
				}
			case "7":
				if Field7.text!.isEmpty{
					Field7.text = "X"
					arrayX[6]=1
				}
			case "8":
				if Field8.text!.isEmpty{
					Field8.text = "X"
					arrayX[7]=1
				}
			case "9":
				if Field9.text!.isEmpty{
					Field9.text = "X"
					arrayX[8]=1
				}
			default: break
			}
		}
		else{
			switch sender.currentTitle!{
			case "1":
				if Field1.text!.isEmpty{
					Field1.text = "O"
					arrayO[0]=1
				}
			case "2":
				if Field2.text!.isEmpty{
					Field2.text = "O"
					arrayO[1]=1
				}
			case "3":
				if Field3.text!.isEmpty{
					Field3.text = "O"
					arrayO[2]=1
				}
			case "4":
				if Field4.text!.isEmpty{
					Field4.text = "O"
					arrayO[3]=1
				}
			case "5":
				if Field5.text!.isEmpty{
					Field5.text = "O"
					arrayO[4]=1
				}
			case "6":
				if Field6.text!.isEmpty{
					Field6.text = "O"
					arrayO[5]=1
				}
			case "7":
				if Field7.text!.isEmpty{
					Field7.text = "O"
					arrayO[6]=1
				}
			case "8":
				if Field8.text!.isEmpty{
					Field8.text = "O"
					arrayO[7]=1
				}
			case "9":
				if Field9.text!.isEmpty{
					Field9.text = "O"
					arrayO[8]=1
				}
			default: break
			}
		}
		
		for j in 0...7{
			if arrayX.elementsEqual(arrayWin[j]) {
				WinOrLose.text="X WIN!!!"
				WinOrLose.textColor=getRandomColor()
				WinOrLose.backgroundColor=getRandomColor()
			}
			else if arrayO.elementsEqual(arrayWin[j]){
				WinOrLose.text="O WIN!!!"
				WinOrLose.textColor=getRandomColor()
				WinOrLose.backgroundColor=getRandomColor()
			}
		}
		
		if(counter==8){
			if (WinOrLose.text?.isEmpty)!{
				WinOrLose.text="DRAW!!!"
			}
			else{
				WinOrLose.text="Don't tap on me, game already ended!"
			}
			WinOrLose.textColor=getRandomColor()
			WinOrLose.backgroundColor=getRandomColor()
		}
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
