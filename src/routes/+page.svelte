<script lang="ts">
	import { ArrowRight } from 'lucide-svelte';
</script>

<svelte:head>
	<title>Michael Hutchings</title>
</svelte:head>

<section>
	<h1>Michael Hutchings</h1>

	<div class="spacer" />

	<p>Hello! I'm a frontend web developer based in Cambridge, UK</p>

	<div class="spacer" />

	<div class="links">
		<a href="/cv">
			<span>CV</span>
			<ArrowRight />
		</a>
		<a href="/portfolio">
			<span>Portfolio</span>
			<ArrowRight /></a
		>
	</div>
</section>

<style>
	section {
		max-width: 400px;
		margin: 10vh 0px 0px 50px;
	}
	@media (min-width: 480px) {
		section {
			margin: 10vh auto 0;
		}
	}
	section .spacer {
		height: 2rem;
	}

	h1 {
		width: 100%;
		text-transform: uppercase;
		font-size: 3rem;
		line-height: 1;
	}

	p {
		font-size: 1.2rem;
	}

	.links {
		display: flex;
		flex-direction: column;
		gap: 0.5rem;
	}

	a {
		display: flex;
		height: 100%;
		align-items: center;
		color: var(--color-text);
		font-weight: 700;
		font-size: 1.5rem;
		text-transform: uppercase;
		letter-spacing: 0.1em;
		text-decoration: none;
		transition: color 0.2s linear;
		position: relative;
		transition: filter 500ms;
		width: fit-content;
		gap: 0.5rem;
	}

	a::after {
		display: block;
		position: absolute;
		bottom: 1px;
		left: 0;
		content: '';
		background: var(--color-text);
		width: 100%;
		height: 2px;
		transition: opacity 300ms, transform 300ms;
		opacity: 0;
		transform: scaleX(0.5);
		transform-origin: center left;
	}

	a:hover {
		filter: brightness(1.2);
	}

	a:hover::after {
		transform: scaleX(1);
		opacity: 1;
	}
</style>
