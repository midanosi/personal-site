<script>
	export let text;
</script>

<div class="chip"><span class="chip-text">{text}</span></div>

<style>
	.chip {
		border: 1px solid #ccce;
		border-radius: 6px;
		padding: 0px 4px;
		height: 20px;
		font: 0.5rem;
		opacity: 0.6;

		display: inline-flex;
		justify-content: center;
		align-items: center;
	}
</style>
