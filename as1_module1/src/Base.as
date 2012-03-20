/**
 * Klasa bazowa
 */
package {
import flash.utils.*;

public class Base {
    public function Base() {
        var name:String = "* " + getQualifiedClassName(this) + "                                                    *";
        var belka = '************************************************************************************************************************************'
                .substr(0,name.length);
        trace(belka);
        trace(name);
        trace(belka);
    }

    protected function echo(text:Object) {
        trace(text);
    }
}
}
