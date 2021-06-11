<script context="module">
	export const prerender = true;

</script>

<script>
	import MarkdownExample from '$lib/MarkdownExample.svelte.md';

</script>

<svelte:head>
	<title>Home</title>
</svelte:head>

<section>
	<h1>Michael Hutchings</h1>

	<i>site wip</i>
	<p>Hi, I'm a front-end web developer based in Cambridge!</p>

	<article>
		<h2>Portfolio</h2>
		<h4>Non-ZZMT site</h4>
	</article>

	<article>
		<h2>Old projects</h2>
		<h4>
			Non-ZZMT site (please don't judge (note to self: put tags here like 'php', 'mysql' etc. to
			indicate technologies used)
		</h4>
		<h4>MKSC Videos</h4>
	</article>

	<MarkdownExample />
</section>

<style>
	section {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		flex: 1;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4rem;
		font-weight: 100;
		line-height: 1.1;
		margin: 4rem auto;
		max-width: 14rem;
	}

	p {
		max-width: 14rem;
		margin: 2rem auto;
		line-height: 1.35;
	}

</style>
