/**
 * Created by IntelliJ IDEA.
 * User: Administrator
 * Date: 20.03.12
 * Time: 14:51
 * To change this template use File | Settings | File Templates.
 */
package cw3 {
public class SubClass extends BaseClass {
    trace("static subclass");
    var str1:String = test();

    public function SubClass() {
        trace("subclass contructor");
    }
    private function test():String {
        trace("subclass method");
        return "ala ma kota";
    }
}
}
