<choice>
	<li class="padded-for-list">
                    <label class="radio">
                        <input type="radio" onchange={set} name={parent.group} value={opts.value}> <yield></yield>
                        <span></span>
                    </label>
                </li>
            <script>
            data.currentForm[this.parent.group] = undefined;
            set(e){
            	data.currentForm[this.parent.group] = e.target.value;
            }
            </script>
</choice>