package cw4 {
import flash.display.Graphics;
import flash.display.Shape;
import flash.display.Sprite;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.text.TextField;
import flash.ui.Keyboard;

public class DrawMenu extends Sprite {

    public static var rect:Rect = new Rect();

    public function DrawMenu() {
        doDrawMenu();
    }

    private function doDrawMenu():void {

        addChild(new MenuElem("Obróć Prawo", 140, 10));
        addChild(new MenuElem("Obróć Lewo", 10, 10));
        addChild(new MenuElem("Prawo", 140, 60));
        addChild(new MenuElem("Lewo", 10, 60));
        addChild(new MenuElem("Góra", 10, 110));
        addChild(new MenuElem("Dół", 10, 160));

        addChild(new MenuElem("Anim", 250, 10));
        // addChild(new MenuElem("Bardzo bardzo długo opis przycisku", 40, 150));

        addChild(rect);

        addEventListener(MouseEvent.CLICK, function(e:Event){
            trace(e);
            e.preventDefault();
        });
        
        // keyboard events
        addEventListener(Event.ADDED_TO_STAGE, function(e:Event) {
            stage.addEventListener(KeyboardEvent.KEY_DOWN, function(ev:KeyboardEvent){
                switch(ev.keyCode) {
                    case Keyboard.RIGHT: rect.x+=10; break;
                    case Keyboard.LEFT: rect.x-=10; break;
                    case Keyboard.UP: rect.y-=10; break;
                    case Keyboard.DOWN: rect.y+=10; break;
                }
            })
        });

    }

}
}
