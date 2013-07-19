//
//  ViewController.m
//  LiveFyre
//
//  Created by Darrell Lewis on 7/19/13.
//  Copyright (c) 2013 CodingTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"WordCount"])
    {
        WordTableViewController *wordTableVC = segue.destinationViewController;
        
        NSString *strDocument = _txtVwMain.text;
        
        NSMutableCharacterSet *acceptedCharacters = [NSCharacterSet letterCharacterSet];
        
        [acceptedCharacters addCharactersInString:@"\'"];
        
        NSArray *arrWordComponents = [strDocument componentsSeparatedByCharactersInSet:[acceptedCharacters invertedSet]];
        
        NSMutableDictionary *WordCount = [[NSMutableDictionary alloc]init];
        for (NSString *strWord in arrWordComponents)
        {
            if (strWord.length > 0)
            {
                if ([WordCount objectForKey:strWord] != NULL)
                {
                    WordObjectClass *storedWord = [WordCount objectForKey:strWord];
                    storedWord.count = storedWord.count + 1;
                    
                }
                else
                {
                    WordObjectClass *newWord = [[WordObjectClass alloc]init];
                    newWord.count = 1;
                    [WordCount setObject:newWord forKey:strWord];
                }
            }
        }//end for
        
        wordTableVC.tableData = WordCount;
    }
}

-(void)textViewDidEndEditing:(UITextView *)textView
{
    [textView resignFirstResponder];
}
@end
