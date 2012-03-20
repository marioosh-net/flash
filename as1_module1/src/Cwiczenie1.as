/**
 * Created by IntelliJ IDEA.
 * User: Administrator
 * Date: 20.03.12
 * Time: 11:24
 * To change this template use File | Settings | File Templates.
 */
package {
public class Cwiczenie1 extends Base {
    public function Cwiczenie1() {
        var a:Array = [];
        iter(a);
        var v:Vector = new Vector.<int>();
        iter(v);
    }
    
    private function iter(a:Object) {
        a[0] = 1;
        a[1] = 2;

        var suma1:int;
        for(var i:int = 0;i<20; i++) {
            for each (var elem:int in a) {
                suma1 += elem;
            }
        }
        trace(suma1);

        a[suma1] = suma1;
        trace(a);
        for each (var elem:int in a) {
            trace(elem);
        }        
    }
}
}
