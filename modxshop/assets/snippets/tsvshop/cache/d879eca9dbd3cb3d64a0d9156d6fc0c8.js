
strSorry="Извините, но ваша корзина полностью заполнена, перейдите к оплате заказаного товара.";strAdded="В корзину добавлено ";strRemove="Нажмите 'Ok' чтобы удалить продукт из корзины.";strILabel="Код продукта";strDLabel="Название/Описание";strQLabel="Кол-во";strPLabel="Цена";strSLabel="Ваша корзина";strRLabel="Очистить корзину";strRButton="Удалить";strSUB="Подитог";strSHIP="Доставка";strTAX="Налог";strTOT="Итого";strErrQty="Неверное количество.";strNewQty='Пожалуйста, введите новое количество:';strRub=' руб.';strGrn=' грн.';strEuro=' евро';strUsd=' $';strEmpty='Ваша корзина пуста';strEmptyInfo='Корзина пуста';strClear='Нажмите ОК, чтобы удалить всё из корзины';strTovar1=' Товар. ';strTovar2=' Товара. ';strTovar3=' Товара. ';strTovar4=' Товара. ';strTovar5=' Товаров. ';strSumma='Сумма заказа: ';strMinOrder='Сумма заказа меньше минимально возможной. Пожалуйста, закажите больше товаров, чтобы продолжить.';strQuant1=' экземпляр товара';strQuant2=' экземпляра товара';strQuant3=' экземпляра товара';strQuant4=' экземпляра товара';strQuant5=' экземпляров товара';strOk='Правильно';strFormatError='Неправильный формат';strNotEmpty='Поле не может быть пустым';strOnlyNumbers='Только цифры';strNotLess='Должно быть не менее ';strSymb=' символов';strNumber=' цифр';strDiscount='Скидка';strHasDiscount='№ дисконтной карты, если имеете';strDiscountNum='№ дисконтной карты';strNoCookies='Для правильной работы должны быть включены Cookie в вашем браузере.';strAddSuccess='Товар успешно добавлен';strAddError='Ошибка добавления товара';strAddLoading='Кладем товар в корзину ...';Language='russian-UTF8';bLanguageDefined=true;CatRoot=7;DisplayNotice='true';MinimumOrder='';MonetarySymbol=' грн.';PriceFormat='0,00';SecFields='fio,adress,city,phone,email';SecPassword='MyPass';SmtpFromEmail='my@mail.com';SmtpFromName='Интернет-магазин';SmtpReplyEmail='my@mail.com';StatusOrder='Новый==d4e8f1||Ожидание оплаты==feecd8||Оплачено==e7f0db||Завершено==e4f0c6||Отменен==fce3e2';SubjectMailAdmin='Поступил новый заказ';SubjectMailUser='Заказ успешно принят';SubjectUpdateStatus='Изменение статуса заказа';TypeCat='docs';if(!navigator.cookieEnabled){alert(strNoCookies);}
isIE=window.navigator.userAgent.indexOf("MSIE")>-1;var protocol=(window.location.protocol=='https:')?'https://':'http://';domain=protocol+window.location.hostname;var result=null;var ID=null;var selOptKo;var selOptTXT;var get=(!location.search)?"?":"&";var buttonclass='tsv-addtocart';var wObj;var divnotice='tsvglow';var succ='successclass';var err='errorclass';var info='infoclass';var load='loadingclass';var sTimeout=5;var sTimeClose=3000;var op=0;var tsvres='';var position='top-right';function addClass(o,c){var re=new RegExp("(^|\\s)"+c+"(\\s|$)","g");if(re.test(o.className))return;o.className=(o.className+" "+c).replace(/\s+/g," ").replace(/(^ | $)/g,"");}
function removeClass(o,c){var re=new RegExp("(^|\\s)"+c+"(\\s|$)","g");o.className=o.className.replace(re,"$1").replace(/\s+/g," ").replace(/(^ | $)/g,"");}
function tsvnotice(c,text){wObj=getId(divnotice);op=0.5;wObj.style.opacity=0.5;wObj.innerHTML=text;removeClass(wObj,tsvres);tsvres=c;addClass(wObj,tsvres);wObj.style.display='block';tsvwopen();}
function tsvwopen()
{if(op<0.85){op+=0.1;wObj.style.opacity=op;wObj.style.filter='alpha(opacity='+op*100+')';t=setTimeout('tsvwopen()',sTimeout);}else{setTimeout('tsvwclose()',sTimeClose);}}
function tsvwclose()
{if(op>0){op=op-0.1;wObj.style.opacity=op;wObj.style.filter='alpha(opacity='+op*100+')';t=setTimeout('tsvwclose()',sTimeout);}else{wObj.style.display='none';removeClass(wObj,tsvres);}}
function AJAXInteraction(url,callback){function getHTTPObject(){if(typeof XMLHttpRequest==='undefined'){XMLHttpRequest=function(){try{return new ActiveXObject("Msxml2.XMLHTTP.6.0");}catch(e){}
try{return new ActiveXObject("Msxml2.XMLHTTP.3.0");}catch(e){}
try{return new ActiveXObject("Msxml2.XMLHTTP");}catch(e){}
try{return new ActiveXObject("Microsoft.XMLHTTP");}catch(e){}
throw new Error("This browser does not support XMLHttpRequest.");};}
return new XMLHttpRequest();}
var request=getHTTPObject();request.onreadystatechange=function(){if(request.readyState==4){if(request.status==200){if(callback)callback(request.responseText);}}};this.doGet=function(){request.open("GET",url,true);request.send(null);};this.doPost=function(body){request.open("POST",url,true);request.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");request.send(body);};}
function replaceS(subject,search,replace){return subject.split(search).join(replace);}
function findElementByID_(elem,txt){var elems=elem.getElementsByTagName('*');var v=elems.length;for(var i=v;--i<v;){if(elems[i].id==txt)break;}
if(i<v){return elems[i];}
return(null);}
function findElementByID(elem,txt){return getId(txt);}
function moneyFormat(input){var dollars=Math.floor(input);var tmp=new String(input);for(var decimalAt=tmp.length;--decimalAt>0;){if(tmp.charAt(decimalAt)==".")break;}
var cents=""+Math.round(input*100);cents=cents.substring(cents.length-2,cents.length);if(cents=="0")cents="00";if(PriceFormat=="0,00")return(dollars+"."+cents);else return(dollars);}
function USelect(ID_NUM,form){selOptKo="";selOptTXT="";var text;var j;try{var kol=(form.elements["OptionText"].value);if(kol>0)for(var i=1;i<=kol;i++){var elem=form.elements["Shop_"+i];if(elem.type=='checkbox'||elem.type=='radio'){if(elem.checked){text=elem.value;j=text.indexOf("==");if(selOptTXT.length>0)selOptTXT+=", ";if(elem.getAttribute("data-subname")){selOptTXT+=elem.getAttribute("data-subname")+": ";}else{selOptTXT+=elem.getAttribute("data-subname")+": ";}
selOptTXT+=text.substring(j+2);if(text.substring(0,1)=="*"){selOptKo=text.substring(0,j)+selOptKo;}else{selOptKo+="+"+text.substring(0,j);}}}else{var Item=elem.selectedIndex;var el=elem.length;if(Item>-1){text=elem.options[Item].value;j=text.indexOf("==");if(selOptTXT.length>0)selOptTXT+=", ";if(elem.getAttribute("data-subname")){selOptTXT+=elem.getAttribute("data-subname")+": ";}else{selOptTXT+=elem.options[Item].getAttribute("data-subname")+": ";}
selOptTXT+=text.substring(j+2);if(text.substring(0,1)=="*"){selOptKo=text.substring(0,j)+selOptKo;}else{selOptKo+="+"+text.substring(0,j);}}else for(n=0;n<el;n++){if(elem[n].checked==true){text=elem[n].value;j=text.indexOf("==");if(selOptTXT.length>0)selOptTXT+=", ";selOptTXT+=elem[n].getAttribute("data-subname")+": ";selOptTXT+=text.substring(j+2);if(text.substring(0,1)=="*"){selOptKo=text.substring(0,j)+selOptKo;}else{selOptKo+="+"+text.substring(0,j);}}}}}}catch(e){return("");}}
function Ucalc(ID_NUM){var thisForm=document.getElementById('Tovar'+ID_NUM);USelect(ID_NUM,thisForm);try{elem=findElementByID(thisForm,"price"+ID_NUM);}catch(e){return(null);}
if(!elem){return(null);}
if(!thisForm.elements['qty']){var b=1;}else{var b=thisForm.elements['qty'].value;if(!b||b<=0){b=1;thisForm.elements['qty'].value=b;}}
var c=thisForm.elements['formula'].value;c=tryCalc(c,b);c="=$n*("+c+selOptKo+")";c=tryCalc(c,b);elem.innerHTML=moneyFormat(c);}
function CalcPrice(ID_NUM,PRICE){var thisForm=document.getElementById('Tovar'+ID_NUM);USelect(ID_NUM,thisForm);var b=thisForm.elements['qty'].value;if(!b){b=1;}
if(!PRICE)PRICE="0";var c=PRICE;c=tryCalc(c,b);c="="+c+selOptKo;c=tryCalc(c,1);return moneyFormat(c);}
function tryCalc(code,col){try{if(typeof code=='string'){var cod=ConvertPrice(code);cod=cod.replace(' ','').replace(',','.');cod=cod.replace('\r\n','');if(cod.indexOf('=')==0){var a="";var cd=cod.lastIndexOf("//");if(cod.charAt(cd+2)==="r")cod=cod.substring(0,cd)
cod=replaceS(cod,"&#36","$");cod=replaceS(cod,"$n",col);cod=replaceS(cod,"$e","Math.E");cod=replaceS(cod,"max","Math.max");cod=replaceS(cod,"min","Math.min");cod=replaceS(cod,"random","Math.random");cod=replaceS(cod,"floor","Math.floor");eval("a"+cod);return(a*1);}
return cod;}}catch(e){return("ERROR");}}
function explode(delimiter,string){return string.toString().split(delimiter.toString());}
function ConvertPrice(text){var txt=text;var a=txt.indexOf("||");if(a>0){var pieces=explode("||","||"+txt);var o="";var o2="";var value;var pos;var tmp;var pos2;var pl=pieces.length;for(var i=0;i<pl;i++){value=pieces[i];if(value.length>0){pos=value.indexOf("-");if(pos>0){tmp=value.substring(0,pos);o+="(( "+tmp+"<=$n & ";pos2=value.indexOf("==");tmp=value.substring(pos+1,pos2);o+=tmp+">=$n)?( ";o2+="))";tmp=value.substring(pos2+2);o+=tmp+" ):( ";}else{tmp=value;o+=tmp;}}}
return"="+o+o2;}
return txt;}
function getId(id){return document.getElementById(id);}
function getClass(classname){return document.getElementsByClassName(classname);}
function testKey(k){var key=(typeof k.charCode=='undefined'?k.keyCode:k.charCode);if(k.ctrlKey||k.altKey||key<32)return true;key=String.fromCharCode(key);return/[\d]/.test(key);}
function ShowWindow(text,result){tsvnotice(result,text);}
function HideWindow(result,text){tsvnotice(result,text);}
function RemoveFromCart(i){if(confirm(strRemove)){location.href=location.href+get+"a=del&num="+i;}else{return false;}}
function ChangeQuantity(i,q){if(isNaN(q)){alert(strErrQty);}else{if(!q||q<=0){q=1;this.value=q;}
location.href=location.href+get+"a=chq&num="+i+"&qnt="+q;}}
function AddToCart(ID_NUM,dataset){var dataset=typeof dataset!=='undefined'?'&'+dataset:false;if(DisplayNotice)ShowWindow(strAddLoading,load);var thisForm=getId('Tovar'+ID_NUM);USelect(ID_NUM,thisForm);var cart_icon=(ci=thisForm.elements['cart_icon'])?ci.value:'';var typeitem=(ti=thisForm.elements['typeitem'])?ti.value:'';var q=(thisForm.elements['qty'])?parseInt(thisForm.elements['qty'].value):1;var notice="";strADDTLINFO="";var strCART_ICON="";var strQuant="";var errornan=false;if(isNaN(q)||!q){alert(strErrQty);HideWindow(err,strErrQty);errornan=true;}else{strQUANTITY=q;strID_NUM=(!ID_NUM)?"":ID_NUM;strNAME=(selOptKo.length)?" ldquo"+selOptTXT+"rdquo":"";strCART_ICON=(cart_icon)?cart_icon:"";var param='&idnum='+ID_NUM+'&name='+strNAME+'&qty='+strQUANTITY+'&opt='+selOptKo+'&icon='+strCART_ICON+'&typeitem='+typeitem;param=(dataset)?param+dataset:param;var add=new AJAXInteraction(TSVSHOP_URL+'include/ajax.php',AddSuccess);add.doPost('mode=additem'+param);}
return false;}
function AddSuccess(res){res=replaceS(res,'<br>','');res=replaceS(res,'<br />','');res=replaceS(res,'\r','');res=replaceS(res,'\n','');res=replaceS(res,'\ufeff','');if(res=='success'){if(DisplayNotice){HideWindow(succ,strAddSuccess);}
if(getId('infoblock_cont')){GetInfoblock(false);}
if(getId('basket_cont')){preload_image('basket_cont');GetBasket(false);}}
if(res=='error'){if(DisplayNotice){HideWindow(err,strAddError);}
if(getId('infoblock_cont')){GetInfoblock(false);}
if(getId('basket_cont')){preload_image('basket_cont');GetBasket(false);}}
if(res!='success'&&res!='error'&&res){if(DisplayNotice){HideWindow(info,res);}
if(getId('infoblock_cont')){GetInfoblock(false);}
if(getId('basket_cont')){preload_image('basket_cont');GetBasket(false);}}}
function GetInfoblock(report,type){if(!type){type="full";}
if(!report){if(getId('infoblock_cont'))loading('infoblock_cont');var ib=new AJAXInteraction(TSVSHOP_URL+'include/ajax.php',GetInfoblock);ib.doPost('mode=info&type='+type);}else{if(getId('infoblock_cont')){loading('infoblock_cont');getId('infoblock_cont').innerHTML=report;}}}
function GetBasket(report){if(!report){var b=new AJAXInteraction(TSVSHOP_URL+'include/ajax.php?mode=basket',GetBasket);b.doGet();}else{getId('basket_cont').innerHTML=report;}}
function recalcCheckout(report){if(!report){loading('checkout_table');var b=new AJAXInteraction(TSVSHOP_URL+'include/ajax.php?mode=checkout&act=recalc',recalcCheckout);b.doGet();}else{loading('checkout_table');getId('checkout_table').innerHTML=report;}}
function loading(id){var div=document.getElementById(id);var width=div.clientWidth;var height=div.clientHeight;span=document.createElement('div');span.style.width=width+"px";span.style.height=height+"px";span.style.position='absolute';span.style.opacity='0.3';span.style.margin="-"+height+"px 0 0 0";span.style.background='#ccc url(\''+TSVSHOP_URL+'images/ajax-loader.gif\') no-repeat center center';if(div)div.appendChild(span);}
function getAsUriParameters(data){return Object.keys(data).map(function(k){if(Array.isArray(data[k])){var keyE=encodeURIComponent(k+'[]');return data[k].map(function(subData){return keyE+'='+encodeURIComponent(subData);}).join('&');}else{return encodeURIComponent(k)+'='+encodeURIComponent(data[k]);}}).join('&');}
function init(){if(arguments.callee.done)return;arguments.callee.done=true;if(!getId(divnotice)){var c=document.createElement('div');c.innerHTML='<div id="'+divnotice+'" class="jGrowl ie6 '+position+'"></div>';document.body.appendChild(c);}
document.body.onclick=function(e){e=window.event?event.srcElement:e.target;if(e.className&&e.className.indexOf(buttonclass)!=-1){var idnum=e.dataset.id;var dataset=getAsUriParameters(e.dataset);AddToCart(idnum,dataset);return false;};};GetInfoblock(false);};function addLoadEvent(func){var oldonload=window.onload;if(typeof window.onload!=='function'){window.onload=func;}else{window.onload=function(){if(oldonload){oldonload();}
func();};}}
addLoadEvent(init);