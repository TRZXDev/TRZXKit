//
//  TRZXProjectListViewController.m
//  TRZX
//
//  Created by N年後 on 2017/1/18.
//  Copyright © 2017年 TRZX. All rights reserved.
//

#import "TRZXProjectListViewController.h"
#import "MainTabBar0ViewController.h"
@interface TRZXProjectListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, copy) NSArray *dataSource;

@end

@implementation TRZXProjectListViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"消息";


    // Do any additional setup after loading the view.
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellId"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"CellId"];
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;

    cell.textLabel.text = self.dataSource[indexPath.row][@"projectTitle"];
    cell.detailTextLabel.text = self.dataSource[indexPath.row][@"projectDesc"];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //行被选中后，自动变回反选状态的方法

    MainTabBar0ViewController *vc = [[MainTabBar0ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:true];



}

#pragma mark - getters
- (NSArray *)dataSource
{
    if (_dataSource == nil) {
        _dataSource = @[
                        @{
                            @"projectTitle" : @"项目A",
                            @"projectDesc" : @"未来科技",
                            @"projectId" : @"12306"
                            },
                        @{
                            @"projectTitle" : @"项目B",
                            @"projectDesc" : @"星球大爆炸💥",
                            @"projectId" : @"12306"
                            }
                        ];
    }
    return _dataSource;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
