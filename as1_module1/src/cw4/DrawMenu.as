package cw4 {
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.text.TextField;

public class DrawMenu extends Sprite {

    public static var rect:Rect = new Rect();

    public function DrawMenu() {
        doDrawMenu();
    }

    private function doDrawMenu():void {

        addChild(new MenuElem("Prawo", 140, 10));
        addChild(new MenuElem("Lewo", 10, 10));
        addChild(new MenuElem("Góra", 10, 60));
        addChild(new MenuElem("Dół", 10, 110));
        // addChild(new MenuElem("Bardzo bardzo długo opis przycisku", 40, 150));

        addChild(rect);

    }

}
}
