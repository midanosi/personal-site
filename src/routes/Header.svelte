<script>
	import { page } from '$app/stores';
	import { Github, Gitlab } from 'lucide-svelte';
</script>

<header>
	<nav>
		<ul class="navbar-list">
			<!-- <li aria-current={$page.url.pathname === '/' ? 'page' : undefined}>
				<a href="/">Home</a>
			</li> -->
			<li aria-current={$page.url.pathname === '/cv' ? 'page' : undefined}>
				<a href="/cv">CV</a>
			</li>
			<li aria-current={$page.url.pathname === '/portfolio' ? 'page' : undefined}>
				<a href="/portfolio">Portfolio</a>
			</li>
			<!-- <li aria-current={$page.url.pathname === '/blog' ? 'page' : undefined}>
				<a href="/blog">Blog</a>
			</li> -->
			<!-- <li aria-current={$page.url.pathname === '/codesandboxes' ? 'page' : undefined}>
				<a href="/codesandboxes">CodeSandboxes</a>
			</li> -->
			<!-- <li aria-current={$page.url.pathname === '/outline' ? 'page' : undefined}>
				<a href="/outline">Outline Demo</a>
			</li> -->
			<!-- <li aria-current={$page.url.pathname === '/about' ? 'page' : undefined}>
				<a href="/about">About</a>
			</li> -->
		</ul>

		<div class="gap" />

		<ul class="repo-links">
			<li><a href="https://github.com/midanosi" class=""><Github color="#d8bcab" /></a></li>
			<li><a href="https://gitlab.com/midanosi" class=""><Gitlab color="#d8bcab" /></a></li>
		</ul>
	</nav>

	<div class="corner">
		<div class="corner-triangle" />
	</div>
</header>

<style>
	header {
		display: flex;
		justify-content: space-between;
	}

	.corner {
		width: 3em;
		height: 3em;
	}

	nav {
		display: flex;
		justify-content: center;
		/* --background: rgba(255, 255, 255, 0.7); */
		padding-right: 5px;
	}

	.gap {
		width: 30px;
	}

	nav ul {
		position: relative;
		padding: 0;
		margin: 0 1rem;
		height: 3em;
		display: flex;
		justify-content: center;
		align-items: center;
		list-style: none;
		background: var(--background);
		background-size: contain;
	}

	ul.navbar-list {
		display: flex;
		gap: 2rem;
	}
	ul.repo-links {
		display: flex;
		gap: 1rem;
	}

	li {
		position: relative;
		height: 100%;
	}

	nav a {
		display: flex;
		height: 100%;
		align-items: center;
		color: var(--color-text);
		font-weight: 700;
		font-size: 1rem;
		text-transform: uppercase;
		letter-spacing: 0.1em;
		text-decoration: none;
		transition: color 0.2s linear;
		position: relative;
		transition: filter 500ms;
	}

	nav a::after,
	li[aria-current='page']::before {
		display: block;
		position: absolute;
		bottom: 8px;
		left: 0;
		content: '';
		background: white;
		width: 100%;
		height: 1px;
		transition: opacity 300ms, transform 300ms;
		opacity: 0;
		transform: scale(0.5, 1);
	}

	a:hover,
	li[aria-current='page'] {
		filter: brightness(1.2);
	}

	a:hover::after,
	li[aria-current='page']::before {
		transform: scale(1);
		opacity: 1;
	}

	.corner-triangle {
		--width: 25px;
		--margin: 10px;

		position: absolute;
		top: var(--margin);
		right: var(--margin);

		max-height: var(--width);
		max-width: var(--width);
		border-top: var(--width) solid var(--accent-color);
		border-right: var(--width) solid var(--accent-color);

		border-left: var(--width) solid transparent;
		border-bottom: var(--width) solid transparent;
	}
</style>
