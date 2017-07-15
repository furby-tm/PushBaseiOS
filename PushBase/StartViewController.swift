//
//  StartViewController.swift
//  PushBase
//
//  Created by Tyler Furby on 7/14/17.
//  Copyright © 2017 Tyler Furby. All rights reserved.
//

import UIKit

public let greenColor: UIColor = UIColor( red: CGFloat(76/255.0), green: CGFloat(175/255.0), blue: CGFloat(80/255.0), alpha: CGFloat(1.0) )

class StartViewController: UIViewController {
    
    //Make button and label
    let button1:UIButton! = UIButton(type: .system)
    let label1:UILabel! = UILabel()
    let label2:UILabel! = UILabel()
    let label3:UILabel! = UILabel()
    let label4:UILabel! = UILabel()
    let label5:UILabel! = UILabel()
    let label6:UILabel! = UILabel()
    let label7:UILabel! = UILabel()
    let label8:UILabel! = UILabel()
    
    @objc func buttonPressed(){
        let loginViewController = LoginViewController()
        self.present(loginViewController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //  FOR LIST OF FONTS
    //    for family: String in UIFont.familyNames
    //    {
    //        print("\(family)")
    //        for names: String in UIFont.fontNames(forFamilyName: family)
    //       {
    //           print("== \(names)")
    //       }
    //    }
        
        self.view.backgroundColor = greenColor
        makeLayout()
    }
    
    func makeLayout() {
        // Make a view
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        //HELPER: HEADER POSITIONING
        //view1.backgroundColor = UIColor.red
        
        //Make a second view
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        //HELPER: BODY POSITIONING
        //view2.backgroundColor = UIColor(
            //red: 0.75,
            //green: 0.75,
            //blue: 0.1,
            //alpha: 1.0)
        
        //Make a label
        label1.text = "PushBase"
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        //Make another label
        label2.text = "Let's discover"
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.textColor = UIColor.white
        
        label3.text = "something extraordinary"
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.textColor = UIColor.white
        
        label4.text = "With the freedom to explore,"
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.textColor = UIColor.white
        
        
        label5.text = "connect, and share your ideas"
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.textColor = UIColor.white
        
        
        label6.text = "around the world, here's your"
        label6.translatesAutoresizingMaskIntoConstraints = false
        label6.textColor = UIColor.white
        
        label7.text = "opportunity to discover the"
        label7.translatesAutoresizingMaskIntoConstraints = false
        label7.textColor = UIColor.white
        
        
        label8.text = "unknown."
        label8.translatesAutoresizingMaskIntoConstraints = false
        label8.textColor = UIColor.white
        
        
        //Make a button
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("Discover",
                         for: UIControlState.normal)
        button1.addTarget(self,
                          action: #selector(self.buttonPressed),
                          for: UIControlEvents.touchUpInside)
        button1.backgroundColor = UIColor.white
        button1.setTitleColor(greenColor,
                              for: UIControlState.normal)
        
        button1.titleLabel?.font = UIFont(name: "GTWalsheim-Black", size: 30)
        label1.font = UIFont(name: "GTWalsheim-Black", size: 50)
        label1.textColor = UIColor.white
        label2.font = UIFont(name: "GTWalsheim-Bold", size: 30)
        label3.font = UIFont(name: "GTWalsheim-Bold", size: 30)
        label4.font = UIFont(name: "GTWalsheim-Medium", size: 24)
        label5.font = UIFont(name: "GTWalsheim-Medium", size: 24)
        label6.font = UIFont(name: "GTWalsheim-Medium", size: 24)
        label7.font = UIFont(name: "GTWalsheim-Medium", size: 24)
        label8.font = UIFont(name: "GTWalsheim-Medium", size: 24)
        
        //view2.addSubview(button1)
        //view2.addSubview(label1)
        
        // TODO: Fix Crash
        view1.addSubview(label1)
        view2.addSubview(button1)
        view2.addSubview(label2)
        view2.addSubview(label3)
        view2.addSubview(label4)
        view2.addSubview(label5)
        view2.addSubview(label6)
        view2.addSubview(label7)
        view2.addSubview(label8)
        
        //Add the views
        view.addSubview(view1)
        view.addSubview(view2)
        
        //make dictionary for views
        let viewsDictionary = [
            "view1":view1,
            "view2":view2,
            "button1":button1,
            "label1":label1,
            "label2":label2,
            "label3":label3,
            "label4": label4,
            "label5": label5,
            "label6": label6,
            "label7": label7,
            "label8": label8]
        let metricsDictionary = [
            "view1Height": 100.0,
            "view2Height": 40.0,
            "viewWidth":   375.0 ]
        
        //controls
        let control_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-61-[label1]-61-|",
                                                                  options: NSLayoutFormatOptions.alignAllCenterY,
                                                                  metrics: nil,
                                                                  views: viewsDictionary)
        let control_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[label1]-0-|",
                                                                  options: NSLayoutFormatOptions(rawValue:0),
                                                                  metrics: nil,
                                                                  views: viewsDictionary)
        
        view1.addConstraints(control_constraint_H)
        view1.addConstraints(control_constraint_V)
        
        
        let button_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-38-[button1]-38-|",
                                                                 options: NSLayoutFormatOptions.alignAllCenterY,
                                                                 metrics: nil,
                                                                 views: viewsDictionary)
        let button_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-120-[label2]-0-[label3]-25-[label4]-0-[label5]-0-[label6]-0-[label7]-0-[label8]-140-[button1(50)]-30-|",
                                                                 options: NSLayoutFormatOptions.alignAllLeft,
                                                                 metrics: nil,
                                                                 views: viewsDictionary)
    
        let body_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-5-[label2]",
                                                                 options: NSLayoutFormatOptions.alignAllCenterY,
                                                                 metrics: nil,
                                                                 views: viewsDictionary)
        
        view2.addConstraints(button_constraint_H)
        view2.addConstraints(button_constraint_V)
        view2.addConstraints(body_constraint_H)
        
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
        
        view1.addConstraints(view1_constraint_H)
        view1.addConstraints(view1_constraint_V)
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
