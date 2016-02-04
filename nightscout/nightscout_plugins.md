# Profil - Editor


Mit dem Profil - Editor konfigurieren wir Einheiten und Werte für Plugins iob, cob, bwp.



The Funnel Cake (0.8+) update to the Nightscout site represents the most substantial update to date and introduces a number of new features to bring increased management and monitoring capabilities to Nightscout.


IMPORTANT: Before you can use Funnel Cake features, you must update your fork and ensure that your website updates to the current version. To update your site code to Funnel Cake, please follow the steps outlined here.



If you have previously set an “ENABLE” value (if you use Care Portal or raw data, for example), you will modify the existing value for ENABLE to add any additional features you wish to use. If you do not have an ENABLE variable set, add ENABLE in the next blank left-hand box (under Configure/App Settings in Azure or in Settings/Config Variables in Heroku) and place selected features from the list below in the value box to its right. You can use chose to enable as many or as few of the plugins as you wish. After you are done, be sure to click “save” to save the settings. Note: you can only have a single ENABLE variable set. All desired features go in the same box as a space delimited list (see examples below).

(**It is recommended that ENABLE be set in the “App Settings” of Azure. If you had ENABLE already in your “Connection Strings,” please remove it and add it, instead, to the “App Settings.”)

The following example shows multiple plugins set with ENABLE.

In Azure:
f-enable-azure

In Heroku:
f-enable-heroku








Treatment Profile Editor
f-showplugins
Additional Features/Plugins Information
Treatment Profile Editor

Funnel Cake introduces a new Treatment Profile Editor that makes it easy to create or edit your custom profile. Features like IOB, COB, and BPW rely on individual values set in the Treatment Profile. Funnel Cake adds new support for time-based I:C ratios and basal settings. To access the Treatment Profile Editor, click the Site Settings Panel, and click “Edit Treatment Profile” to launch the editor. Additional information regarding the treatment profile editor are here.

f-editreatmentprofile


![nightscout_plugin_config](../images/nightscout/nightscout_plugin_config.jpg)


NOTE: If you experience a problem using the integrated Share in Azure, you may need to use an external free service like Uptime Robot. This service will visit your site every five minutes and help keep it from stopping when you are not viewing the data. (Update: Setting up Uptime Robot is recommended for all bridge users. Instructions for setting up can be found in the Nightscout with iOS and Dexcom Share (Bridge) resource.)

Raw Data

Required: ENABLE rawbg

To learn more about raw data, see: Interpreting Raw Dexcom Data.

IOB and COB

Required: ENABLE iob cob (either or both, depending on which you plan to use)

For more information regarding information from the treatment profile that is used to calculate IOB and COB, see the explanatory information in this resource. Note: features like IOB and COB rely on Care Portal entries that provide the Nightscout site with information regarding carb intake and insulin given.

Treatment Notifications

When treatment notifications are enabled, your site will generate notifications when a treatment has been entered via Care Portal and will snooze site alarms shortly after. The default snooze duration is 10 minutes. This can be modified by changing the duration using the TREATMENTNOTIFY_SNOOZE_MINS variable in the site settings.



Basal

Required: ENABLE basal
Funnel Cake introduces display of current basal rate with pillbox visualization on the site.See Basal.

Funnel Cake 0.8.2 introduces basal visualization on the graph, as well as visualization of temp basal settings. See: Basal and Temp Basal in Nightscout.

AR2

AR2 generates alarms based on forecasted values. AR2 is enabled by default if no alarm thresholds are set or if the ALARM_TYPES variable includes predict. You can adjust AR2 behavior with the following extended settings variables:

    AR2_USE_RAW (to forecast using rawbg values when standard values don’t trigger an alarm; default is false)
    AR2_CONE_FACTOR (to adjust size of cone, use 0 for a single line; default is 2)

To learn more about AR2, see Forecasting Using AR2 Algorithm.
Simple Alarms



Bolus Wizard Preview (BWP)

Required: ENABLE bwp

The Basal Wizard Preview tool can help you evaluate the relationship between current bg, IOB, and carbs on board. Learn more about BWP.

Pushover

See Pushover information for use with Funnel Cake.

IFTTT

Required: ENABLE maker

For information about using IFTTT with Funnel Cake, see this lab.

Care Portal

Required: ENABLE careportal (and set an API_SECRET)

Many features of Funnel Cake involve making Care Portal entries. If you have not enabled Care Portal in the past and wish to do so now, see CGM Remote Monitor + Care Portal to get started.

Exercise Visualization

See: Recording and Visualizing Exercise

Linear and Logarithmic Scale Options

See: Linear and Logarithmic Display

Language Support

Funnel Cake supports users around the world with translations of site content in 14 languages.




    
    
    


