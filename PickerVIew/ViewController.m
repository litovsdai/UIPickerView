//
//  ViewController.m
//  PickerVIew
//
//  Created by Hipolito Arias on 04/08/13.
//  Copyright (c) 2013 Hipolito Arias. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Delego el objecto picker view
    _pickerView.delegate = self;
    
    _myArray = @[@"New York",@"Hong Kong",@"Berlin",@"Paris",@"Madrid",@"Buenos Aires",@"Ciudad de Mexico"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - UIPicker View

-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return _myArray.count;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    _labelSelected.text = [_myArray objectAtIndex:row];
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [_myArray objectAtIndex:row];
}

@end
