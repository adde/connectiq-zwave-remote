using Toybox.Communications as Com;
using Toybox.System as Sys;

class ZWaveRemoteREST {

    const url = "http://url.to.api";

    function lightsOn() {
        var params = {
            "action" => "/Run/devices[3].instances[0].commandClasses[37].Set(255)"
        };
        var options = {
            :method => Com.HTTP_REQUEST_METHOD_POST
        };
        Com.makeJsonRequest(url, params, options, method(:responseCallback));
    }

    function lightsOff() {
        var params = {
            "action" => "/Run/devices[3].instances[0].commandClasses[37].Set(0)"
        };
        var options = {
            :method => Com.HTTP_REQUEST_METHOD_POST
        };
        Com.makeJsonRequest(url, params, options, method(:responseCallback));
    }

    function responseCallback(responseCode, data) {
        Sys.print(responseCode);
    }

}