let s;
let x1 = 0;
let y1 = 0;
let a = 0;
function setup() {
  createCanvas(500, 500);
  noFill();
  a = 0;
  angleMode(DEGREES);
  stroke(0);
  s = createVector(0, 0);
  noLoop();
  m = floor(random(0, 3.999));
}
function draw() {
  translate(width / 2, height / 2);
  background(255, 255, 235);
  push();
  if (m === 0) {
    for (let i = 1; i < 2160; i += 5) {
      s.x = (i * sin(i)) / 10;
      s.y = (i * cos(i)) / 10;
      push();
      rotate(i / 10);
      scale(min(1, i / 1000));
      drawType(floor(random(0, 10.99)), s);
      pop();
    }
  } else if (m === 1) {
    translate(-width / 2 + 10, -height / 2 + 20);
    for (let i = 1; i < int(random(3000, 10000)); i += 5) {
      if (s.x >= width - 30) {
        console.log(s.x);
        s.x = 10;
        a += int(random(0, 2)) * 20;
        a = min(height - 100, a);
      }
      drawType(floor(random(0, 10.99)), s);
    }
    drawType(floor(random(0, 10.99)), createVector(width - 50, height - 50));
  } else {
    translate(width / 3, -height / 2);
    rotate(90);
    for (let i = 1; i < int(random(3000, 10000)); i += 5) {
      if (s.x >= width - 30) {
        console.log(s.x);
        s.x = 10;
        a += int(random(0, 2)) * 20;
        a = min(height - 100, a);
      }

      push();
      drawType(floor(random(0, 10.99)), s);
      pop();
    }
  }
  pop();
  drawType(
    floor(random(0, 10.99)),
    createVector(width / 2 - 30, height / 2 - 30)
  );
}

function drawType(t, s) {
  if (t === 0) {
    beginShape();
    for (let i = 0; i < 10; i++) {
      x1 = s.x + i * 2;
      y1 = s.y + 10 * sin(i * 20) * cos(i * 40);
      vertex(x1, y1);
    }
    endShape();
  }

  if (t === 1) {
    beginShape();
    for (let i = 0; i < 10; i++) {
      x1 = s.x + i * 2;
      y1 = s.y + 5 * cos(i * 20) * cos(i * 40) * sin(i);
      vertex(x1, y1);
    }
    endShape();
  }
  if (t === 2) {
    beginShape();
    for (let i = 0; i < 10; i++) {
      x1 = s.x + i * 2;
      y1 = s.y + 10 * sin(i * 30) - 3 * cos(i * 20 - 30) * sin(i / 5);
      vertex(x1, y1);
    }
    endShape();
  }
  if (t === 3) {
    beginShape();
    for (let i = 0; i < 10; i++) {
      x1 = s.x + i * 2;
      y1 = s.y + 10 * sin(i * 30) * sin(i - 20) - 3 * cos(i - 30) * sin(i / 5);
      vertex(x1, y1);
    }
    endShape();
  }
  if (t === 4) {
    line(s.x - 5, s.y + 5, s.x - 5, s.y - 5);
  }
  if (t === 5) {
    line(s.x + 5, s.y + 5, s.x - 1, s.y - 10);
  }
  if (t === 6) {
    ellipse(s.x + 5, s.y + 5, 3, 5);
  }
  if (t === 7) {
    ellipse(s.x - 5, s.y - 5, 6, 2);
  }
  if (t === 8) {
    beginShape();
    for (let i = 0; i < 10; i++) {
      x1 = s.x + i * 2;
      y1 = s.y + 8 * sin(i * 10) * cos(i * 20 - 20) - 3 * cos(i - 30) * sin(i);
      vertex(x1, y1);
    }
    endShape();
  }
  if (t === 9) {
    rect(s.x - 5, s.y - 5, 6, 6);
  }
  if (t === 10) {
    rect(s.x - 2, s.y - 5, 3, 6);
  }
  s.x = x1;
  s.y = 0 + a;
}

function mousePressed() {
  setup();
  draw();
}
