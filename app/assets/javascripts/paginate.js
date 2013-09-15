/**
 * Created with JetBrains RubyMine.
 * User: hks
 * Date: 9/14/13
 * Time: 4:12 PM
 * To change this template use File | Settings | File Templates.
 */
$(function () {
    $(" .pagination a").live("click",function () {
        $.get(this.href,null,null,"script");
        return false;
    }) ;
})  ;
