//
//  ViewController.h
//  PickerVIew
//
//  Created by Hipolito Arias on 04/08/13.
//  Copyright (c) 2013 Hipolito Arias. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
// Los métodos para su implementación
<UIPickerViewDelegate,UIPickerViewDataSource>{
    
}
@property NSArray *myArray;
@property (weak, nonatomic) IBOutlet UILabel *labelSelected;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@end
