//
//  ViewController.swift
//  sample
//
//  Created by ravi kumar on 02/07/14.
//  Copyright (c) 2014 ravi kumar. All rights reserved.
//

import UIKit
var segments=UISegmentedControl();
var sliderlabel=UILabel();
class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()
        
        
        //******** creating label programmatically*******//
        
        var label = UILabel(frame: CGRectMake(120, 80, 150, 100));
        //label.center = CGPointMake(160, 284);
        label.textAlignment = NSTextAlignment.Center;
        label.text = " ^Click the above button to move to next view controller <<< uiview";
        label.numberOfLines=4;
        self.view.addSubview(label);
        
        sliderlabel = UILabel(frame: CGRectMake(120, 240, 150, 100));
        //label.center = CGPointMake(160, 284);
        sliderlabel.textAlignment = NSTextAlignment.Center;
        sliderlabel.numberOfLines=4;
        self.view.addSubview(sliderlabel);
        
        
        //******** creating button programmatically*******//
        
        var button=UIButton(frame: CGRectMake(20, 20, 280, 40));
        button.backgroundColor=UIColor.blueColor();
        button.setTitle("Ravi Kumar", forState: .Normal);
        button.setTitleColor(UIColor.yellowColor(), forState: .Normal);
        button.alpha=0.6;
        button.layer.borderWidth=0.3;
        button.layer.cornerRadius=2;
        //*** button action***//
        button.addTarget(self, action: "pressme", forControlEvents: .TouchUpInside);
        button.titleLabel.textAlignment=NSTextAlignment.Center;
        self.view.addSubview(button);
        
        
        //******** creating UIView programmatically *********//
        
        var view=UIView(frame: CGRectMake(20, 80, 100, 100));
        view.backgroundColor=UIColor.yellowColor();
        view.layer.borderColor=CGColorCreateGenericRGB(255, 255, 255, 1);
        view.layer.cornerRadius=25;
        view.layer.borderWidth=6;
        self.view.addSubview(view);
        
        //******** creating textfield programmatically********//
        
        var myTextField = UITextField(frame: CGRect(x: 20, y: 200, width: 280.00, height: 40.00));
        myTextField.backgroundColor = UIColor.grayColor();
        myTextField.placeholder="  Enter here";
        //myTextField.text = "    Enter here";
        myTextField.borderStyle = UITextBorderStyle.Line;
        myTextField.secureTextEntry=true;
        self.view.addSubview(myTextField);
        
        //******** creating UIslider ***********//
        
        var slider=UISlider(frame:CGRectMake(20, 260, 280, 20));
        slider.minimumValue = 0;
        slider.maximumValue = 100;
        slider.continuous = false;
        slider.value = 0;
        slider.addTarget(self, action: "sliderValueDidChange:", forControlEvents: .ValueChanged);
        self.view.addSubview(slider);
        
        
        
        //********** creating UISwitch programmatically *******//
        
        var customSwitch=UISwitch(frame:CGRectMake(150, 300, 50, 30));
        customSwitch.setOn(true, animated: false);
        customSwitch.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged);
        self.view.addSubview(customSwitch);
        
        
        
        //********** creating UITextView programmatically *******//
        
        var textview=UITextView(frame:CGRectMake(20, 330, 280, 60));
        textview.scrollEnabled=true;
        textview.backgroundColor=UIColor.grayColor();
        textview.textColor=UIColor.blueColor();
        textview.textAlignment=NSTextAlignment.Center;
        self.view.addSubview(textview);
        
        
        
        //********** creating UIImageView Programmatically******//
        
        var imageView = UIImageView(frame: CGRectMake(20, 400, 100, 150));
        var image = UIImage(named: "image.jpg");
        imageView.image = image;
        self.view.addSubview(imageView);
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func pressme(){
        
        //******** navigation from one view controller to another *******//
       
        self.navigationController.pushViewController(secondViewController(), animated: false);
        
        //******** creating UIalertview programmatically*******//
        
        var alertView=UIAlertView();
        alertView.title="RK";
        alertView.addButtonWithTitle("OK");
        alertView.message="Now you are in second view controller";
        alertView.show();
    }
    
    
    func sliderValueDidChange(slider: UISlider) {
        sliderlabel.text=String(slider.value);
    }
    
    func switchValueDidChange(aSwitch: UISwitch) {
        sliderlabel.text="switch pressed";
    }
}

