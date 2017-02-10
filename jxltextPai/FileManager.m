//
//  FileManager.m
//  jxltextPai
//
//  Created by SIR-JingXL on 2017/2/3.
//  Copyright © 2017年 SIR-JingXL. All rights reserved.
//

#import "FileManager.h"

@interface FileManager ()

@property (nonatomic, strong) NSFileManager *manager;

@end

@implementation FileManager

#pragma mark - 懒加载

-(NSFileManager *)manager {
    
    if (!_manager) {
        _manager = [NSFileManager defaultManager];
    }
    
    return _manager;
    
}

#pragma mark - fileManager方法


/**
 创建文件夹

 @param filePath 传入创建文件夹的路径
 */
-(void)createFileToString:(NSString *)filePath {
    
    NSLog(@"我测试路径:%@", filePath);
    
    NSLog(@"我在测试gitHub!");
    
    NSLog(@"我 是 分 支 添 加");
}

@end
