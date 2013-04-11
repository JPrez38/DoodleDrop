//
//  GameLayer.h
//  DoodleDrop
//
//  Created by Jacob Preston on 4/10/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface GameLayer : CCLayer {
    CCSprite* player;
    CGPoint playerVelocity;
}

+ (id) scene;

@end
