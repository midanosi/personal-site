<script context="module">
	export const load = async ({ page }) => ({
		props: {
			key: page.path
		}
	});

</script>

<script>
	import Header from '$lib/Header/index.svelte';
	import PageTransition from '$lib/PageTransition.svelte';
	import '../app.css';
	export let key;

</script>

<Header />

<main>
	<PageTransition refresh={key}>
		<slot />
	</PageTransition>
</main>

<footer>
	<p>visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to learn SvelteKit</p>
</footer>

<style>
	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: 1rem;
		width: 100%;
		max-width: 1024px;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		padding: 40px;
	}

	footer a {
		font-weight: bold;
	}

	@media (min-width: 480px) {
		footer {
			padding: 40px 0;
		}
	}

</style>
