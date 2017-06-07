void updateBallVelocity() {
  // Detect Ball collisions with walls or paddles
 
  
  
  // Resolve Collisions with all other walls.
 if (ballX < paddleWidth + ballRadius){
    ballX = paddleWidth + ballRadius;
    ballVx*= -1;
 }
   else if(ballX < ballRadius)
  {
    ballX=displayWidth/2;
    ballVx*= -1;
    rightScore+=1;
    
  };
  if (ballX >displayWidth -(paddleWidth + ballRadius)){
    ballX = displayWidth- ( paddleWidth+ballRadius );
    ballVx*= -1;
  }
  else if(ballX > displayWidth-ballRadius)
   {
    ballX = displayWidth/2;
    ballVx*= -1;
    leftScore+=1;
  }  ;
  
 // If collide with paddle, or top/bottom wall, then bounce off
   if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -1;
  }
 
 if (ballY <ballRadius){
    ballY = ballRadius;
    ballVy *= -1;
  }
  
 // If collides with right wall, left player gains one point  
 
  // If collides with left wall, right player gains one point
  
 
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void updatePaddlePositions() {
  // Based on the keys pressedd, move the paddles (update Y position)
  if (left_up){
    leftPaddle = leftPaddle - 10;
  }
  if (right_up){
    rightPaddle = rightPaddle - 10;
  }
  if (left_down){
    leftPaddle = leftPaddle + 10;
  }
  if (right_down){
    rightPaddle = rightPaddle + 10;
  }
  
  // Make sure the paddles don't leave the screen
}