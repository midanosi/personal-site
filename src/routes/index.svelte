<script context="module">
	export const prerender = true;
</script>

<svelte:head>
	<title>Home</title>
</svelte:head>

<section>
	<h1>Michael Hutchings</h1>

	<p>Hello! I'm a frontend web developer based in Cambridge, UK</p>

	<article>
		<h2>Portfolio</h2>
	</article>

	<article>
		<h2>Stuff I've made</h2>
	</article>
</section>

<style>
	section {
		width: 600px;
		margin: 0 auto;
	}

	h1 {
		color: var(--accent-color);
		text-transform: uppercase;
		font-size: 4rem;
		font-weight: 100;
		line-height: 1.1;
		margin: 4rem auto;
		text-align: left;
	}
	h2 {
		font-size: 1.5rem;
	}

	p {
		margin: 2rem auto;
		line-height: 1.35;
		font-size: 1.2rem;
	}
</style>
