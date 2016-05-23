<checkbox>
	<li>
        <label class="checkbox">
            <input onclick={set} type="checkbox" class="">
            <yield></yield>
            <span></span>
        </label>
    </li>
    <script>
    	data.currentForm[this.opts.title] = undefined;
            set(e){
            	data.currentForm[this.opts.title] = e.target.checked;
            }

    </script>
</checkbox>