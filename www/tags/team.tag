<team class="app-page">
    <header class="header-bar">
        <div class="left">
            <button class="btn pull-left icon icon-arrow-back" data-navigation="$previous-page"></button>
            <h1 class="title">Team Info</h1>
        </div>
    </header>
    <div class="content">
        <div class="padded-full">
        <number title="match">Match Number</number>
        <number title="team">Team Number</number>
            <ul class="list">
                <li class="padded-for-list">
                    <label class="radio">
                        <input type="radio" name="teamcolor"> Blue
                        <span></span>
                    </label>
                </li>
                <li class="padded-for-list">
                    <label class="radio">
                        <input type="radio" name="teamcolor"> Red
                        <span></span>
                    </label>
                </li>
            </ul>
            <button onclick={log}>Hello</button>
        </div>
    </div>
    <script>
        var self = this;
        self.data = {};
        log(e){
            for (tag in self.tags){
                for (l in self.tags[tag]){
                console.log(self.tags[tag][l].opts)
            }
            }
        }
        app.on({
            page: 'team',
            preventClose: false,
            content: null,
            readyDelay: 1
        });
        RiotControl.on('get_form', function () {
            freezer.get().currentForm.set('match', self.match.value);
            freezer.get().currentForm.set('team', self.team.value);
            freezer.get().currentForm.set('color', self.teamcolor.value);
        })
    </script>
</team>