<team class="app-page">
    <header class="header-bar">
        <div class="left">
            <button class="btn pull-left icon icon-arrow-back" data-navigation="$previous-page"></button>
            <h1 class="title">Team Info</h1>
        </div>
    </header>

    <div class="content">
        <div class="padded-full">
            <div class="input-wrapper">
                <input class="with-label" type="number" id="match">
                <label class="floating-label" for="match">
                    Match Number
                </label>
            </div>
            <div class="input-wrapper">
                <input class="with-label" type="number" id="team">
                <label class="floating-label" for="team">
                    Team Number
                </label>
            </div>
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

        </div>
    </div>
    <script>
        var self = this;
        app.on({
            page: 'team',
            preventClose: false,
            content: null,
            readyDelay: 1
        });
    </script>
</team>