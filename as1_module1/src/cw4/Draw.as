package cw4 {
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;

public class Draw extends Sprite {

    public function Draw() {
        doDrawHouse();
    }

    private function doDrawHouse():void {
        var shape:Shape = new Shape();
        var g:Graphics = shape.graphics;

        g.beginFill(0xFFCC00);
        g.lineStyle(1, 0x666666);
        g.drawCircle(400, 100, 40);
        g.endFill();

        g.beginFill(0xcccccc);
        g.lineStyle(1, 0x666666);
        g.drawRect(100,200, 150, 150);
        g.endFill();


        g.beginFill(0xffcccc);
        g.lineStyle(1, 0x666666);
        g.moveTo(50,200);
        g.lineTo(300,200);
        g.lineTo(200,50);
        g.endFill();

        addChild(shape);
    }

}
}
