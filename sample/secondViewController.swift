//
//  secondViewController.swift
//  sample
//
//  Created by ravi kumar on 12/07/14.
//  Copyright (c) 2014 ravi kumar. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var label = UILabel(frame: CGRectMake(0, 0, 200, 21));
        label.center = CGPointMake(160, 284);
        label.textAlignment = NSTextAlignment.Center;
        label.text = "I'am rk";
        label.numberOfLines=4;
        self.view.addSubview(label);
        
        var button=UIButton(frame: CGRectMake(20, 20, 280, 40));
        button.backgroundColor=UIColor.blueColor();
        button.setTitle("second view controller", forState: .Normal);
        button.setTitleColor(UIColor.yellowColor(), forState: .Normal);
        button.alpha=0.2;
        button.layer.borderWidth=0.3;
        button.layer.cornerRadius=2;
        button.addTarget(self, action: "pressme", forControlEvents: .TouchUpInside);
        button.titleLabel.textAlignment=NSTextAlignment.Center;
        self.view.addSubview(button);
        
        
        //************ date picker programmatically***********//
        
        var datepick=UIDatePicker(frame:CGRectMake(20, 80, 280, 100));
        datepick.datePickerMode = UIDatePickerMode.Date;
        self.view.addSubview(datepick);
        
        //************ web view programmatically **************//
        
        var webview=UIWebView(frame:CGRectMake(20, 240, 280, 310));
        var url = NSURL(string: "http://www.rkiosdev.blogspot.in");
        var request = NSURLRequest(URL: url);
        webview.scalesPageToFit=true;
        webview.loadRequest(request);
        self.view.addSubview(webview);
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pressme(){
        var alertView=UIAlertView();
        alertView.title="RK";
        alertView.addButtonWithTitle("OK");
        alertView.message="going back to first vc";
        
        alertView.show();
        
        self.navigationController.popToRootViewControllerAnimated(true);
        
    }

}
