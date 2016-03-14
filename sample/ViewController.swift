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
        
        let label = UILabel(frame: CGRectMake(120, 80, 150, 100));
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
        
        let button=UIButton(frame: CGRectMake(20, 20, self.view.frame.width-40, 40));
        button.backgroundColor=UIColor.blueColor();
        button.setTitle("Ravi Kumar", forState: .Normal);
        button.setTitleColor(UIColor.yellowColor(), forState: .Normal);
        button.alpha=0.6;
        button.layer.borderWidth=0.3;
        button.layer.cornerRadius=2;
        //*** button action***//
        button.addTarget(self, action: "pressme", forControlEvents: .TouchUpInside);
        button.titleLabel!.textAlignment=NSTextAlignment.Center;
        self.view.addSubview(button);
        
        
        //******** creating UIView programmatically *********//
        
        let view=UIView(frame: CGRectMake(20, 80, 100, 100));
        view.backgroundColor=UIColor.yellowColor();
        view.layer.borderColor=UIColor.blackColor().CGColor;
        view.layer.cornerRadius=25;
        view.layer.borderWidth=6;
        self.view.addSubview(view);
        
        //******** creating textfield programmatically********//
        
        let myTextField = UITextField(frame: CGRect(x: 20, y: 200, width: self.view.frame.width-40, height: 40.00));
        myTextField.backgroundColor = UIColor.grayColor();
        myTextField.placeholder="  Enter here";
        //myTextField.text = "    Enter here";
        myTextField.borderStyle = UITextBorderStyle.Line;
        myTextField.secureTextEntry=true;
        self.view.addSubview(myTextField);
        
        //******** creating UIslider ***********//
        
        let slider=UISlider(frame:CGRectMake(20, 260, self.view.frame.width-40, 20));
        slider.minimumValue = 0;
        slider.maximumValue = 100;
        slider.continuous = false;
        slider.value = 0;
        slider.addTarget(self, action: "sliderValueDidChange:", forControlEvents: .ValueChanged);
        self.view.addSubview(slider);
        
        
        
        //********** creating UISwitch programmatically *******//
        
        let customSwitch=UISwitch(frame:CGRectMake(150, 300, 50, 30));
        customSwitch.setOn(true, animated: false);
        customSwitch.addTarget(self, action: "switchValueDidChange:", forControlEvents: .ValueChanged);
        self.view.addSubview(customSwitch);
        
        
        
        //********** creating UITextView programmatically *******//
        
        let textview=UITextView(frame:CGRectMake(20, 330, self.view.frame.width-40, 60));
        textview.scrollEnabled=true;
        textview.backgroundColor=UIColor.grayColor();
        textview.textColor=UIColor.blueColor();
        textview.textAlignment=NSTextAlignment.Center;
        self.view.addSubview(textview);
        
        
        
        //********** creating UIImageView Programmatically******//
        
        let imageView = UIImageView(frame: CGRectMake(20, 400, 100, 150));
        let image = UIImage(named: "image.jpg");
        imageView.image = image;
        self.view.addSubview(imageView);
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func pressme(){
        
        //******** navigation from one view controller to another *******//
       
        self.navigationController!.pushViewController(secondViewController(), animated: false);
        
        //******** creating UIalertview programmatically*******//
        
        let alertView=UIAlertView();
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

