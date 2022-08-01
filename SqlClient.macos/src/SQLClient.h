//
//  SQLClient.h
//  SQLClient
//
//  Created by Martin Rybak on 10/4/13.
//  Copyright (c) 2013 Martin Rybak. All rights reserved.
//

#import <Foundation/Foundation.h>

void execSqlRequest();

extern NSString* _Nonnull const SQLClientMessageNotification;
extern NSString* _Nonnull const SQLClientErrorNotification;
extern NSString* _Nonnull const SQLClientMessageKey;
extern NSString* _Nonnull const SQLClientCodeKey;
extern NSString* _Nonnull const SQLClientSeverityKey;

@interface SQLClient : NSObject

@property (nonatomic, assign) int timeout;

@property (nonatomic, copy, nonnull) NSString* charset;

@property (atomic, assign) int maxTextSize;

+ (nullable instancetype)sharedInstance;
- (void)connect:(nonnull NSString*)host
	   username:(nonnull NSString*)username
	   password:(nonnull NSString*)password
	   database:(nullable NSString*)database
	 completion:(nullable void(^)(BOOL success))completion;

- (BOOL)isConnected;

- (BOOL)isExecuting;

- (void)execute:(nonnull NSString*)sql completion:(nullable void(^)(NSArray* _Nullable results))completion;

- (void)disconnect;

@end

