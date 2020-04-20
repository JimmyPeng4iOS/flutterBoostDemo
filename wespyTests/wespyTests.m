//
//  wespyTests.m
//  wespyTests
//
//  Created by Liu Gang on 13-10-14.
//  Copyright (c) 2013年 wepie. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "WPDataStore.h"
#import "WPReqDelieverMessagePacket.h"
#import "ChatController.h"
@interface wespyTests : XCTestCase

@end

@implementation wespyTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super tearDown];
}

- (void)testExample
{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)test1plus1
{
    int t = 1+1;
    XCTAssertEqual(t, 2, @"not equal!");
}

//- (void)testMessage
//{
//    Message *msg = [Message message];
//    [[ChatStore shareStore] addMessage:msg];
//    
//    Message *newMsg = [[ChatStore shareStore] getMessage:msg.mid];
//    NSLog(@" msg %@ new %@", msg, newMsg);
//
//    if (![msg isEqual:newMsg]) {
//        XCTFail(@"Not Equal");
//    }
//}
//
//- (void)testMessageReceive
//{
//    NSData *d = [[WPReqDelieverMessagePacket alloc] initWithMessage:[Message message]].data;
//    d = [d subdataWithRange:NSMakeRange(4, d.length-4)];
//    ChatroomController *ctrl = [ChatroomController sharedInstance];
//    [ctrl processPacketBody:d];
//}

- (void)testTalkListUpdate
{

}


@end
