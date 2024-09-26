//
//  ViewController.m
//  ObjectiveCCalculator
//
//  Created by Angelos Staboulis on 24/9/24.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _isClicked = false;
    _isColor = false;
    _buttonsArray = [[NSMutableArray alloc] init];
   
}

-(void) creatExpression:(UIButton*)button{
    if ([button.titleLabel.text isEqual:@"="]){
        NSExpression *expression = [NSExpression expressionWithFormat:[_txtReadout text]];
        NSNumber *number = [expression expressionValueWithObject:nil context:nil];
        [_txtReadout setText:[number stringValue]];
    }else{
        _readout = [_txtReadout text];
        _textReadout = [_readout stringByAppendingString:[button titleLabel].text];
        [_txtReadout setText:_textReadout];
    }
  
}
- (IBAction)buttonsClicked:(id)sender {
        UIButton *buttonGet = sender;
        for (UIButton *button in self.buttons) {
           button.backgroundColor = [UIColor clearColor];
       }
       buttonGet.backgroundColor = [UIColor redColor];
       [self creatExpression:buttonGet];
}
@end
