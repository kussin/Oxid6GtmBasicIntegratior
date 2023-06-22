# KUSSIN | GTM Basic Integrator for OXID eShop 6.1.x

Integrates [Google Tag Manager (GTM)](https://tagmanager.google.com/) into OXID eShop 6.1.x with Data Layer for `purchase` Event.

More details of the integration can be found in our Blog [Google Tag Manager x Shopify – E Commerce Datalayer einrichten](https://www.kussin.de/marketing/google-tag-manager-x-shopify-e-commerce-datalayer-einrichten/) (only German).

**NOTE:** This extension is a further development of module [KUSSIN | GTM Basic Integrator for OXID eShop 4.10.x](https://github.com/kussin/Oxid4GtmBasicIntegratior) and was [ported to OXID 6.1.x](https://docs.oxid-esales.com/developer/en/6.0/update/eshop_from_53_to_6/modules.html).

## Requirement

1. OXID eShop Version CE/PE/EE v6.1.x or newer
2. PHP 7.1 or newer

## Installation with [Composer](https://docs.oxid-esales.com/eshop/de/6.2/installation/neu-installation/installation-vorbereiten.html#schritt-shopdateien-bereitstellen)

1. Goto your OXID eShop root directory.
2. Check you PHP version with `php -v` and compare it to your OXID PHP version (see **Service > Systeminfo**), it needs to match.
3. Add the Repository https://github.com/kussin/Oxid6GtmBasicIntegratior.git to your `composer.json` file by 
   running `composer config repositories.kussin-oxid6-gtm-basic-integrator vcs https://github.com/kussin/Oxid6GtmBasicIntegratior.git`.
4. Run the following commands to install the module:
    ```bash
    composer clearcache
    composer require kussin/oxid6-gtm-basic-integrator --no-update
    composer update --no-interaction
    ```
5. Clear the OXID cache `rm -rf source/tmp/*`.

### Additional for OXID 6.2++

**RECOMMENDATION:** :information_source: If you are using OXID 6.2++ better use [Google-Analytics 4 für OXID eShop](https://github.com/d3datadevelopment/GoogleAnalytics4).

6. Run the following commands to finalize the installation:
    ```bash
    php vendor/bin/oe-console oe:module:install-configuration source/modules/kussin/oxid6-gtm-basic-integrator/
    php vendor/bin/oe-console oe:module:apply-configuration
    ```

## User Guide

[User Guide](USER_GUIDE.md)

## Support

Kussin | eCommerce und Online-Marketing GmbH<br>
Fahltskamp 3<br>
25462 Rellingen<br>
Germany

Fon: +49 (4101) 85868 - 0<br>
Email: info@kussin.de

## Licence

[End-User Software License Agreement](LICENSE.md)

## Copyright

(c) 2006-2023 Kussin | eCommerce und Online-Marketing GmbH