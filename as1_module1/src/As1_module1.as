package {

import cw1.Cwiczenie1;

import cw2.Cwiczenie2;

import flash.display.Sprite;
import flash.events.MouseEvent;
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
        trace(textField);   // trace <=> System.out.print

        var test:Test = new Test()
        test.mouseActions(textField);
        test.arrays();


        /**
         * cwiczenia
         */
        new Cwiczenie1();
        new Cwiczenie2();


    }
}
}
