<!-- WMDK::TRACKING['thankyou.tpl'] -->

[{assign var=iOrderNr value=$order->oxorder__oxordernr->value}]
[{assign var=dTotalOrderNetSum value=$order->oxorder__oxtotalnetsum->value}]
[{assign var=dTotalOrderBrutSum value=$order->oxorder__oxtotalbrutsum->value}]
[{assign var=dOrderVat value=$dTotalOrderBrutSum-$dTotalOrderNetSum}]
[{assign var=dOrderDelCost value=$order->oxorder__oxdelcost->value}]
[{assign var=aOrderdArticles value=$order->getOrderArticles()}]

[{if $order->oxorder__oxcurrency->value != ""}]
    [{assign var=sOrderCurrency value=$order->oxorder__oxcurrency->value}]
[{else}]
    [{assign var=sOrderCurrency value="EUR"}]
[{/if}]

[{include file="wmdk_google_tag_manager_thankyou.tpl"}]
