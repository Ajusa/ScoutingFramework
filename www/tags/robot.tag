<robot class="app-page">
    <header class="header-bar">
        <div class="left">
            <button class="btn pull-left icon icon-arrow-back" data-navigation="$previous-page"></button>
            <h1 class="title">Robot</h1>
        </div>
    </header>

    <div class="content">
        <div class="padded-full">
            <h2>Order</h2>
        </div>
    </div>
    <script>
        var self = this;
        app.on({
            page: 'robot',
            preventClose: false,
            content: null,
            readyDelay: 1
        });
    </script>
</robot>