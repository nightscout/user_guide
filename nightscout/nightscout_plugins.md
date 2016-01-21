# Nightscout Plugins


Die Nightscout Zusatzmodule bieten eine Reihe von Zusatzfunktionen, welche beliebig konfigurierbar sind.


The Funnel Cake (0.8+) update to the Nightscout site represents the most substantial update to date and introduces a number of new features to bring increased management and monitoring capabilities to Nightscout.


IMPORTANT: Before you can use Funnel Cake features, you must update your fork and ensure that your website updates to the current version. To update your site code to Funnel Cake, please follow the steps outlined here.

Using “Enable” to Activate Funnel Cake Features/Plugins

Funnel Cake introduces a number of exciting new site features and plugins. Many of these features have to be turned on (enabled) in your site settings before they can be used and before they will be displayed on your Nightscout site. To use features like Care Portal, Insulin-on-Board (IOB), Carbs-on-Board (COB), Cannula Age (CAGE), Raw Data, and the Share2Nightscout Bridge, you must first “ENABLE” them in your site settings (Azure or Heroku).

If you have previously set an “ENABLE” value (if you use Care Portal or raw data, for example), you will modify the existing value for ENABLE to add any additional features you wish to use. If you do not have an ENABLE variable set, add ENABLE in the next blank left-hand box (under Configure/App Settings in Azure or in Settings/Config Variables in Heroku) and place selected features from the list below in the value box to its right. You can use chose to enable as many or as few of the plugins as you wish. After you are done, be sure to click “save” to save the settings. Note: you can only have a single ENABLE variable set. All desired features go in the same box as a space delimited list (see examples below).

(**It is recommended that ENABLE be set in the “App Settings” of Azure. If you had ENABLE already in your “Connection Strings,” please remove it and add it, instead, to the “App Settings.”)

The following example shows multiple plugins set with ENABLE.

In Azure:
f-enable-azure

In Heroku:
f-enable-heroku

In text form, an enable string might appear as follows, all in the same box:

    careportal rawbg iob maker bridge cob bwp cage basal

The following features can be enabled in Funnel Cake (and must be enabled via ENABLE in your site settings using the word shown here in bold). (Clicking any of these features will let you access additional information regarding the features and/or related settings.)

| Plugin | Funktion | Typ | Hinweise |
| -- | -- |-- |
| rawbg | Rohdaten | A |benötigt Upload über xDrip oder Nightscout Uploder App |
| iob | insulin on board | A|benötigt Profil- und Careportal -Eingaben |
| cob | carbs on board | A|benötigt Careportal Eingaben |
| bwp | bolus wizard preview | A| benötigt Profil- und Careportal -Eingaben für iob|
| cage | 1:5 | 2:5 |
| 0:6 | 1:6 | 2:6 |
| 0:7 | 1:7 | 2:7 |
| 0:8 | 1:8 | 2:8 |
| 0:9 | 1:9 | 2:9 |
| 0:10 | 1:10 | 2:10 |
| 0:11 | 1:11 | 2:11 |
| 0:12 | 1:12 | 2:12 |
| 0:13 | 1:13 | 2:13 |
| 0:14 | 1:14 | 2:14 |
| 0:15 | 1:15 | 2:15 |
| 0:16 | 1:16 | 2:16 |
| 0:17 | 1:17 | 2:17 |
| 0:18 | 1:18 | 2:18 |
| 0:19 | 1:19 | 2:19 |
| 0:20 | 1:20 | 2:20 |

    rawbg (raw data; requires upload from xDrip or Nightscout uploader app)
    iob (Insulin-on-Board; requires Profile and Care Portal entries)
    cob (Carbs-on-Board; requires Care Portal entries)
    bwp (Bolus Wizard Preview; requires Profile and Care Portal entries for current IOB)
    cage (Cannula Age; requires Care Portal entries)
    treatmentnotify (Treatment Notifications)
    basal (Basal Profile—pillbox visualization)
    basal visualization on the graph
    bridge (built-in support for the Share2Nightscout bridge)
    pushover (support for Pushover notifications)
    maker (support for IFTTT notifications)
    temp basal visualization
    exercise entry visualization
    new scaling options (linear and logarithmic (dynamic))
    reports
    admin tools (including removal of future data)
    MiniMed Connect and Nightscout

