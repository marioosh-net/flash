/**
 * Created by IntelliJ IDEA.
 * User: Administrator
 * Date: 20.03.12
 * Time: 14:51
 * To change this template use File | Settings | File Templates.
 */
package cw3 {
public class BaseClass {
    trace("static base class");
    var str:String = test();
    public function BaseClass() {
        trace("base class contructor");
    }
    private function test():String {
        trace("base class method");
        return "base class method";
    }
}
}
