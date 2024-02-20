<!-- WMDK::TRACKING['google-tag-manager.tpl'] -->

[{if $oConf->getConfigParam('sWmdkTrackingGoogleTagManagerId')}]

    [{assign var="sGoogleTagManagerId" value=$oConf->getConfigParam('sWmdkTrackingGoogleTagManagerId')}]

    <!-- Google Tag Consent Mode V2 (Part 1) -->
    <script type="text/javascript">
        // create dataLayer
        window.dataLayer = window.dataLayer || [];
        function gtag() {
            dataLayer.push(arguments);
        }

        // set „denied" as default for both ad and analytics storage, as well as ad_user_data and ad_personalization,
        gtag("consent", "default", {
            ad_user_data: "denied",
            ad_personalization: "denied",
            ad_storage: "denied",
            analytics_storage: "denied",
            wait_for_update: 500 // milliseconds to wait for update
        });

        // Enable ads data redaction by default [optional]
        gtag("set", "ads_data_redaction", true);
    </script>
    <!-- Google Tag Consent Mode V2 (Part 1) -->

    <!-- Google Tag Manager -->
    <script type="text/javascript" kussin-gtm-integration-id="wmdktracking">(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','[{$sGoogleTagManagerId}]');</script>
    <!-- End Google Tag Manager -->
	
	<!-- Google Tag Consent Mode V2 (Part 2) -->
    <script type="text/javascript">
        // Check if cookie WMDK_GTM_CONSENT is set and add output to console
        if (document.cookie.indexOf("WMDK_GTM_CONSENT=granted") > -1) {
            console.log("Google Consent already granted");
        } else {
            // SET interval to grant user's consent for GTM
            var WMDK_GTM_CONSENT = setInterval(function() {
                // Grant user's consent for GTM
                gtag("consent", "update", {
                    ad_user_data: "granted",
                    ad_personalization: "granted",
                    ad_storage: "granted",
                    analytics_storage: "granted"
                });

                console.log("Google Consent auto-granted");

                document.cookie = "WMDK_GTM_CONSENT=granted; max-age=2592000; path=/";

                clearInterval(WMDK_GTM_CONSENT);
            }, 2000);
        }
    </script>
	<!-- Google Tag Consent Mode V2 (Part 2) -->
[{/if}]