Using “Disable” to Deactivate Funnel Cake Features/Plugins

The following featured are “on” by default as part of your Nightscout site and can be disabled in Funnel Cake by setting a DISABLE variable with a space-delimited list of values:

    delta (calculates and displays the change between the last 2 BG values)
    direction (displays BG trend direction)
    upbat (displays the most recent battery status from the uploader phone)
    errorcodes (generates alarms for CGM error codes like hourglass and ???)
    ar2 (generates alarms based on forecasted values)
    simplealarms (uses BG_HIGH, BG_TARGET_TOP, BG_TARGET_BOTTOM, BG_LOW thresholds to generate alarms)

Controlling Your Nightscout Site from the Browser Settings Panel

Once plugins are enabled, some of them have pillbox visualizations which can appear as part of your site. In your browser, you can choose which plugins you wish to view by checking the boxes next to the ones you want to see and clicking save. For example, if you enable Carbs-on-Board and choose to display it (in the browser settings panel), you will see a pillbox for COB. At any point, you can open the browser settings panel and turn the visibility of specific plugins on or off.

f-showplugins
Additional Features/Plugins Information
Treatment Profile Editor

Funnel Cake introduces a new Treatment Profile Editor that makes it easy to create or edit your custom profile. Features like IOB, COB, and BPW rely on individual values set in the Treatment Profile. Funnel Cake adds new support for time-based I:C ratios and basal settings. To access the Treatment Profile Editor, click the Site Settings Panel, and click “Edit Treatment Profile” to launch the editor. Additional information regarding the treatment profile editor are here.

f-editreatmentprofile

Integrated Share2Nightscout Bridge

Users who are uploading Dexcom Share data using an iOS device paired with the Share receiver can now configure the Nightscout site to use the Share data without running a separate bridge app. (A site running Funnel Cake can configure the integrated Share variables in the site settings for an Azure site for free.)

NOTE: For full directions to set up a Nightscout Bridge site (e.g., you do not yet have a Nightscout site at all), see: Nightscout with iOS and Dexcom Share (Bridge).

