// Copyright 2016-present 650 Industries. All rights reserved.

#import <Foundation/Foundation.h>
#import <EXGL_CPP/EXGL.h>

@interface ABI46_0_0EXGLObject : NSObject

@property (nonatomic, assign) EXGLContextId exglCtxId;
@property (nonatomic, assign) EXGLObjectId exglObjId;

// For internal use by children -- use `[ABI46_0_0EXGLObject createWithConfig:...]` above to
// create the `ABI46_0_0EXGLObject` of the right type
- (instancetype)initWithConfig:(NSDictionary *)config;

@end
