//
//  GameLayer.m
//  DoodleDrop
//
//  Created by Jacob Preston on 4/10/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "GameLayer.h"


@implementation GameLayer

+ (id) scene {
    CCScene *scene = [CCScene node];
    CCLayer* layer = [GameLayer node];
    [scene addChild:layer];
    return scene;
}

- (id) init
{
    if ((self=[super init]))
    {
        CCLOG(@"%@: %@", NSStringFromSelector(_cmd),self);
        
        self.isAccelerometerEnabled=YES;
        
        player = [CCSprite spriteWithFile:@"alien.png"];
        [self addChild:player z:0 tag:1];
        
        CGSize screenSize = [CCDirector sharedDirector].winSize;
        float imageHeight=player.texture.contentSize.height;
        player.position=CGPointMake(screenSize.width/2, imageHeight/2);
    }
    return self;
}

-(void) accelerometer:(UIAccelerometer *)accelerometer
        didAccelerate:(UIAcceleration *)acceleration
{
    CGPoint pos=player.position;
    pos.x+= acceleration.x * 10;
    player.position = pos;
}

- (void) dealloc {
    CCLOG(@"%@: %@", NSStringFromSelector(_cmd),self);
}

@end
