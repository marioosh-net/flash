/**
 * Cwiczenie 1
 */
package {
import flash.events.MouseEvent;
import flash.text.TextField;

public class Test extends Base {
    public function Test() {
        /**
         * anonymous function
         */
        var echo = function(text:String):void {
            trace(text);
        }
        echo('ala ma kota');
    }

    /**
     * events
     * @param o
     */
    public function mouseActions(o:TextField):void {

        o.addEventListener(MouseEvent.MOUSE_OVER, function(){
            o.text = "Mouse Over";
            return true;
        });

        o.addEventListener(MouseEvent.MOUSE_OUT, function(){
            o.text = "Mouse Out";
            return true;
        });

        o.addEventListener(MouseEvent.MOUSE_UP, function(){
            o.text = "Mouse Click";
            return true;
        });
    }

    /**
     * arrays
     */
    public function arrays() {
        var a:Array = [];
        a[0] = 121;
        a[22] = 666;
        trace(a.length);
        trace(a);
        delete a[0];
        trace(a.length);
        trace(a);

        trace('-------------- petla 0 -------------------');
        for(var i=0; i< 4; i++) {
            trace(i);
        }

        trace('-------------- petla 1 -------------------');
        for(var i in a) {
            trace('a['+i+']='+a[i]);
        }

        trace('-------------- petla 2 -------------------');
        for each (var elem:Object in a) {
            trace(elem);
        }
    }

}
}
