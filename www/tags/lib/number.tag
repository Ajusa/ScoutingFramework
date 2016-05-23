<number>
	<div class="input-wrapper">
                <input onchange={set} class="with-label" type="number" id={opts.title}>
                <label class="floating-label" for={opts.title}>
                <yield></yield>
                </label>
            </div>
            <script>
            set(e){
            	data.unsentForm[this.opts.title] = e.item.value;
            }
            </script>
</number>