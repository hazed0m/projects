/**
 * Shop_Infoblock
 *
 * Шаблон инфоблока корзины в TSVshop
 *
 * @category	chunk
 * @version 	5.3
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal  @modx_category TSVshop
 * @internal  @installset base, sample
 * @author    Telnij Sergey (Serg24) <privat_tel@mail.ru>, http://tsvshop.tsv.org.ua, http://tsvshop.xyz 
 */

<!--full-->
<table class="fullinfo">
<!--table-->
<tr><td class="icon"><img src="[+shop.info.iconpath+]" width="47"></td><td class="name"><div><a href="[+shop.info.link+]">[+shop.info.name+]</a></div></td><td class="del"><a href="#" [+shop.info.delatributs+]><img src="/assets/templates/demoshop/img/del.png"></a></td></tr>
<!--/table-->
</table>
<!-- <div><a class="left" href="[+shop.info.selfurl+]&a=clear">Очистить</a> <a class="button right" href="[+shop.info.carturl+]">В корзину</a></div> -->
<div><form class="left" method="get" id="basketClearLink"><input name="a" value="clear" type="hidden"/><a href="javascript:void(0);" onClick="getId('basketClearLink').submit();">Очистить</a></form> <a class="button right" href="[+shop.info.carturl+]">В корзину</a></div>
<div class="clear"></div>
<!--/full-->

<!--empty-->
<p>[+shop.info.sempty+]</p>
<!--/empty-->

