<script>
	import { page } from '$app/stores';
</script>

<header>
	<nav>
		<ul>		
			<li aria-current={$page.url.pathname === '/' ? 'page' : undefined}>
				<a href="/">Home</a>
			</li>
			<li aria-current={$page.url.pathname === '/portfolio' ? 'page' : undefined}>
				<a href="/portfolio">Stuff I've made</a>
			</li>
			<li aria-current={$page.url.pathname === '/cv' ? 'page' : undefined}>
				<a href="/cv">CV</a>
			</li>
			<li aria-current={$page.url.pathname === '/blog' ? 'page' : undefined}>
				<a href="/blog">Blog</a>
			</li>
			<li aria-current={$page.url.pathname === '/codesandboxes' ? 'page' : undefined}>
				<a href="/codesandboxes">CodeSandboxes</a>
			</li>
			<li aria-current={$page.url.pathname === '/outline' ? 'page' : undefined}>
				<a href="/outline">Outline Demo</a>
			</li>
			<li aria-current={$page.url.pathname === '/about' ? 'page' : undefined}>
				<a href="/about">About</a>
			</li>
			<li aria-current={$page.url.pathname.startsWith('/sverdle') ? 'page' : undefined}>
				<a href="/sverdle">Sverdle</a>
			</li>
		</ul>

		<div class="gap" />

		<ul class="repo-links">
			<li><a href="https://github.com/midanosi" class="">github</a></li>
			<li><a href="https://gitlab.com/midanosi" class="">gitlab</a></li>
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

	.corner a {
		display: flex;
		align-items: center;
		justify-content: center;
		width: 100%;
		height: 100%;
	}

	.corner img {
		width: 2em;
		height: 2em;
		object-fit: contain;
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


	svg {
		width: 2em;
		height: 3em;
		display: block;
	}

	path {
		fill: var(--background);
	}

	ul {
		position: relative;
		padding: 0;
		margin: 0;
		height: 3em;
		display: flex;
		justify-content: center;
		align-items: center;
		list-style: none;
		background: var(--background);
		background-size: contain;
	}

	li {
		position: relative;
		height: 100%;
	}

	li[aria-current='page']::before {
		--size: 6px;
		content: '';
		width: 0;
		height: 0;
		position: absolute;
		top: 0;
		left: calc(50% - var(--size));
		border: var(--size) solid transparent;
		border-top: var(--size) solid var(--color-theme-1);
	}

	nav a {
		display: flex;
		height: 100%;
		align-items: center;
		padding: 0 0.5rem;
		color: var(--color-text);
		font-weight: 700;
		font-size: 0.8rem;
		text-transform: uppercase;
		letter-spacing: 0.1em;
		text-decoration: none;
		transition: color 0.2s linear;
	}

	a:hover {
		color: var(--color-theme-1);
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
