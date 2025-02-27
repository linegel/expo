// Copyright 2016-present 650 Industries. All rights reserved.

#import <ABI46_0_0EXGL/ABI46_0_0EXGLObject.h>

@implementation ABI46_0_0EXGLObject

- (instancetype)initWithConfig:(NSDictionary *)config
{
  if ((self = [super init])) {
    _exglCtxId = [config[@"exglCtxId"] unsignedIntValue];
    _exglObjId = EXGLContextCreateObject(_exglCtxId);
  }
  return self;
}

- (void)dealloc
{
  if (_exglObjId != 0) {
    EXGLContextDestroyObject(_exglCtxId, _exglObjId);
  }
}

@end

