package cw4 {
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;

public class DrawMenu extends Sprite {

    public function DrawMenu() {
        doDrawMenu();
    }

    private function doDrawMenu():void {
        addChild(new MenuElem("W lewo", 10, 10));
        addChild(new MenuElem("W prawo", 130, 10));
        addChild(new MenuElem("Góra", 10, 100));
        addChild(new MenuElem("Dół", 10, 170));
    }

}
}
