[{$smarty.block.parent}]
<!-- WMDK::TRACKING['base_js.tpl'] -->

[{* DEFAULT *}]
[{include file="wmdk_default.tpl"}]


[{if $oView->getClassName() eq "start"}]
    [{* HOMEPAGE *}]
    [{include file="wmdk_class_start.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "search"}]
    [{* SEARCH *}]
    [{include file="wmdk_class_search.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "alist"}]
    [{* ALIST *}]
    [{include file="wmdk_class_alist.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "manufacturerlist"}]
    [{* MANUFACTURER *}]
    [{include file="wmdk_class_manufacturerlist.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "details"}]
    [{* DETAILS *}]
    [{include file="wmdk_class_details.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "basket"}]
    [{* BASKET *}]
    [{include file="wmdk_class_basket.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "user"}]
    [{* USER *}]
    [{include file="wmdk_class_user.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "payment"}]
    [{* PAYMENT *}]
    [{include file="wmdk_class_payment.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "order"}]
    [{* ORDER *}]
    [{include file="wmdk_class_order.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "thankyou"}]
    [{* THANK YOU *}]
    [{include file="wmdk_class_thankyou.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "register"}]
    [{* REGISTER *}]
    [{include file="wmdk_class_register.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "account"}]
    [{* ACCOUNT *}]
    [{include file="wmdk_class_account.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "account_password"
    || $oView->getClassName() eq "account_newsletter"
    || $oView->getClassName() eq "account_user"
    || $oView->getClassName() eq "account_order"
    || $oView->getClassName() eq "compare"
    || $oView->getClassName() eq "account_noticelist"
    || $oView->getClassName() eq "account_wishlist"
    || $oView->getClassName() eq "account_reviewlist"}]
    [{* ACCOUNT MENU *}]
    [{include file="wmdk_class_account_menu.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "content"}]
    [{* CMS *}]
    [{include file="wmdk_class_content.tpl"}]
[{/if}]


[{if $oView->getClassName() eq "oxUBase"}]
    [{* ERROR 404 *}]
    [{include file="wmdk_class_error404.tpl"}]
[{/if}]