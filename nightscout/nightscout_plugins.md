# Profil - Editor

Der Behandlungs Profil Editor speichert angepasste Werte für die Persönliche Therapie.
Mit dem Profil - Editor konfigurieren wir Einheiten und Werte für Plugin iob, cob, bwp.








Funnel Cake introduces a new Treatment Profile Editor that makes it easy to create or edit your custom profile. Features like IOB, COB, and BPW rely on individual values set in the Treatment Profile. Funnel Cake adds new support for time-based I:C ratios and basal settings. To access the Treatment Profile Editor, click the Site Settings Panel, and click “Edit Treatment Profile” to launch the editor. Additional information regarding the treatment profile editor are here.

f-editreatmentprofile


![nightscout_profile_editor_plugins](../images/nightscout/nightscout_profile_editor_plugins.jpg)


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





    
    
    


