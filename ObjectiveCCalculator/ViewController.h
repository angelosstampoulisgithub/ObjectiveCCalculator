//
//  ViewController.h
//  ObjectiveCCalculator
//
//  Created by Angelos Staboulis on 24/9/24.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtReadout;
@property bool isClicked;
@property bool isColor;
@property NSString *readout;
@property NSString *textReadout;
@property NSMutableArray<UIButton *>* buttonsArray;
- (IBAction)buttonsClicked:(id)sender;
-(void) creatExpression:(UIButton*)button;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttons;


@end

