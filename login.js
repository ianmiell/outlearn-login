//var casper = require('casper').create({
//verbose: true,
//logLevel: 'debug'
//});
var casper = require('casper').create()

casper.start('https://admin.outlearn.com/admin/login', function() {
    this.fill('form[action="/admin/login"]', {
        'admin_user[email]':    'ian.miell@gmail.com',
        'admin_user[password]': 'PASSWORD'
    }, true);
});


casper.thenOpen('https://admin.outlearn.com/admin/links?utf8=%E2%9C%93&q%5Bsuggested_tags_contains%5D=docker&q%5Bstate_eq%5D=pending_review&commit=Filter&order=id_desc', function() {
    if (this.exists('td')) {
        this.echo('td on page');
    }
});

casper.run(function() {
    this.exit();
});

