import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawROC(ctx);
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
  querySelector("#uk").onClick.listen((e) => drawUK(ctx));
}

void drawUK(ctx){
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  
  ctx.beginPath();
  ctx.moveTo(0, 0);
  ctx.lineTo(100, 66.67);
  ctx.lineTo(77.64, 66.67);
  ctx.lineTo(0, 14.9);
  ctx.lineTo(0, 0);
  ctx.moveTo(0, 80);
  ctx.lineTo(135, 80);
  ctx.lineTo(135, 0);
  ctx.lineTo(165, 0);
  ctx.lineTo(165, 80);
  ctx.lineTo(300, 80);
  ctx.lineTo(300, 120.11);
  ctx.lineTo(165, 120.11);
  ctx.lineTo(165, 200);
  ctx.lineTo(135, 200);
  ctx.lineTo(135, 119.89);
  ctx.lineTo(0, 119.89);
  ctx.lineTo(0, 80);
  ctx.moveTo(277.65, 0);
  ctx.lineTo(300, 0);
  ctx.lineTo(200, 66.67);
  ctx.lineTo(177.65, 66.67);
  ctx.lineTo(277.65, 0);
  ctx.moveTo(300, 200);
  ctx.lineTo(200, 133.33);
  ctx.lineTo(222.36, 133.33);
  ctx.lineTo(300, 185.1);
  ctx.lineTo(300, 200);
  ctx.moveTo(0, 200);
  ctx.lineTo(100, 133.33);
  ctx.lineTo(122.35, 133.33);
  ctx.lineTo(22.35, 200);
  ctx.lineTo(0, 200);
  ctx.strokeStyle = 'rgb(208, 12, 39)';
  ctx.stroke();
  ctx.fillStyle = 'rgb(208, 12, 39)';
  ctx.fill();
  ctx.closePath();
  
  ctx.beginPath();
  ctx.moveTo(0, 22.33);
  ctx.lineTo(66.45, 66.67);
  ctx.lineTo(0, 66.67);
  ctx.lineTo(0, 22.33);
  ctx.moveTo(33.35, 0);
  ctx.lineTo(125, 0);
  ctx.lineTo(125, 61);
  ctx.lineTo(33.35, 0);
  ctx.moveTo(175, 0);
  ctx.lineTo(266.45, 0);
  ctx.lineTo(175, 61);
  ctx.lineTo(175, 0);
  ctx.moveTo(300, 22.33);
  ctx.lineTo(300, 66.67);
  ctx.lineTo(233.55, 66.67);
  ctx.lineTo(300, 22.33);
  ctx.moveTo(300, 133.33);
  ctx.lineTo(300, 177.67);
  ctx.lineTo(233.55, 133.33);
  ctx.lineTo(300, 133.33);
  ctx.moveTo(266.45, 200);
  ctx.lineTo(175, 200);
  ctx.lineTo(175, 139);
  ctx.lineTo(266.45, 200);
  ctx.moveTo(125, 200);
  ctx.lineTo(33.55, 200);
  ctx.lineTo(125, 139);
  ctx.lineTo(125, 200);
  ctx.moveTo(0, 133.33);
  ctx.lineTo(66.45, 133.33);
  ctx.lineTo(0, 177.67);
  ctx.lineTo(0, 133.33);
  ctx.strokeStyle = 'rgb(0, 31, 126)';
  ctx.stroke();
  ctx.fillStyle = 'rgb(0, 31, 126)';
  ctx.fill();
  ctx.closePath();
  
}
  
void drawUSA(ctx){

   ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 15.4, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 46.2, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 77.2, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 108.0, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 138.8, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 169.6, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 200.4, flag_w / 1, flag_h / 13);
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 1.9);
    num b = flag_h/18;
  ctx.font = "10px Arial";
  ctx.strokeStyle = 'rgb(255, 255, 255)';
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36,12);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*2);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*3);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*4);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*5);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*6);
  ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*7);
   ctx.strokeText("✮      ✮      ✮      ✮      ✮", flag_w / 14, b*8);
   ctx.strokeText("✮      ✮      ✮      ✮      ✮      ✮", flag_w / 36, b*9);



}

void drawROC(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  // 再畫青天
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  // 畫十二道光芒白日
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = circle_x + Math.cos(angle) * star_radius;
    num toY = circle_y + Math.sin(angle) * star_radius;
    // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 白日:藍圈
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為藍色
  ctx.fillStyle = 'rgb(0, 0, 149)';
  ctx.fill();
  // 白日:白心
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
}

void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}