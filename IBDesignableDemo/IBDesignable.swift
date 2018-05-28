//
//  RoundButton.swift
//  IBDesignableDemo
//
//  Created by lokesh chand on 24/05/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit
@IBDesignable

//MARK:- For Button

class ButtonExt: UIButton
{
    @IBInspectable var shadowColor:UIColor = UIColor.clear
        {
          didSet
           {
            self.layer.shadowColor = shadowColor.cgColor
           }
        }
    
    @IBInspectable var shadowOpacity : CGFloat = 0
        {
          didSet
           {
            self.layer.shadowOpacity = Float(shadowOpacity)
           }
        }
    
    @IBInspectable var shadowOffset : CGSize = CGSize(width: -0, height: 0)
        {
            didSet
            {
                self.layer.shadowOffset =  shadowOffset
            }
        }
    
    @IBInspectable var shadowRadius : CGFloat = 0.0
      {
        didSet
        {
            self .layer .shadowRadius = CGFloat(shadowRadius)
        }
      }
    
    @IBInspectable var cornerRadius:CGFloat = 0
        {
            didSet
            {
                self.layer.cornerRadius = cornerRadius
            }
        }
    
    @IBInspectable var borderWidth:CGFloat = 0
        {
            didSet
            {
                self.layer.borderWidth = borderWidth
            }
       }
    
    @IBInspectable var borderColor:UIColor = UIColor.clear
        {
        didSet
        {
            self.layer.borderColor = borderColor.cgColor
        }
      }
}

//MARK:- For TextField

@IBDesignable class textFieldExt: UITextField
{
    
    @IBInspectable var leftImage: UIImage?
        {
        didSet
        {
            updateView()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0
    {
        didSet
        {
            updateView()
        }
    }
    
    @IBInspectable var cornerRadius:CGFloat = 0
        {
            didSet
            {
             self.layer.cornerRadius = cornerRadius
            }
    }
    
    @IBInspectable var borderWidth:CGFloat = 0
        {
        didSet
        {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor:UIColor = UIColor.clear
        {
        didSet
        {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var leadingImage: UIImage?
        {
        didSet
        {
            updateView()
        }
    }

    func updateView()
    {
        if let image = leftImage
        {
            leftViewMode = .always
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            imageView.tintColor = tintColor
            var width = leftPadding + 20
            
            if borderStyle == UITextBorderStyle.none || borderStyle == UITextBorderStyle.line
            {
                width = width + 5
                
            }
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
            leftView = view
            
            //This is For Two Sided Corner Radius
            view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
        }
        else
        {
            //image is nill
            leftViewMode = .never
        }
        // Placeholder text Color
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ? placeholder! : "", attributes: [NSAttributedStringKey.foregroundColor : tintColor])
    }
}



//MARK:- For UILabel

@IBDesignable class labelExt: UILabel
{
    @IBInspectable var cornerRadius:CGFloat = 0
        {
            didSet
            {
                self.layer.cornerRadius = cornerRadius
            }
      }
    
    
    @IBInspectable var clipsBounds: Bool = true
        {
            didSet
            {
                self.clipsToBounds = clipsBounds
            }
    }
    
    @IBInspectable var masksToBounds:Bool = true
        {
        
        didSet
        {
            self.layer.masksToBounds = masksToBounds
        }
    }
    
    @IBInspectable var shadow_Color:UIColor = UIColor.clear
        {
            didSet
            {
                self.layer.shadowColor = shadow_Color.cgColor
            }
     }
    
    @IBInspectable var shadowOpacity : CGFloat = 0.0
        {
            didSet
            {
                self.layer.shadowOpacity = Float(shadowOpacity)
            }
    }
    
    @IBInspectable var shadow_Offset : CGSize = CGSize(width: -0, height: 0)
        {
            didSet
            {
                self.layer.shadowOffset =  shadow_Offset
            }
       }
    
    @IBInspectable var shadowRadius : CGFloat = 0.0
        {
            didSet
            {
                self .layer .shadowRadius = CGFloat(shadowRadius)
            }
        }
}

//MARK:- For UIView
@IBDesignable class viewExt: UIView
{
    @IBInspectable var cornerRadius:CGFloat = 0.0
        {
            didSet
            {
                self.layer.cornerRadius = cornerRadius
            }
       }
    
    @IBInspectable var borderWidth:CGFloat = 0.0
        {
            didSet
            {
                self.layer.borderWidth = borderWidth
            }
    }
    
    @IBInspectable var borderColor:UIColor = UIColor.clear
        {
            didSet
            {
                self.layer.borderColor = borderColor.cgColor
            }
       }
    
    @IBInspectable var masksToBounds:Bool = true
        {
            didSet
            {
                self.layer.masksToBounds = masksToBounds
            }
       }
    
    @IBInspectable var shadowColor:UIColor = UIColor.clear
        {
            didSet
            {
                self.layer.shadowColor = shadowColor.cgColor
            }
       }
    
    @IBInspectable var shadowOpacity : CGFloat = 0.0
        {
            didSet
            {
                self.layer.shadowOpacity = Float(shadowOpacity)
            }
    }
    
    @IBInspectable var shadowOffset : CGSize = CGSize(width: -0, height: 0)
        {
            didSet
            {
                self.layer.shadowOffset =  shadowOffset
            }
      }
    
    @IBInspectable var shadowRadius : CGFloat = 0.0
        {
            didSet
            {
                self .layer .shadowRadius = CGFloat(shadowRadius)
            }
    }
}
