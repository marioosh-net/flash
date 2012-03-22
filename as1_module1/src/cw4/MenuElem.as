/**
 * Created by IntelliJ IDEA.
 * User: Administrator
 * Date: 22.03.12
 * Time: 09:21
 * To change this template use File | Settings | File Templates.
 */
package cw4 {
import flash.display.Graphics;
import flash.display.Sprite;
import flash.events.MouseEvent;
import flash.events.TimerEvent;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;
import flash.utils.Timer;

public class MenuElem extends Sprite {

    var t:Timer;
    var tt:int = 70;
    
    static var w:int = 100;
    static var h:int = 40;
    
    var _name:String;
    var _x:int;
    var _y:int;
    
    public function MenuElem(name:String, x:int, y:int) {
        this._name = name;
        this._x = x;
        this._y = y;

        build();
        events();
    }

    private function build():void {
        // text
        var text:TextField = new TextField();
        text.textColor = 0xffffff;
        var tf:TextFormat = new TextFormat("Arial", 16);
        tf.bold;
        text.defaultTextFormat = tf;

        text.text = _name;
        text.autoSize = TextFieldAutoSize.LEFT;
        text.x = _x + 10;
        text.y = _y + 10;

        // kwadrat
        var g:Graphics = this.graphics;
        g.beginFill(0xaaaaff);
        g.lineStyle(1, 0x666666);
        var w2:int = text.width+40;
        if(w2 < w) {
            w2 = w;
        }
        g.drawRoundRect(_x, _y, w2, h, 10,10);

        g.endFill();
        addChild(text);
    }

    private function events():void {
        // Events
        addEventListener(MouseEvent.CLICK, function(e:MouseEvent){
            var target:MenuElem = (MenuElem)(e.currentTarget);
            trace("target: " + e.target);
            trace("currentTarget: " + e.currentTarget);

            if(target._name == "Góra") {
                DrawMenu.rect.y = DrawMenu.rect.y - 10;
            }
            if(target._name == "Dół") {
                DrawMenu.rect.y = DrawMenu.rect.y + 10;
            }
            if(target._name == "Obróć Prawo") {
                DrawMenu.rect.rotationZ = DrawMenu.rect.rotationZ + 10;
                // DrawMenu.rect.rotation = DrawMenu.rect.rotation - 20;
            }
            if(target._name == "Obróć Lewo") {
                DrawMenu.rect.rotationZ = DrawMenu.rect.rotationZ -10;
            }
            if(target._name == "Prawo") {
                DrawMenu.rect.x = DrawMenu.rect.x + 10;
            }
            if(target._name == "Lewo") {
                DrawMenu.rect.x = DrawMenu.rect.x - 10;
            }
            if(target._name == "Anim") {
                anim();
            }
        });

        DrawMenu.rect.addEventListener(MouseEvent.CLICK, function(){
            if(t != null) {
                t.stop();
                t = null;
            }
        });
    }
    private function anim():void {
        if(t != null) {
            if(t.delay > 10) {
                t.delay -= 10;
            }
        } else {
            t = new Timer(tt, 0);
            t.addEventListener(TimerEvent.TIMER, function(){
                DrawMenu.rect.rotationZ -=10;
            })
            t.start();
        }
    }
}
}
