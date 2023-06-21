<!-- WMDK::TRACKING['google-tag-manager.tpl'] -->

[{if $oConf->getConfigParam('sWmdkTrackingGoogleTagManagerId')}]

    <script kussin-gtm-integration-id="wmdktracking">
        window.dataLayer = window.dataLayer || [];
        dataLayer.push({ ecommerce: null });

        dataLayer.push({
            event: "purchase",
            ecommerce: {
                transaction_id: "[{$iOrderNr}]",
                value: [{$dTotalOrderBrutSum}],
                tax: [{$dOrderVat}],
                shipping: [{$dOrderDelCost}],
                currency: "[{$sOrderCurrency}]",
                items: [
                    [{foreach from=$aOrderdArticles item=oOrderArticle name=OrderArticles}]
                    {
                        item_id: "[{$oOrderArticle->oxorderarticles__oxartnum->value}]",
                        item_name: "[{$oOrderArticle->oxorderarticles__oxtitle->value}]",
                        currency: "[{$sOrderCurrency}]",
                        price: [{$oOrderArticle->oxorderarticles__oxnetprice->value}],
                        quantity: [{$oOrderArticle->oxorderarticles__oxamount->value}]
                    }
                    [{if !$smarty.foreach.OrderArticles.last}],[{/if}]
                    [{/foreach}]
                ]
            }
        });
    </script>
[{/if}]