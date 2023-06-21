<!-- WMDK::TRACKING['google-tag-manager.tpl'] -->

[{if $oConf->getConfigParam('sWmdkTrackingGoogleTagManagerId')}]

    [{assign var="sGoogleTagManagerId" value=$oConf->getConfigParam('sWmdkTrackingGoogleTagManagerId')}]

    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=[{$sGoogleTagManagerId}]"
                      height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->

[{/if}]