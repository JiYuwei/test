//
//  ViewController.m
//  test
//
//  Created by 纪宇伟 on 2017/6/5.
//  Copyright © 2017年 纪宇伟. All rights reserved.
//

#import "ViewController.h"
#import "PhotoCell.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"圆角性能测试";
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableView=[[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    _tableView.backgroundColor=[UIColor whiteColor];
    _tableView.dataSource=self;
    _tableView.delegate=self;
    [_tableView registerNib:[UINib nibWithNibName:NSStringFromClass([PhotoCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([PhotoCell class])];
    [self.view addSubview:_tableView];
    
    _dataArray=[NSMutableArray array];
    
    for (int i=0; i<100; i++) {
        [_dataArray addObject:@"photo"];
    }
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCell *cell=[tableView dequeueReusableCellWithIdentifier:NSStringFromClass([PhotoCell class])];
    
    cell.imgName=_dataArray[indexPath.row];
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
