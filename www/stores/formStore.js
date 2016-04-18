function Form() {
    self = this;
    riot.observable(self);
    self.on('update_setting', function (value) {
        settings = value;
    });
    self.on('submit', function (form) {
        phonon.notif('Form Submitted', 1000, false);
        var req = phonon.ajax({
            method: 'POST',
            url: 'http://mysite.com/api/',
            //crossDomain: true,
            dataType: 'json',
            data: form,
            success: function (res) {
                
            }
        });
    });
    self.on('get_forms', function () {
        temp = Lockr.get('forms');
        if (temp == null) {
            forms = [];
        } else {
            self.trigger('set_forms', temp);
        }

    });
}