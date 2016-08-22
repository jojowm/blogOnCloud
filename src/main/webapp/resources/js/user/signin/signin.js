/**
 * Created by chris on 16-8-22.
 */

define(function (require, exports, module) {

    var Signin = function() {};

    var getParam = function() {
        var param = {
            username: $('#inputEmail').val(),
            password: $('#inputPassword').val()
        };
        return param;
    };

    var eventHandler = function () {
        $('.form-signin').on('click', '#submit', function () {
            var param = getParam();
            console.log(param);
            $.ajax({
                url: 'doLogin',
                method: 'POST',
                data: param
            })
                .done(function (result) {
                    console.log(result)
                });
        });
    };

    Signin.prototype.init = function() {
        console.log('=======');
        eventHandler();
    };

    module.exports = Signin;
});