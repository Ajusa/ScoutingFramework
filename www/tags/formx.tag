<formx>
    <div class="input-wrapper">
        <input class="with-label" onchange={riot.update()} type={opts.type} id={opts.name}>
        <label class="floating-label" for={opts.name}>
            <yield></yield>
        </label>
    </div>
    <script>
        this.on('update', function () {
            this.root.value = document.getElementById(opts.name);
        })
        
    </script>
</formx>