package {

import flash.display.Sprite;
import flash.events.FocusEvent;
import flash.events.MouseEvent;
import flash.system.System;
import flash.text.TextField;

public class As1_module1 extends Sprite {
    private var textField:TextField = null;
    public function As1_module1() {
        textField = new TextField();
        textField.width = 200;
        textField.backgroundColor = 1212121;
        textField.background = true;
        textField.text = "hello, world łóżźćąę "+Math.random();
        addChild(textField);
        trace(textField);

        /**
         * anonymous function
         */
        var f = function():void {
        }
        arrays();

        var a = [];
        a[0] = 111;
        mouseActions(textField);
    }

    /**
     * arrays
     */
    function arrays() {
        var a:Array = [];
        a[0] = 2;
        a[22] = 12;
        trace(a.length);
        trace(a);
        delete a[0];
        trace(a.length);
        trace(a);
    }


    function mouseActions(o):void {

        o.addEventListener(MouseEvent.MOUSE_OVER, function(){
            textField.text = "Mouse Over";
            return true;
        });

        o.addEventListener(MouseEvent.MOUSE_OUT, function(){
            textField.text = "Mouse Out";
            return true;
        });

        o.addEventListener(MouseEvent.MOUSE_UP, function(){
            textField.text = "Mouse Click";
            return true;
        });
    }

}
}
