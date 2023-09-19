<script>
	import Header from '../lib/components/Header.svelte';
import { page } from '$app/stores';
	import './reset.css';
	import './app.css';
	import './styles.css';
	$: {
		console.log($page.url);
	}
</script>

{#if $page.url.search.includes('?embed')}
	<slot />
{:else}
	<div class="app">
		<Header /> 

		<main>
			<slot />
		</main>

		<footer />
	</div>
{/if}

<style>
	.app {
		display: flex;
		flex-direction: column;
		min-height: 100vh;
	}

	main {
		flex: 1;
		display: flex;
		flex-direction: column;
		padding: max(1rem, 15vw);
		width: 100%;
		max-width: 64rem;
		margin: 0 auto;
		box-sizing: border-box;
	}

	footer {
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		padding: 12px;
	}

	@media (min-width: 480px) {
		footer {
			padding: 12px 0;
		}
	}
</style>
