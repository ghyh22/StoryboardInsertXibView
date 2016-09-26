//
//  CustomView.swift
//  StoryboardInsertXibView
//
//  Created by 龚浩 on 16/9/26.
//  Copyright © 2016年 龚浩. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    
    @IBOutlet weak var label: UILabel!
    @IBAction func onTouchUp(_ sender: UIButton) {
        onButtonRun?()
    }
    
    @IBInspectable
    var name:String?{
        get{
            return label.text
        }
        set{
            label.text = newValue
        }
    }
    
    var onButtonRun:(()->Void)?
    
    var contentView:UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView = loadViewFromNib()
        addSubview(contentView)
        addConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        contentView = loadViewFromNib()
        addSubview(contentView)
        addConstraints()
    }
    
    func loadViewFromNib() -> UIView {
        let className = type(of: self)
        let bundle = Bundle(for: className)
        let name = NSStringFromClass(className).components(separatedBy: ".").last
        let nib = UINib(nibName: name!, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
    
    func addConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        var constraint = NSLayoutConstraint(item: contentView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0)
        addConstraint(constraint)
        constraint = NSLayoutConstraint(item: contentView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0)
        addConstraint(constraint)
        constraint = NSLayoutConstraint(item: contentView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0)
        addConstraint(constraint)
        constraint = NSLayoutConstraint(item: contentView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)
        addConstraint(constraint)
    }
}
