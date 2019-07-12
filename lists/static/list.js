// window.Superlists is a namespace
// initialize is a too generic name, which may conflict
// other libraries

window.Superlists = {};
window.Superlists.initialize = function () {
    $('input[name="text"]').on('keypress', function(){
        console.log('in keypress handler');
        $('.has-error').hide();
    });
}
