//
//  DiscoverViewController.swift
//  PushBase
//
//  Created by Tyler Furby on 7/19/17.
//  Copyright © 2017 Tyler Furby. All rights reserved.
//

import UIKit

class DiscoverViewController: UIViewController {
    
    let header:UILabel! = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        self.title = "Discover"
        
        makeLayout()
    }
    
    func makeLayout() {
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
        
        header.text = "Discover"
        header.translatesAutoresizingMaskIntoConstraints = false
        header.font = UIFont(name: "GTWalsheim-Black", size: 50)
        header.textColor = UIColor.white
        
        view1.addSubview(header)
        
        view.addSubview(view1)
        view.addSubview(view2)
        
        //make dictionary for views
        let viewsDictionary = [
            "view1":view1,
            "view2":view2,
            "header":header]
        let metricsDictionary = [
            "view1Height": 100.0,
            "view2Height": 40.0,
            "viewWidth":   375.0 ]
        
            //--------------- constraints
        
        let header_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-74-[header]-74-|",
                                                                 options: NSLayoutFormatOptions(rawValue: 0),
                                                                 metrics: nil,
                                                                 views: viewsDictionary)
        
        let header_constraint_V = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-60-[header]",
                                                                 options: NSLayoutFormatOptions.alignAllCenterY,
                                                                 metrics: nil,
                                                                 views: viewsDictionary)
        
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
