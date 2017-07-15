//
//  LoginViewController.swift
//  PushBase
//
//  Created by Tyler Furby on 7/14/17.
//  Copyright © 2017 Tyler Furby. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //Make button and label
    let submit:UIButton! = UIButton(type: .system)
    let header:UITextField! = UITextField()
    let usernameField: UITextField! = UITextField()
    let passwordField: UITextField! = UITextField()
    let atRest = "What does the platypus do?"
    let atWork = "Oh, okay. Not much."
    
    @objc func buttonPressed() {
        let homeViewController = HomeViewController()
        self.present(homeViewController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = greenColor
        makeLayout()
    }
    
    func makeLayout() {
        //     Make a view
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        // HELPER: HEADER POSITIONING
        //view1.backgroundColor = green
        
        //Make a second view
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        // HELPER: BODY POSITIONING
        //view2.backgroundColor = UIColor(
            //red: 0.75,
            //green: 0.75,
            //blue: 0.1,
            //alpha: 1.0)
        
        //Make a label
        header.text = "Login"
        header.translatesAutoresizingMaskIntoConstraints = false
        header.font = UIFont(name: "GTWalsheim-Black", size: 50)
        header.textColor = UIColor.white
        
        usernameField.placeholder = "Username"
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        usernameField.textAlignment = NSTextAlignment.justified
        usernameField.backgroundColor = UIColor.white
        usernameField.font = UIFont(name: "GTWalsheim-Medium", size: 24)
        usernameField.textColor = greenColor
        usernameField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        
        passwordField.placeholder = "Password"
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.textAlignment = NSTextAlignment.justified
        passwordField.backgroundColor = UIColor.white
        passwordField.font = UIFont(name: "GTWalsheim-Medium", size: 24)
        passwordField.textColor = greenColor
        passwordField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0)
        
        //Make a button
        submit.translatesAutoresizingMaskIntoConstraints = false
        submit.setTitle("Submit",
                         for: UIControlState.normal)
        submit.addTarget(self,
                          action: #selector(self.buttonPressed),
                          for: UIControlEvents.touchUpInside)
        submit.backgroundColor = UIColor.white
        submit.setTitleColor(greenColor,
                              for: UIControlState.normal)
        submit.titleLabel?.font = UIFont(name: "GTWalsheim-Black", size: 30)
        
        view2.addSubview(submit)
        view1.addSubview(header)
        view2.addSubview(usernameField)
        view2.addSubview(passwordField)
        
        //Add the views
        view.addSubview(view1)
        view.addSubview(view2)
        
        //make dictionary for views
        let viewsDictionary = [
            "view1":view1,
            "view2":view2,
            "submit":submit,
            "header":header,
            "usernameField": usernameField,
            "passwordField": passwordField]
        let metricsDictionary = [
            "view1Height": 50.0,
            "view2Height":40.0,
            "viewWidth": 375.0 ]
        
        //controls
        let control_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-38-[submit]-38-|",
                                                                  options: NSLayoutFormatOptions.alignAllCenterY,
                                                                  metrics: nil,
                                                                  views: viewsDictionary)
        let username_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-10-[usernameField]-10-|",
                                                                     options: NSLayoutFormatOptions.alignAllCenterY,
                                                                     metrics: nil,
                                                                     views: viewsDictionary)
        let password_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-10-[passwordField]-10-|",
                                                                   options: NSLayoutFormatOptions.alignAllCenterY,
                                                                   metrics: nil,
                                                                   views: viewsDictionary)
        let control_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-200-[usernameField(50)]-8-[passwordField(50)]-10-[submit(50)]-40-|",
                                                                  options: NSLayoutFormatOptions(rawValue:0),
                                                                  metrics: nil,
                                                                  views: viewsDictionary)
        
        view2.addConstraints(control_constraint_H)
        view2.addConstraints(control_constraint_V)
        view2.addConstraints(password_constraint_H)
        
        //--------------- constraints
        
        
        //sizing constraints
        
        //view1
        let view1_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:[view1(viewWidth)]",
                                                                options: NSLayoutFormatOptions(rawValue:0),
                                                                metrics: metricsDictionary,
                                                                views: viewsDictionary)
        let view1_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[view1(view1Height)]",
                                                                options: NSLayoutFormatOptions(rawValue:0),
                                                                metrics: metricsDictionary,
                                                                views: viewsDictionary)
        let header_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-115-[header]-115-|",
                                                                 options: NSLayoutFormatOptions(rawValue: 0),
                                                                 metrics: metricsDictionary,
                                                                 views: viewsDictionary)
        
        let header_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-15-[header]",
                                                                 options: NSLayoutFormatOptions(rawValue: 0),
                                                                 metrics: nil,
                                                                 views: viewsDictionary)
        
        view1.addConstraints(view1_constraint_H)
        view1.addConstraints(view1_constraint_V)
        view1.addConstraints(header_constraint_H)
        view1.addConstraints(header_constraint_V)
        
        //view2
        let view2_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:[view2(viewWidth)]",
                                                                options: NSLayoutFormatOptions(rawValue:0),
                                                                metrics: metricsDictionary,
                                                                views: viewsDictionary)
        let view2_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[view2(>=view2Height)]",
                                                                options: NSLayoutFormatOptions(rawValue:0),
                                                                metrics: metricsDictionary,
                                                                views: viewsDictionary)
        
        view2.addConstraints(view2_constraint_H)
        view2.addConstraints(username_constraint_H)
        view2.addConstraints(view2_constraint_V)
        
        //position constraints
        
        //views
        let view_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-[view2]",
                                                               options: NSLayoutFormatOptions(rawValue:0),
                                                               metrics: nil, views: viewsDictionary)
        let view_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-36-[view1]-8-[view2]-0-|",
                                                               options: NSLayoutFormatOptions.alignAllLeading,
                                                               metrics: nil, views: viewsDictionary)
        
        view.addConstraints(view_constraint_H)
        view.addConstraints(view_constraint_V)
        
    }
}
