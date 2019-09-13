//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Yasuaki Osada on 2019/09/01.
//  Copyright © 2019 Yasuaki Osada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var imageView0: UIImageView!
    
    //タイマー
    var imageIndex = 0
    
    var timer: Timer!
    
    //タイマー用の時間のための変数
    var timer_sec: Float = 0
    

    @IBAction func onNext(_ sender: AnyObject) {
        
        if self.timer == nil{
        //表示している画像の番号を1増やす
        dispImageNo += 1
        //表示している画像の番号を元に画像を表示する
        displayImage()
    }
    }
    
    @IBAction func onPrev(_ sender: AnyObject) {
        
        if self.timer == nil{
        //表示している画像の番号を1減らす
        dispImageNo -= 1
        //表示している画像の番号を元に画像を表示する
        displayImage()
    }
    }
    
    //表示している画像の番号
    var dispImageNo = 0
    
    //表示してる画像の番号を元に画像を表示する
    func displayImage(){
        
        //画像の名前の配列
        let imageNameArray = [
        "hikouki",
            "fune",
            "chari",
        ]
        
        
        //画像の番号が正常な範囲を指しているかチェック
        
        //範囲より下を指している場合、最後の画像を表示
        if dispImageNo < 0{
            dispImageNo = 2
        }
        
        //範囲より上を指している場合、最初の画像を表示
        if dispImageNo > 2{
            dispImageNo = 0
        }
        
        
        //表示している画像の番号から名前を取り出し
        let name = imageNameArray[dispImageNo]
        
        //画像を読み込み
        let image = UIImage(named: name)
        
        //ImageViewに読み込んだ画像をセット
        imageView0.image = image
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let image = UIImage(named: "chari")
        imageView0.image = image
        
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.image = imageView0.image
        print("画像")
        if self.timer != nil{
            self.timer.invalidate()
            self.timer = nil

        }    }
    @IBAction func unwind(_ segeu: UIStoryboardSegue){
    }
    @IBAction func tapAction(_ sender: Any) {
        
        
    }
    
    
    
    @objc func onTimer(_ timer: Timer){
        //表示している画像の番号を1増やす
        dispImageNo += 1
        
        //表示している画像の番号を元に画像を表示する
        displayImage()
        
    }

    @IBOutlet weak var startSlide: UIButton!
    
    
    
    @IBAction func startSlide(_ sender: Any) {
        if self.timer == nil{
        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
            startSlide.setTitle("停止", for: .normal)
        }else
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
            startSlide.setTitle("再生", for: .normal)
            if self.timer == nil{
                
                
            }
        }
        
        


        //表示している画像の番号を1増やす
        
        if dispImageNo == 1 {
            dispImageNo += 1
        }else if dispImageNo < 2{
            dispImageNo += 1
        }else if dispImageNo < 2{
            dispImageNo -= 2
        }

        
        //表示している画像の番号を元に画像を表示する
        displayImage()
        
    }
    
    
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    
    
    }
}


