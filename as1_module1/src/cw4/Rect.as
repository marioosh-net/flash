/**
 * Created by IntelliJ IDEA.
 * User: Administrator
 * Date: 22.03.12
 * Time: 11:56
 * To change this template use File | Settings | File Templates.
 */
package cw4 {
import flash.display.Graphics;
import flash.display.Sprite;
import flash.utils.getAliasName;

public class Rect extends Sprite {
    public function Rect() {
        x = 250;
        y = 250;
        var g:Graphics = this.graphics;
        g.beginFill(0xaacccc);
        g.lineStyle(1, 0x000000);
        g.drawRect(-50,-50,100,100);
    }
}
}
