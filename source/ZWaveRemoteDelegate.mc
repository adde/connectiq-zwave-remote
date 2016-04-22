using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class ZWaveRemoteDelegate extends Ui.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onKey( evt ) {
        // UP button
        if(evt.getKey() == 13) {
            new ZWaveRemoteREST().lightsOn();
            Sys.println("Turning lights on!");
        }
        // DOWN button
        if(evt.getKey() == 8) {
            new ZWaveRemoteREST().lightsOff();
            Sys.println("Turning lights off!");
        }
        return false;
    }

}