<number>
	<div class="input-wrapper">
                <input onchange={set} class="with-label" type="number" id={opts.title}>
                <label class="floating-label" for={opts.title}>
                <yield></yield>
                </label>
            </div>
            <script>
            data.currentForm[this.opts.title] = undefined;
            set(e){
            	data.currentForm[this.opts.title] = e.target.value;
            }
            </script>
</number>