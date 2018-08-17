//
//  CustomAlert.swift
//  nb
//
//  Created by Jack on 16/9/28.
//  Copyright © 2016年 毕研超. All rights reserved.
//

import UIKit

//适配

let kScreenWidth = UIScreen.main.bounds.width

let Multiplier:CGFloat = kScreenWidth / 375

func RealValue(v:CGFloat)->CGFloat {
    return v * Multiplier
}



@objc protocol ClickAlertDelegate:NSObjectProtocol
{
    @objc optional func clickAlertButton(button:UIButton)
}


public class CustomAlert: UIView {
    
    var alertWindow = UIWindow()
    let mainView = UIView() //承载内容View
    let tipLabel = UILabel()
    let contentLabel = UILabel()
    let cancelButton = UIButton.init(type: UIButtonType.custom)
    let sureButton   = UIButton.init(type: UIButtonType.custom)
    
    
   weak  var delegate:ClickAlertDelegate!
    
  
    
    //重写init方法和oc一样
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        //背景
        let backView:UIView = UIView(frame: self.frame)
        backView.backgroundColor = UIColor.black
        backView.alpha = 0.35
        self.addSubview(backView)

        mainView.frame = CGRect(x: (self.frame.width - 270)/2, y: (self.frame.height - 132)/2, width: 270, height: 132)
        mainView.backgroundColor = UIColor.white
        mainView.layer.cornerRadius = 10
        mainView.clipsToBounds = true
        self.addSubview(mainView)
        
        
        tipLabel.frame = CGRect(x: 0, y: 16, width: mainView.frame.size.width, height: 16)
        tipLabel.font = UIFont.systemFont(ofSize: 16)
        tipLabel.textAlignment = .center
        mainView.addSubview(tipLabel)
        
        
        
        contentLabel.frame = CGRect(x: 18, y: tipLabel.frame.maxY + 7, width: 270 - 36, height: 50)
        contentLabel.font = UIFont.systemFont(ofSize: 14)
        contentLabel.textAlignment = .center
        contentLabel.numberOfLines = 0
        mainView.addSubview(contentLabel)
        
       
        
        cancelButton.frame = CGRect(x: 0, y: contentLabel.frame.maxY + 7, width: 270/2 - 1, height: 44)
        cancelButton.tag = 0
       
        cancelButton.setTitleColor(Color(r: 173, g: 142, b: 101, a: 1), for: UIControlState.normal)
        cancelButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        cancelButton.addTarget(self, action: Selector(("buttonClick:")), for:.touchUpInside)
        mainView.addSubview(cancelButton)

      
        
