void setup() {
  size(displayWidth, displayHeight);
  resetGame();
  textFont(createFont("Arial Bold", 50));
  ballX=displayWidth/2;
  ballY=displayWidth/2;
  ballVx=5;
  ballVy=5;
  BALL_VELOCITY= 5;
}

void draw() {
  drawGameScreen();
  
}

void drawGameScreen() {
  // Draw background
  background(bgColor);
  // Update Ball Velocity and Resolve Collisions
  updateBallVelocity();
  // Update Ball and Paddle Positions
  updatePaddlePositions() ;
  // Draw Ball and Paddles
  drawBall();
  drawPaddles();
  resetGame();
  updateBallPosition();
  
  // Display Scores
    displayScores();

}

void drawBall() {
  // Display Ball in correct position
  fill(ballColor);
  ellipse(ballX, ballY, 2*ballRadius, 2*ballRadius);
}

void drawPaddles() {
  // Display Left and Right paddles in correct position
  fill(ballColor);
  rect(0,leftPaddle,paddleWidth,paddleLength);
  fill(ballColor);
  rect(displayWidth-paddleWidth,rightPaddle,paddleWidth,paddleLength);
  

}

void resetGame(){
  // Reset Ball and Paddle Positions
  // Reset Ball Velocity
}

void displayScores() {
  // Display Left and Right player Scores
  
  println(m);
 
  println(n);
  rightLose();
  leftLose();
 if( m == 1)
 { text("LeftWins", 100,60);
 }
 if( n == 1)
 { text("RightWins", 660,60);
 }
}