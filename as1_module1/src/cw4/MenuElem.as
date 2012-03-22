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
import flash.text.TextField;

public class MenuElem extends Sprite {

    static var w:int = 100;
    static var h:int = 40;
    public function MenuElem(name:String, x:int, y:int) {

        var g:Graphics = this.graphics;
        g.beginFill(0xaaaaff);
        g.lineStyle(1, 0x666666);
        g.drawRect(x - 10, y - 10, w, h);
        g.endFill();

        var text:TextField = new TextField();
        text.text = name;
        text.x = x;
        text.y = y;

        addChild(text);
    }
}
}
