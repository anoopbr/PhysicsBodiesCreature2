//
//  MyScene.m
//  PhysicsBodiesCreature2
//
//  Created by Anoop Balakrishnan Rema on 2/18/14.
//  Copyright (c) 2014 Anoop Balakrishnan Rema. All rights reserved.
//

#import "MyScene.h"

@interface MyScene()

@property SKSpriteNode *myCircle1;

@property SKSpriteNode *mySquare1;
@property SKSpriteNode *mySquare2;
@property SKSpriteNode *mySquare3;
@property SKSpriteNode *mySquare4;
@property SKSpriteNode *mySquare5;
@property SKSpriteNode *mySquare6;
@property SKSpriteNode *mySquare7;
@property SKSpriteNode *mySquare8;
@property SKSpriteNode* myShelf;
@property SKSpriteNode* myShelf1;
@property SKSpriteNode* myShelf2;
@property SKPhysicsJointSpring *myRopeJoint;
@property SKPhysicsJointLimit *myRopeJoint1;
@property SKPhysicsJointLimit *myRopeJoint2;
@property SKPhysicsJointLimit *myRopeJoint3;
@property SKPhysicsJointLimit *myRopeJoint4;
@property SKPhysicsJointPin *myRopeJoint5;
@property SKPhysicsJointPin *myRopeJoint6;

@end

@implementation MyScene

-(void) activateJointRope{
    
    _myRopeJoint = [SKPhysicsJointSpring jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    _myRopeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    _myRopeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare3.position anchorB:_mySquare4.position];
    _myRopeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare4.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare4.position anchorB:_mySquare5.position];
    _myRopeJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySquare5.physicsBody bodyB:_mySquare6.physicsBody anchorA:_mySquare5.position anchorB:_mySquare6.position];
    _myRopeJoint5 = [SKPhysicsJointPin jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchor:_mySquare6.position];
    _myRopeJoint6 = [SKPhysicsJointPin jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare8.physicsBody anchor:_mySquare7.position];

    [self.physicsWorld addJoint:_myRopeJoint];
    [self.physicsWorld addJoint:_myRopeJoint1];
    [self.physicsWorld addJoint:_myRopeJoint2];
    [self.physicsWorld addJoint:_myRopeJoint3];
    [self.physicsWorld addJoint:_myRopeJoint4];
    [self.physicsWorld addJoint:_myRopeJoint5];
    [self.physicsWorld addJoint:_myRopeJoint6];

    
    
}

-(void) spawnBackgroundSettings{
    self.scaleMode = SKSceneScaleModeAspectFill;
    self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
    [self.physicsBody setRestitution:1];  //bouncyness
}

-(void) spwanCircle{

}

-(void) spawnSquares{
    _mySquare1 =[[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(30, 30)];
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor orangeColor] size:CGSizeMake(30, 30)];
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(30, 30)];
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(30, 30)];
    _mySquare5 =[[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(30, 30)];
    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor purpleColor] size:CGSizeMake(30, 30)];
    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor magentaColor] size:CGSizeMake(30, 30)];
    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor brownColor] size:CGSizeMake(30, 30)];
    
    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.7)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.9)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.1)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.3)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.6)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3.5)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4)];
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    
    [_mySquare1.physicsBody setRestitution:0.1];
    [_mySquare2.physicsBody setRestitution:0.1];
    [_mySquare3.physicsBody setRestitution:0.1];
    [_mySquare4.physicsBody setRestitution:0.1];
    [_mySquare5.physicsBody setRestitution:0.1];
    [_mySquare6.physicsBody setRestitution:0.1];
    [_mySquare7.physicsBody setRestitution:0.1];
    [_mySquare8.physicsBody setRestitution:0.1];
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
}

-(void)makeShelf{
    _myShelf = [[SKSpriteNode alloc]initWithColor:[SKColor whiteColor] size:CGSizeMake(100, 10)];
    _myShelf1 = [[SKSpriteNode alloc]initWithColor:[SKColor whiteColor] size:CGSizeMake(50, 10)];
    _myShelf2 = [[SKSpriteNode alloc]initWithColor:[SKColor whiteColor] size:CGSizeMake(80, 10)];
    
    _myShelf.position = CGPointMake(self.size.width/1.5, self.size.height/1.5);
    _myShelf1.position = CGPointMake(self.size.width/2.4, self.size.height/2);
    _myShelf2.position = CGPointMake(self.size.width/4.4, self.size.height/5);
    
    _myShelf.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    _myShelf1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    _myShelf2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_myShelf.size];
    
    [_myShelf.physicsBody setDynamic:NO];
    [_myShelf1.physicsBody setDynamic:NO];
    [_myShelf2.physicsBody setDynamic:NO];
    
    [self addChild:_myShelf];
    [self addChild:_myShelf1];
    [self addChild:_myShelf2];
    
}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
        [self makeShelf];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
    }
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:YES];
    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
