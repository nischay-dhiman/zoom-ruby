//= require react.min
//= require react-dom.min
//= require redux.min
//= require redux-thunk.min
//= require jquery.min
//= require lodash.min
//= require zoom-meeting-1.7.5.min
//= require tools

(function(){

	console.log('checkSystemRequirements');
	console.log(JSON.stringify(ZoomMtg.checkSystemRequirements()));

    // it's option if you want to change the WebSDK dependency link resources. setZoomJSLib must be run at first
    // if (!china) ZoomMtg.setZoomJSLib('https://source.zoom.us/1.7.5/lib', '/av'); // CDN version default
    // else ZoomMtg.setZoomJSLib('https://jssdk.zoomus.cn/1.7.5/lib', '/av'); // china cdn option 
    // ZoomMtg.setZoomJSLib('http://localhost:9999/node_modules/@zoomus/websdk/dist/lib', '/av'); // Local version default, Angular Project change to use cdn version
    ZoomMtg.preLoadWasm();
    ZoomMtg.prepareJssdk();
 
    testTool = window.testTool;

    meetingSelector = document.getElementById('join_meeting');

    var meetConfig = {
        apiKey: meetingSelector.dataset['apikey'],
        signature: meetingSelector.dataset['signature'],
        meetingNumber: meetingSelector.dataset['meetingnumber'],
        userName: meetingSelector.dataset['username'],
        passWord: meetingSelector.dataset['password'],
        leaveUrl: meetingSelector.dataset['leaveurl'],
        role: meetingSelector.dataset['role'] || 0
    };

    ZoomMtg.init({
        leaveUrl: meetConfig.leaveUrl,
        isSupportAV: true,
        success: function () {
            ZoomMtg.join(
                {
                    meetingNumber: meetConfig.meetingNumber,
                    userName: meetConfig.userName,
                    signature: meetConfig.signature,
                    apiKey: meetConfig.apiKey,
                    passWord: meetConfig.passWord,
                    success: function(res){
                        $('#nav-tool').hide();
                        console.log('join meeting success');
                    },
                    error: function(res) {
                        console.log(res);
                    }
                }
            );
        },
        error: function(res) {
            console.log(res);
        }
    });
})();