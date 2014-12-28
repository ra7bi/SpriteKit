//
//  GameScene.m
//  SpriteKitDemo2
//
//  Created by fa/Users/Fahad/Downloads/ball.pnghad alrahbi on 28/12/14.
//  Copyright (c) 2014 fahad alrahbi. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene
-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
    }
    
    return self;
}

-(void)didMoveToView:(SKView *)view {
    /* Setup your scene here */
    self.backgroundColor=[SKColor whiteColor];
    
    // Pysic body to the scene
    self.physicsBody =[SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
    
    
    
    /*============= CGVectorMake(X,Y) ==========
                  +y
                 |
                 |
        -x ------|------ +x
                 |
                 |
                  -Y
     */
    
    
    // change gravity settings of the physics world
    self.physicsWorld.gravity = CGVectorMake(0,0);
    
    
    // create new sprite node from an image
    SKSpriteNode * ball =[SKSpriteNode spriteNodeWithImageNamed:@"ball"];
    
    
    // create a CGPoint for position ( center of Scene )
    //Get Screen center ( i'm getting center position )  الطول تقسيم ٢ و العرض تقسيم ٢
    CGPoint myPoint =CGPointMake(self.frame.size.width/2, self.frame.size.height/2);
    ball.position = myPoint;
    
    
    // Add physics body to the ball
    ball.physicsBody =[SKPhysicsBody bodyWithCircleOfRadius:ball.frame.size.width/2];
    
    
     // add the sprite to the scene
    [self addChild:ball];
    
    
    // Create the Vector
    
    CGVector myVector = CGVectorMake(20, 20);
    
    //Apply the vector to the ball
    
    [ball.physicsBody applyImpulse:myVector];
   

}



-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
