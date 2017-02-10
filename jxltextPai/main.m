//
//  main.m
//  jxltextPai
//
//  Created by SIR-JingXL on 2017/1/22.
//  Copyright © 2017年 SIR-JingXL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"12",@"12",@"88",@"78",@"78",@"90"]];
        
        NSMutableArray *weiArray = [NSMutableArray array];
        
        NSMutableArray *paiArray = [NSMutableArray array];
        
        for (int i = 0; i < array.count; i++) {
            
            BOOL isEqu = NO;
            
            // 判断是否是排除的位置
            BOOL isPai = NO;
            for (NSString *paiJ in paiArray) {
                if (paiJ.intValue == i) {
                    isPai = YES;
                }
            }
            
            // 如果有排除的 则结束此次循环
            if (isPai) {
                continue;
            }
            // i 能执行到最后个数时记录位置
            if(i == array.count -1) {
                
                // 记录不相同数字的位置
                NSString *iandi = [NSString stringWithFormat:@"[%d %d]", i, i];
                
                // 放置相同数字到数组
                [weiArray addObject:iandi];
                
            }
            
            for (int j = i + 1; j< array.count ; j++) {
                
                
                
                NSString *iNum = array[i];
                NSString *jNum = array[j];
                
                // 筛选出相等的数字组合
                
                if (iNum.intValue == jNum.intValue) {
                    
                    // 记录相同数字的位置
                    NSString *iandj = [NSString stringWithFormat:@"[%d %d]", i, j];
                    
                    // 放置相同数字到数组
                    [weiArray addObject:iandj];
                    
                    // j位置的数字不能再参与下一步运算
                    [paiArray addObject:[NSString stringWithFormat:@"%d", j]];
                    
                    // 存在相同
                    isEqu = YES;
                    
                }else {
                    
                    // 到所有的数都遍历后也没有找到相应的值
                    if (j == array.count - 1) {
                        
                        if (!isEqu) {
                            // 记录不相同数字的位置
                            NSString *iandi = [NSString stringWithFormat:@"[%d %d]", i, i];
                            
                            // 放置相同数字到数组
                            [weiArray addObject:iandi];
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        //
        NSLog(@"%@", weiArray);
        
        FileManager *manager = [FileManager new];
        [manager createFileToString:@"user/file"];
    }
    return 0;
}