The following information is for someone who is updating an existing Nightscout site (with or without bridge) and wants to enable bridge variables.
To configure Share, you must ENABLE bridge (see detail above). In addition, the following variables are used in your Azure or Heroku settings to configure the Share2Nightscout Bridge integration:

    BRIDGE_USER_NAME (Required: the user name associated with the Share account)
    BRIDGE_PASSWORD (Required: the password associated with the Share account)
    BRIDGE_INTERVAL (Optional: the time to wait between each update. The default is 150000 – 2.5 minutes.
    BRIDGE_MAX_COUNT (Optional: The maximum number of records to fetch per update. The default is 1.)
    BRIDGE_FIRST_FETCH_COUNT (Optional: Maximum number of records to fetch during the very first update only. The default is 3.)
    BRIDGE_MAX_FAILURES (Optional: How many failures happen trying to retrieve data before giving up. The default is 3.)
    BRIDGE_MINUTES (Optional: The time window to search for new data per update. The default is one day in minutes – 1400).

At the very minimum, the following variables must be set to use Share2Nightscout Bridge:

In App Settings (Azure):
bridge-enable

In Connection Strings (Azure):

bridge-vars

NOTE: If you experience a problem using the integrated Share in Azure, you may need to use an external free service like Uptime Robot. This service will visit your site every five minutes and help keep it from stopping when you are not viewing the data. (Update: Setting up Uptime Robot is recommended for all bridge users. Instructions for setting up can be found in the Nightscout with iOS and Dexcom Share (Bridge) resource.)

Raw Data

Required: ENABLE rawbg

To learn more about raw data, see: Interpreting Raw Dexcom Data.

IOB and COB

Required: ENABLE iob cob (either or both, depending on which you plan to use)

For more information regarding information from the treatment profile that is used to calculate IOB and COB, see the explanatory information in this resource. Note: features like IOB and COB rely on Care Portal entries that provide the Nightscout site with information regarding carb intake and insulin given.

Treatment Notifications

When treatment notifications are enabled, your site will generate notifications when a treatment has been entered via Care Portal and will snooze site alarms shortly after. The default snooze duration is 10 minutes. This can be modified by changing the duration using the TREATMENTNOTIFY_SNOOZE_MINS variable in the site settings.

Cannula Age (CAGE)

Required: ENABLE cage

Funnel Cake introduces tracking of Cannula Age (CAGE) with pillbox visualization on the site that displays the age of the cannula based on Care Portal entry of a site change. Additional variables allow customization of warnings associated with the CAGE.  See Cage

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

Simple alarms are enabled by default if 1 of the alarm thresholds is set or if the ALARM_TYPES variable includes simple. To learn more about customizing alarms, see Customizing the Alarm Levels.

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

Other Nightscout Site Variables

In addition to the variables and plugins defined above, the following variables can be set to further customize your Nightscout site. For each variable below, enter the variable shown in bold in a blank box in your site app settings (or Heroku/configuration variables) and then enter your chosen value in the box to the right of it. Be sure and save after setting or changing variables. The default value for each variable is shown in ().
Site Variables

    API_SECRET – A secret passphrase that must be at least 12 characters long. An API_SECRET is required for using Care Portal, Pushover, and REST API upload.
    BG_HIGH (260) – This value must be set using mg/dl units; the high BG outside the target range that is considered urgent.
    BG_TARGET_TOP (180) – This must be set using mg/dl units; the top of the target range, also used to draw the line on the chart.
    BG_TARGET_BOTTOM (80) – This must be set using mg/dl units; the bottom of the target range, also used to draw the line on the chart.
    BG_LOW (55) – This must be set using mg/dl units; the low BG outside the target range that is considered urgent.
    ALARM_TYPES (simple if any BG_* ENV’s are set, otherwise predict) – Currently 2 alarm types are supported, and can be used independently or combined. The simple alarm type only compares the current BG to BG_ thresholds above, the predict alarm type uses highly tuned formula that forecasts where the BG is going based on it’s trend. predict DOES NOT currently use any of the BG_* ENV’s.
    BASE_URL – Used for building links to your sites api, ie pushover callbacks, usually the URL of your Nightscout site you may want https:// instead of http://.

Predefined Variables to Customize Browser Settings (Optional)

Setting the following optional variables in your site settings makes your custom settings the default for any instance of Nightscout. The settings panel of the website allows users to override some settings on an individual basis. For each variable below that you wish to set, enter the variable shown in bold in a blank box in your site app settings (or Heroku/configuration variables) and then enter your chosen value in the box to the right of it.

    TIME_FORMAT (12)- possible values 12 or 24
    NIGHT_MODE (off) – possible values on or off
    SHOW_RAWBG (never) – possible values always, never or noise
    CUSTOM_TITLE (Nightscout) – Usually name of T1
    THEME (default) – possible values default or colors
    ALARM_URGENT_HIGH (on) – possible values on or off
    ALARM_HIGH (on) – possible values on or off
    ALARM_LOW (on) – possible values on or off
    ALARM_URGENT_LOW (on) – possible values on or off
    ALARM_TIMEAGO_WARN (on) – possible values on or off
    ALARM_TIMEAGO_WARN_MINS (15) – minutes since the last reading to trigger a warning
    ALARM_TIMEAGO_URGENT (on) – possible values on or off
    ALARM_TIMEAGO_URGENT_MINS (30) – minutes since the last reading to trigger a urgent alarm
    SHOW_PLUGINS – enabled plugins that should have their visualizations shown, defaults to all enabled. To have certain plugins appear visible by default, specify them by the same name used in the ENABLE box. Example:

    f-showplugins2
    LANGUAGE (en) – language of Nighscout. If the language specified is not available English is used. Funnel Cakehas translations available for languages.
    
    
    
ar2

basalprofile

boluscalc

boluswizardpreview

bridge

cannulaage

careportal

cob

delta

direction

errorcodes

index

insulinage

iob

maker

mmconnect

openaps

pluginbase

profile

pushover

rawbg

sensorage

simplealarms

timeago

treatmentnotify

upbat

