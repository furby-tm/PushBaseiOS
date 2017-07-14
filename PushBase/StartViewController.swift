//
//  StartViewController.swift
//  PushBase
//
//  Created by Tyler Furby on 7/14/17.
//  Copyright © 2017 Tyler Furby. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    //Make button and label
    let button1:UIButton! = UIButton(type: .system)
    let label1:UILabel! = UILabel()
    let label2:UILabel! = UILabel()
    
    @objc func buttonPressed(){
        label1.text = "ONWARD"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        makeLayout()
    }
    
    func makeLayout() {
        // Make a view
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = UIColor.green
        
        //Make a second view
        let view2 = UIView()
        view2.translatesAutoresizingMaskIntoConstraints = false
        view2.backgroundColor = UIColor(
            red: 0.75,
            green: 0.75,
            blue: 0.1,
            alpha: 1.0)
        
        //Make a label
        label1.text = "PushBase"
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        //Make another label
        label2.text = "Let's discover something extraordinary"
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        //Make a button
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("Discover",
                         for: UIControlState.normal)
        button1.addTarget(self,
                          action: #selector(self.buttonPressed),
                          for: UIControlEvents.touchUpInside)
        button1.backgroundColor = UIColor.green
        button1.setTitleColor(UIColor.white,
                              for: UIControlState.normal)
        
        //view2.addSubview(button1)
        //view2.addSubview(label1)
        
        // TODO: Fix Crash
        view1.addSubview(label1)
        view2.addSubview(button1)
        view2.addSubview(label2)
        
        //Add the views
        view.addSubview(view1)
        view.addSubview(view2)
        
        //make dictionary for views
        let viewsDictionary = [
            "view1":view1,
            "view2":view2,
            "button1":button1,
            "label1":label1,
            "label2":label2]
        let metricsDictionary = [
            "view1Height": 50.0,
            "view2Height": 40.0,
            "viewWidth":   375.0 ]
        
        //controls
        let control_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:[label1]-148-|",
                                                                  options: NSLayoutFormatOptions.alignAllCenterY,
                                                                  metrics: nil,
                                                                  views: viewsDictionary)
        let control_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[label1]-14-|",
                                                                  options: NSLayoutFormatOptions(rawValue:0),
                                                                  metrics: nil,
                                                                  views: viewsDictionary)
        
        view1.addConstraints(control_constraint_H)
        view1.addConstraints(control_constraint_V)
        
        let button_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-[label2]-200-|",
                                                                 options: NSLayoutFormatOptions.alignAllCenterY,
                                                                 metrics: nil,
                                                                 views: viewsDictionary)
        let button_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[button1]-100-|",
                                                                 options: NSLayoutFormatOptions.alignAllCenterY,
                                                                 metrics: nil,
                                                                 views: viewsDictionary)
        
        view2.addConstraints(button_constraint_H)
        view2.addConstraints(button_constraint_V)
        
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