        sureButton.frame = CGRect(x: 270/2, y: contentLabel.frame.maxY + 7,width: 270/2, height: 44)
        sureButton.tag = 1
        sureButton.setTitleColor(Color(r: 173, g: 142, b: 101, a: 1), for: UIControlState.normal)
        sureButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        sureButton.addTarget(self, action: Selector(("buttonClick:")), for:.touchUpInside)
        mainView.addSubview(sureButton)
        
        
     
        
    }
    
   

    //赋值方法
    public func setAlert(title: String?, message: String?, cancelButtonTitle: String?, sureButtonTitle: String?,delegate:Any){
    
        let isShow = UserDefaults.standard.bool(forKey: "SwiftIsShowAlert")
       
        if isShow {
          
            return
        }
        
        
        self.delegate = delegate as? ClickAlertDelegate
        self.tipLabel.text = title
        self.contentLabel.text = message
        self.cancelButton.setTitle(cancelButtonTitle, for: .normal)
        self.sureButton.setTitle(sureButtonTitle, for: .normal)
    
        let attributes = [kCTFontAttributeName: contentLabel.font]
        let size = contentLabel.text!.boundingRect(with: CGSize(width: 270 - 36,height: 0), options: NSStringDrawingOptions.usesLineFragmentOrigin , attributes:attributes as [NSAttributedStringKey : Any]  as [NSAttributedStringKey : Any], context: nil) //获取文本宽高
        
        contentLabel.frame = CGRect(x: 16, y: tipLabel.frame.maxY + 7, width: 270 - 32, height: size.height)
    
       //分割线
        let lineImage:UIImageView = UIImageView(frame: CGRect(x: 0, y: contentLabel.frame.maxY + 16, width: 270, height: 0.5))
        lineImage.backgroundColor = Color(r: 228, g: 228, b: 228, a: 1)
        
        mainView.addSubview(lineImage)
        
       
        let lineImage1:UIImageView = UIImageView(frame: CGRect(x: 270/2 - 1,y: contentLabel.frame.maxY + 16 , width: 0.5, height:44))
        lineImage1.backgroundColor = Color(r: 228, g: 228, b: 228, a: 1)
        mainView.addSubview(lineImage1)
        
        
        
        
        cancelButton.frame = CGRect(x: 0, y: contentLabel.frame.maxY  + 16, width: 270/2 - 1, height: 44)
        sureButton.frame = CGRect(x: 270/2, y: contentLabel.frame.maxY  + 16,width: 270/2, height: 44)

    
        
        if (title == nil) {
            tipLabel.isHidden = true
            contentLabel.frame = CGRect(x: 16, y: 16, width: mainView.frame.size.width - 32, height: size.height)
            
            lineImage.frame = CGRect(x: 0, y: contentLabel.frame.maxY + 16, width: 270, height: 0.5)
            lineImage1.frame = CGRect(x: 270/2 - 1, y: contentLabel.frame.maxY + 16, width: 0.5, height: 44)
            
            if (sureButtonTitle == nil) {
                lineImage1.isHidden = true
                sureButton.isHidden = true
                cancelButton.frame = CGRect(x: 0, y: contentLabel.frame.maxY + 16, width: mainView.frame.size.width, height: 44)
                
            }else{
                
                cancelButton.frame = CGRect(x: 0, y: contentLabel.frame.maxY + 16, width: mainView.frame.size.width/2 - 1, height: 44)
                sureButton.frame = CGRect(x: mainView.frame.size.width/2, y: contentLabel.frame.maxY + 16, width: mainView.frame.size.width/2, height: 44)
                
            }
            
        }
        
        if (sureButtonTitle == nil) {
            sureButton.isHidden = true
            lineImage1.isHidden = true
            cancelButton.frame = CGRect(x: 0, y: contentLabel.frame.maxY + 16, width: mainView.frame.size.width, height: 44)
        }
        
        if (cancelButtonTitle == nil) {
            cancelButton.isHidden = true
            lineImage1.isHidden = true
            sureButton.frame = CGRect(x: 0, y: contentLabel.frame.maxY + 16, width: mainView.frame.size.width, height: 44)
        }
        

        
        let height:CGFloat =  contentLabel.frame.maxY + 44 + 16
        
         mainView.frame = CGRect(x: (self.frame.width - 270)/2, y: (self.frame.height - height)/2, width: 270, height: height)
        
        
        
        //这里可以按照自己需求加上动画，这里不再写
        self.alertWindow.frame = self.frame
        self.alertWindow.backgroundColor = UIColor.clear
        self.alertWindow.windowLevel = UIWindowLevelAlert + 1
        
        self.alertWindow.addSubview(self)
        self.alertWindow.makeKeyAndVisible()
        
        UserDefaults.standard.set(true, forKey: "SwiftIsShowAlert")
        UserDefaults.standard.synchronize()
        
    }
    
    
    func buttonClick(sender: UIButton) {
        
      
        if self.delegate != nil && self.delegate.responds(to: Selector(("clickAlertButton:"))){
            self.delegate.clickAlertButton!(button: sender)
        }
        
        
       self.shutAlert()
        
        
    }
   

    func shutAlert() {
    
    
        
        self.removeFromSuperview()
        self.alertWindow.resignKey()
     
        
        UserDefaults.standard.set(false, forKey: "SwiftIsShowAlert")
        UserDefaults.standard.synchronize()
    
    }
    
   
    func Color(r: CGFloat, g:CGFloat, b:CGFloat, a: CGFloat) -> UIColor {
        return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    
    
    //获取字符串高度
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    


}
