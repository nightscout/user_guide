# Profil - Editor

Der Behandlungs Profil Editor speichert angepasste Werte für die persönliche Therapie.Mit dem Profil - Editor konfigurieren wir Einheiten und Werte für Plugin iob, cob, bwp und Basalraten.

**Wichtig:** Ohne Änderugen im Editor werden für die Plugins keine verwendbaren Werte angezeigt.



**Profil Editor:**



![nightscout_profile_editor_plugins](../images/nightscout/nightscout_profile_editor_plugins.jpg)

Wenn wir die Maus oder den Finger über Fachbegriffe bewegen, werden **Erklärungstexte** in englischer Sprache angezeigt.

Mit **Duration of Insulin Activity (DIA)** definieren wir die Wirkdauer des Bolus - Insulins. Die Plugins iob, bwp  benötigen diese Eingaben.

Mit Insulin to carb ratio (IC) wird angegeben, wieviel Boluseinheiten für eine definierte Menge an KH verwendet werden müssen. Die Plugins iob und cob benötigen diese Eingaben.

Mit dem **Insulin Sensitivity Factor (ISF)** können wir den Korrekturfaktor in mg/dl oder mmol/L angeben. Mit mehrfachen Eingaben können unterschiedliche Faktoren bestimmt werden. 

Mit **Carbs activity /absorbtion rate (g/hour)** können wir bestimmen, wieviel Gramm Kohlenhydrate pro Stunde verstoffwechselt werden. Das Plugin cob benötigt diese Eingaben.







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





Pushover

See Pushover information for use with Funnel Cake.





    
    
    


