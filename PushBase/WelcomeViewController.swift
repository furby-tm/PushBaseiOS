//
//  ViewController.swift
//  PushBase
//
//  Created by Tyler Furby on 7/13/17.
//  Copyright © 2017 Tyler Furby. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //Make button and label
    let button1:UIButton! = UIButton(type: .system)
    let label1:UILabel! = UILabel()
    let atRest = "What does the platypus do?"
    let atWork = "Oh, okay. Not much."
    
    @objc func buttonPressed(){
        if label1.text == atRest{
            label1.text = atWork
        }else{
            label1.text = atRest
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        makeLayout()
    }
    
    func makeLayout() {
        //     Make a view
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
        label1.text = atRest
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        //Make a button
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.setTitle("Platypus",
                         for: UIControlState.normal)
        button1.addTarget(self,
                          action: #selector(self.buttonPressed),
                          for: UIControlEvents.touchUpInside)
        button1.backgroundColor = UIColor.blue
        button1.setTitleColor(UIColor.white,
                              for: UIControlState.normal)
        
        view2.addSubview(button1)
        view2.addSubview(label1)
        
        //Add the views
        view.addSubview(view1)
        view.addSubview(view2)
        
        //make dictionary for views
        let viewsDictionary = [
            "view1":view1,
            "view2":view2,
            "button1":button1,
            "label1":label1]
        let metricsDictionary = [
            "view1Height": 50.0,
            "view2Height":40.0,
            "viewWidth":100.0 ]
        
        //controls
        let control_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-[button1(>=80)]-20-[label1(>=100)]",
                                                                  options: NSLayoutFormatOptions.alignAllCenterY,
                                                                  metrics: nil,
                                                                  views: viewsDictionary)
        let control_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[button1]-40-|",
                                                                  options: NSLayoutFormatOptions(rawValue:0),
                                                                  metrics: nil,
                                                                  views: viewsDictionary)
        
        view2.addConstraints(control_constraint_H)
        view2.addConstraints(control_constraint_V)
        
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

