<team class="app-page">
   <header class="header-bar">
        <div class="left">
            <button class="btn pull-left icon icon-arrow-back" data-navigation="$previous-page"></button>
            <h1 class="title">Team</h1>
        </div>
    </header>
    <div class="content">
        <div class="padded-full">
        <number title="match">Match Number</number>
        <number title="team">Team Number</number>
        <multiple title="color">
            <choice value="red">Red</choice>
            <choice value="blue">Blue</choice>
        </multiple>
        <multiple>
            <checkbox title="arden">Is arden cool</checkbox>
        </multiple>
        </div>
    </div>
    <script>
        var self = this;
        app.on({
            page: 'team',
        });
    </script>
</team>