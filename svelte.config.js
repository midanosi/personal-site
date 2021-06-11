import netlify from '@sveltejs/adapter-netlify';
import { mdsvex } from 'mdsvex';

const extensions = [`.svelte`, `.svx`, `.md`];

const preprocess = [mdsvex({ extensions })];

/** @type {import('@sveltejs/kit').Config} */
const config = {
	extensions,
	preprocess,
	kit: {
		// hydrate the <div id="svelte"> element in src/app.html
		target: '#svelte',
		adapter: netlify(),
		trailingSlash: 'ignore'
	}
};

export default config;
