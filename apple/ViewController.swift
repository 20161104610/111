//
//  ViewController.swift
//  apple
//
//  Created by 20161104595 on 2018/9/26.
//  Copyright © 2018年 20161104595. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var player: UILabel!
    
    @IBOutlet weak var player1: UITextField!
    
    @IBOutlet weak var player2: UITextField!
    
    @IBAction func zero(_ sender: Any) {
        if re == 1{
            player.text="0"
            re=0
        }
        else{
            player.text = player.text!+"0"
        }
        
    }
    var re = 0//判断player.text前是否存在符号
    var number = 0 //判断加减乘除
    var judge = 0 //决定输出数字的位数
    var add = 0
    @IBAction func one(_ sender: Any) {
        if re == 1{
            player.text="1"
            re=0
        }
        else{
        player.text = player.text!+"1"
        }
    }
    
    @IBAction func two(_ sender: Any) {
        if re == 1{
            player.text="2"
            re=0
        }
        else{
        player.text = player.text!+"2"
        }
    }
    
    @IBAction func three(_ sender: Any) {
        if re == 1{
            player.text="3"
            re=0
        }
        else{
        player.text = player.text!+"3"
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if re == 1{
            player.text="4"
            re=0
        }
        else{
        player.text = player.text!+"4"
        }
    }
    
    
    @IBAction func five(_ sender: Any) {
        if re == 1{
            player.text="5"
            re=0
        }
        else{
        player.text = player.text!+"5"
        }
    }
    
    @IBAction func six(_ sender: Any) {
        if re == 1{
            player.text="6"
            re=0
        }
        else{
        player.text = player.text!+"6"
        }
    }
    
    
    @IBAction func seven(_ sender: Any) {
        if re == 1{
            player.text="7"
            re=0
        }
        else{
        player.text = player.text!+"7"
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        if re == 1{
            player.text="8"
            re=0
        }
        else{
        player.text = player.text!+"8"
        }
    }
    
    @IBAction func nine(_ sender: Any) {
        if re == 1{
            player.text="9"
            re=0
        }
        else{
        player.text = player.text!+"9"
        }
    }
    

    @IBAction func plus(_ sender: Any) {
        judge = 0
        if add == 1{
            let a = Double(player1.text!)!
            let b = Double(player.text!)!
            let c = a + b
             player1.text = String(c)
             player.text = ""
             number = 2
            re = 1
        }else{
            if player.text == ""{
                player.text = "0"
            }else {
                add = 1
                let x = Double(player.text!)!
                player1.text = String(x)
                player.text=""
                number = 2
                re=0
            }
        }
        
    }
    
    
    @IBAction func reduce(_ sender: Any) {
        judge = 0
        if add == 1{
            let a = Double(player1.text!)!
            let b = Double(player.text!)!
            let c = a - b
            player1.text = String(c)
            player.text = ""
            number = 1
            re = 1
            }else{
                  if player.text == ""{
                   player.text = "0"
                    }else {
                      add = 1
                      let x = Double(player.text!)!
                      player1.text = String(x)
                      player.text=""
                      number = 1
                      re=0
            
            }
            
         }
    }
    
    @IBAction func multiply(_ sender: Any) {
        judge = 0
        if add == 1{
            let a = Double(player1.text!)!
            let b = Double(player.text!)!
            let c = a * b
            player1.text = String(c)
            player.text = ""
            number = 3
            re = 1
        }else{
            if player.text == ""{
                player.text = "0"
            }else {
                add = 1
                let x = Double(player.text!)!
                player1.text = String(x)
                player.text=""
                number = 3
                re=0
                add = 1
            }
            
        }
    }
    
    @IBAction func equal(_ sender: Any) {
        var d:Double
        var c:Double
        let x = Double(player1.text!)!
        c=(player.text!as NSString).doubleValue
        if number == 1{
            d = x - c
        }else if number == 2{
            d = x + c
        }else if number == 3{
            d = x * c
        }else if number == 4{
            d = x/(c)
        }else{
            d=1000
        }
        player2.text = String(c)
        if judge == 1{
           player.text = String(format:"%f",d)
        }else{
           player.text = String(format:"%.10f",d)
        }
        re = 1
        judge = 0
        add = 0
        var clear:String = player.text!
        while clear.last == "0"{
            clear.removeLast()
        }
        player.text = clear
    }
    
    @IBAction func except(_ sender: Any) {
        
        if add == 1{
            
                    let a = Double(player1.text!)!
                    let b = Double(player.text!)!
                    let c = a / b
                    player1.text = String(c)
                    player.text = ""
                    number = 4
                    re = 1
                    judge = 0
                    }
        else{
              if player.text == ""{
                 player.text = "0"
            }
              else {
                     add = 1
                     let y = Double(player.text!)!
                     player1.text = String(y)
                     player.text = ""
                     number = 4
                     re = 0
                     add = 1
                     judge = 0
                }
            
       }
        

    }
    
    @IBAction func little(_ sender: Any) {
        if judge == 0 {
           player.text = player.text!+"."
         }
        judge = 1
    }
    
    @IBAction func clear(_ sender: Any) {
        player.text=""
        player1.text=""
        add = 0
        judge = 0
    }
   
    @IBAction func percent(_ sender: Any) {
        let count = Double(player.text!)!
        let count2 = count * 0.01
        player.text = String(count2)
        re = 0
       
    }
    
    @IBAction func change(_ sender: Any) {
        
        let count = Double(player.text!)!
        let count2 = -count
        player.text = String(count2)
        re = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

