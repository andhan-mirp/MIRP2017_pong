void updateBallVelocity() {
  // Detect Ball collisions with walls or paddles
  // Resolve Collisions with all other walls.
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -0.95;
  }
    if (ballY <ballRadius){
    ballY = ballRadius;
    ballVy *= -0.95;
  }
  
  // If collide with paddle, or top/bottom wall, then bounce off
 if( ballX> paddleWidth - ballRadius ) 
 {
 ballVx = -ballVx;
 }
  // If collides with left wall, right player gains one point
   if (ballX > displayWidth-ballRadius){
    ballX = displayWidth - ballRadius;
    ballVx*= -0.95;
  }
   
  // If collides with right wall, left player gains one point
 
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
    rightPaddle = rightPaddle + 10l;
  }
  
  // Make sure the paddles don't leave the screen
}