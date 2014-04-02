//
//  ccarter_myTableView.m
//  Lemon Grass
//
//  Created by Chris Carter on 3/23/14.
//  Copyright (c) 2014 CCarterOnline. All rights reserved.
//

//import the tableview cell classes
#import "ccarter_myTableView.h"
#import "Slideshow.h"
#import "ccarter_customTableCell.h"
#import "ccarter_footerCell.h"

@interface ccarter_myTableView ()

@end

@implementation ccarter_myTableView

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSLog(@"This did load");
    //self.title = NSLocalizedString(@"Lemon Grass", @"");
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _myListedThings = [[NSArray alloc]initWithObjects:@"",@"About Us", @"Services", @"Staff", @"News", @"Footer", nil];
    [self.tableView setContentInset:UIEdgeInsetsMake(-35, 0, 0, 0)];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //change the background to black
    self.tableView.backgroundColor = [UIColor blackColor];
    //remove the back word from navigation
    self.navigationController.navigationBar.topItem.title = @"";
    //change the color of the back button to white
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [_myListedThings count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //regular table cells
    static NSString *CellIdentifier = @"customCell";
    ccarter_customTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //custom slideshow
    static NSString *slideShow = @"slideShowNib";
    Slideshow *slideShowCell = [tableView dequeueReusableCellWithIdentifier:slideShow];
    
    //footer cells
    static NSString *footerCell = @"footerCell";
    ccarter_footerCell *footerTableViewCell = [tableView dequeueReusableCellWithIdentifier:footerCell];
    
    //check if the first item, then make it the slideshow
    if([indexPath row] == 0){//slideshow
        
        [tableView registerNib:[UINib nibWithNibName:@"Slideshow" bundle:nil] forCellReuseIdentifier:slideShow];
        slideShowCell = [tableView dequeueReusableCellWithIdentifier:slideShow];
    
        return slideShowCell;
        
    
    }else if([indexPath row] != 5) {
        
        [tableView registerNib:[UINib nibWithNibName:@"ccarter_customTableCell" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        // Configure the cell...
        //cell.textLabel.text = [_myListedThings objectAtIndex:[indexPath row]];
        cell.custCellLabel.text = [_myListedThings objectAtIndex:[indexPath row]];
        
        return cell;
        
    }else{//footer
        
        [tableView registerNib:[UINib nibWithNibName:@"ccarter_footerCell" bundle:nil] forCellReuseIdentifier:footerCell];
        footerTableViewCell = [tableView dequeueReusableCellWithIdentifier:footerCell];
        
        return footerTableViewCell;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([indexPath row] == 0){
        return 159;
    }else{
        return 45;//default
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    if([indexPath row]== 1){
        
        _aboutUs = [[ccarter_AboutUs alloc]initWithNibName:@"ccarter_AboutUs" bundle:nil];
        [self.navigationController pushViewController:_aboutUs animated:YES];
    }else if([indexPath row]== 2){
        _services = [[ccarter_Services alloc]initWithNibName:@"ccarter_Services" bundle:nil];
        [self.navigationController pushViewController:_services animated:YES];
    }else if([indexPath row] == 3){
        _staff = [[ccarter_Staff alloc]initWithNibName:@"ccarter_Staff" bundle:nil];
        [self.navigationController pushViewController:_staff animated:YES];
    }else if([indexPath row] == 4){
        _news = [[ccarter_News alloc]initWithNibName:@"ccarter_News" bundle:nil];
        [self.navigationController pushViewController:_news animated:YES];
    }
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
