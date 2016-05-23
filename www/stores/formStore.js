function Form() {
    var self = this;
    if (store.get('data') == null) {
        data.currentForm = [];
        data.unsentForms = [];
        store.set('data', data)
        //code for defaults
    } else {
        data = store.get('data')
    }
    riot.observable(self);
    self.on('update_setting', function(value) {
        settings = value;
    });
    self.on('submit', function() {
        data.unsentForms.push(data.currentForm)
        console.log(data)
        store.set('data', data)
        phonon.notif('Form Submitted', 1000, false);
        var req = phonon.ajax({
            method: 'POST',
            url: '/',
            crossDomain: true,
            dataType: 'json',
            data: data.currentForm,
            success: function(res) {

            }
        });
    });
    self.on('get_forms', function() {
        temp = Lockr.get('forms');
        if (temp == null) {
            forms = [];
        } else {
            self.trigger('set_forms', temp);
        }

    });
}
