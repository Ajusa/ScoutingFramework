<home>
    <header class="header-bar">
        <div class="center">
            <button class="btn pull-left icon icon-menu" data-side-panel-id="side-home"></button>
            <h1 class="title center">Scouting 2017</h1>
        </div>
    </header>
    <div class="content">

        <ul class="list">
            <li class="divider">Misc</li>
            <li><a class="padded-list" href="#!team">Team Info</a></li>
            <li><a class="padded-list" href="#!robot">Robot</a></li>
            <li class="divider">Auton</li>
            <li><a class="padded-list" href="#!autonmovement">Movement</a></li>
            <li><a class="padded-list" href="#!autonboulder">Boulder</a></li>
            <li><a class="padded-list" href="#!autonother">Other</a></li>
            <li class="divider">Teleop</li>
            <li><a class="padded-list" href="#!teleopcrossed">Obstacles Crossed</a></li>
            <li><a class="padded-list" href="#!teleopboulder">Boulder</a></li>
        </ul>
        <button class="btn positive fit-parent cancel" onclick={submit}>Submit</button>
    </div>
    <script>
        submit(e) {
            RiotControl.trigger('submit')
        }
        
    </script>
</home>