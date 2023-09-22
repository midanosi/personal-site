<script lang="ts">
	import { Collapsible } from "bits-ui";
	import { ArrowRight, ChevronDown } from "lucide-svelte";
	import { fade } from "svelte/transition";

	import BiggerPicture from "bigger-picture/svelte";
	import { onMount } from "svelte";

	onMount(() => {
		let bp = BiggerPicture({
			target: document.body,
		});
		const galleries = ["monumental", "time-tracker", "mkrecords", "recipe-site", "spyro-intro"];

		for (let gallery of galleries) {
			// console.log(`gallery`, gallery);
			let links = document.querySelectorAll(`#${gallery} a`);
			// console.log(`links`, links);

			// add click listener on links to open BiggerPicture
			for (let link of links) {
				console.log(`gallery, link`, gallery, link);
				link.addEventListener("click", (e) => openGallery(e, links));
			}
		}

		// function to open BiggerPicture
		function openGallery(e, links) {
			// debugger;
			console.log(`e.currentTarget`, e.currentTarget);
			e.preventDefault();
			bp.open({
				// items: e.currentTarget,
				items: links,
				el: e.currentTarget,
			});
		}
	});
</script>

<svelte:head>
	<title>Portfolio</title>
</svelte:head>

<div class="portfolio">
	<div class="spacer" />
	<article id="monumental">
		<div class="item">
			<div class="desc">
				<h1 class="name">Monumental</h1>
				<p in:fade>
					Visualisation of real-time workings of Machine Learning model building a bridge
				</p>
				<Collapsible.Root>
					<Collapsible.Trigger class="flex opacity-60"
						>MORE DETAILS<ChevronDown /></Collapsible.Trigger
					>
					<Collapsible.Content>
						<div class="more-content">
							<p>
								I was brought on to create a UI conveying the real-time workings of a Machine
								Learning model trained in-house. The model was a custom bridge-building game,
								trained on real-word physics. I was very happy with resulting look and functionality
								of the demo. The (fantastic) design was done by a coworker.
							</p>
							<p>
								The animation is done using <i>html5 canvas</i>, and was quite a headache to figure
								out. I also took the opportunity to try out both <i>Svelte</i>, and
								<i>Mobx-State-Tree (MST)</i> for state management. Exploring MST was worthwhile and fun,
								but I don't think I'll be using it again. Svelte however was fantastic.
							</p>
						</div>
					</Collapsible.Content>
				</Collapsible.Root>
			</div>
			<ul class="media">
				<li>
					<a
						href="/pastprojects/monumental/24thSep-JustBridge-28s.mov"
						data-thumb="pastprojects/monumental/monumental-thumb.png"
						data-sources={`[
							{ "src": "/pastprojects/monumental/24thSep-JustBridge-28s.mov", "type": "video/quicktime" }
						]`}
						data-width="1000"
						data-height="500"
					>
						<img src="/pastprojects/monumental/monumental-thumb.png" alt="thing" />
					</a>
				</li>
			</ul>
			<!-- <div class="media">
				<img src="pastprojects/good bridge.png" /> -->
			<!-- <video controls muted>
					<source src="/pastprojects/monumental/24thSep-JustBridge-28s.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video> -->
			<!-- </div> -->
			<!-- <PhotoSwipeGallery {images} styling="grid" gridColumns={10} /> -->
		</div>
	</article>

	<div class="divider" />

	<article id="time-tracker">
		<div class="item">
			<div class="desc">
				<h1 class="name">Time Tracker</h1>
				<p>
					A site to track my time committed to different client projects during each week. Data
					saved locally to browser.
				</p>
				<Collapsible.Root>
					<Collapsible.Trigger class="flex opacity-60"
						>MORE DETAILS<ChevronDown /></Collapsible.Trigger
					>
					<Collapsible.Content>
						<p>
							In consultancy, tracking time across multiple projects is hard, especially when the
							timesheet software is Windows-only and I'm on a Macbook. And to me, running a VM all
							day to quickly update your hours as-and-when needed is a non-option.
						</p>
						<p>
							Made with <i>Svelte</i>, and tried out <i>Snowpack</i> (before Vite won). The design is
							heavily lifted from one I found on dribbble.
						</p>
						<p>The data is saved locally to browser storage using <i>PouchDB</i></p>
						<p>Not released, but I used this myself almost every day for 1.5 years.</p>
					</Collapsible.Content>
				</Collapsible.Root>
			</div>
			<ul class="media">
				<li>
					<a
						href="pastprojects/timetracker/timetracker.png"
						data-img="pastprojects/timetracker/timetracker.png"
						data-alt="webpage that allows tracking time hour by hour over the course of one week, into various projects"
						data-width="3000"
						data-height="1400"
					>
						<img
							src="pastprojects/timetracker/timetracker.png"
							alt="webpage that allows tracking time hour by hour over the course of one week, into various projects"
						/>
					</a>
				</li>
			</ul>
		</div>
	</article>

	<div class="divider" />

	<article id="mkrecords">
		<div class="item">
			<div class="desc">
				<h1 class="name">"MKRecords"</h1>
				<p>
					Designs and some implementation for a brand new Mario Kart community leaderboards website.
				</p>
				<Collapsible.Root>
					<Collapsible.Trigger class="flex opacity-60"
						>MORE DETAILS<ChevronDown /></Collapsible.Trigger
					>
					<Collapsible.Content>
						<p>
							Growing up, I was part of the Mario Kart time-trialing community, on "Players Page"
							ranking webpages. When I heard a team was coming together to try revamp them, I asked
							to be part of the team to help give the UI some good direction.
						</p>
						<p>
							I made some designs in <i>Framer</i> for different pages. Some of it was great, some of
							it was overkill. I coded some of it too, but there was no momentum and no-one else actively
							working on the project. On top real-time pressures, I eventually lost all motivation, and
							stopped work on the projects. I'm still really proud of my designs though.
						</p>
					</Collapsible.Content>
				</Collapsible.Root>
			</div>
			<ul class="media">
				<li>
					<a
						href="pastprojects/mkrecords/submission-page-design.png"
						data-img="pastprojects/mkrecords/submission-page-design.png"
						data-alt="a design in Framer web design tool for a time submission page, with options for track, time trial mode and many other factors"
						data-width="3000"
						data-height="3200"
					>
						<img
							src="pastprojects/mkrecords/submission-page-design.png"
							alt="a design in Framer web design tool for a time submission page, with options for track, time trial mode and many other factors"
						/>
					</a>
				</li>
			</ul>
		</div>
	</article>

	<div class="divider" />

	<article id="recipe-site">
		<div class="item">
			<div class="desc">
				<h1 class="name">Recipe Site</h1>
				<p>
					A fun project to shake off the designing and programming rust. I've had a focus on
					improving my cooking skills this year, so tackling my own recipe website felt like a good
					design challenge.
					<br />
					Aim: use this in my daily life, with recipes imported and adapted from online and cookbooks.
				</p>
				<Collapsible.Root>
					<Collapsible.Trigger class="flex opacity-60"
						>MORE DETAILS<ChevronDown /></Collapsible.Trigger
					>
					<Collapsible.Content>
						<div class="more-content">
							<p>
								The standard format of recipes has caused me friction. The cooking instructions are
								in prose, all in the same font and style. But when one cooks, you are constantly
								looking back and forth between the instructions and your cooking.
							</p>
							<p>
								Hellofresh and Gousto opened my eyes as to how a better designed recipe format could
								aid me in my cooking. One simple thing was simply making highlighting each
								ingredient in bold.
							</p>
							<p>
								I came across cooklang that was doing roughly what I wanted, which has the clever
								idea of annotating your ingredients within the instructions steps, which 1. allows
								automatic creation of the ingredients list 2. allows for highlighting ingredients
								within the text, like in the hellofresh and gousto recipes.
							</p>
							<p>
								But, cooklang was missing a lot of features I wanted, like newline support,
								miscellaneous highlighting and few other things, so I've hacked on top of it to get
								the functionality I want.
							</p>
						</div>
					</Collapsible.Content>
				</Collapsible.Root>
			</div>
			<ul class="media">
				<li>
					<a
						href="pastprojects/recipe-site/recipe-site.png"
						data-img="pastprojects/recipe-site/recipe-site.png"
						data-alt="website displaying a recipe for roasted feijoada"
					>
						<img
							src="pastprojects/recipe-site/recipe-site.png"
							alt="website displaying a recipe for roasted feijoada"
						/>
					</a>
				</li>
				<li>
					<a
						href="pastprojects/recipe-site/recipe-cooklang-example.png"
						data-img="pastprojects/recipe-site/recipe-cooklang-example.png"
						data-alt="text editor containing raw cooklang string used to render the recipe"
					>
						<img
							src="pastprojects/recipe-site/recipe-cooklang-example.png"
							alt="text editor containing raw cooklang string used to render the recipe"
						/>
					</a>
				</li>
			</ul>
		</div>
	</article>

	<div class="divider" />

	<article id="spyro-intro">
		<div class="item">
			<div class="desc">
				<h1 class="name">Spyro 3D Animation</h1>
				<p>
					A recreation of the introductory level loading screen from Spyro 1. Built using React
					Three Fiber (R3F). Models ripped directly from the game.
				</p>
				<Collapsible.Root>
					<Collapsible.Trigger class="flex opacity-60"
						>MORE DETAILS<ChevronDown /></Collapsible.Trigger
					>
					<Collapsible.Content>
						<div class="more-content">
							<p>
								For many years had the itch to dive into 3D work. And I've always loved Spyro! So I
								challenged myself to see how best I could recreate parts of the original ps1 game.
								This is the first somewhat complete thing I've made.
							</p>
						</div>
					</Collapsible.Content>
				</Collapsible.Root>
			</div>
			<ul class="media">
				<li>
					<a
						href="/pastprojects/spyro-intro/spyro_intro_unlit.mov"
						data-thumb="s/pastprojects/spyro-intro/spyro-intro-thumb.png"
						data-sources={`[
							{ "src": "/pastprojects/spyro-intro/spyro_intro_unlit.mov", "type": "video/quicktime" }
						]`}
					>
						<img
							src="/pastprojects/spyro-intro/spyro-intro-thumb.png"
							alt="spyro flying into shot next to the words 'A new adventure begins' in gold letters"
						/>
					</a>
				</li>

				<li>
					<a
						href="/pastprojects/spyro-intro/spyro_intro_loading_screen_with_debug.mov"
						data-thumb="/pastprojects/spyro-intro/spyro-debug-thumb.png"
						data-sources={`[
							{ "src": "/pastprojects/spyro-intro/spyro_intro_loading_screen_with_debug.mov", "type": "video/quicktime" }
						]`}
					>
						<img
							src="/pastprojects/spyro-intro/spyro-debug-thumb.png"
							alt="debug view of spyro intro"
						/>
					</a>
				</li>
			</ul>
		</div>
	</article>

	<div class="h-8" />
	<!-- <div class="flex justify-end w-full">
		<a href="/misc">more things<ArrowRight size="16px" /></a>
	</div>
	<div class="h-8" /> -->
</div>

<style>
	.portfolio {
		width: fit-content;
		margin: 0 auto;
	}
	h1 {
		text-transform: uppercase;
		font-weight: bold;
	}

	.spacer {
		height: 40px;
		width: 100%;
	}

	article {
		/* margin-bottom: 7rem; */
	}

	.item {
		display: flex;
		gap: 0.5rem;
		flex-direction: column;
		justify-content: space-around;
		align-items: flex-start;

		padding: 0 1rem;
	}

	p {
		margin-bottom: 0.2rem;
	}
	.desc {
		max-width: 450px;
		margin-bottom: 1rem;
	}
	.more-content {
		font-size: 0.8rem;
	}
	.desc i,
	.more-content i {
		opacity: 0.9;
		color: gold;
	}
	figcaption {
		margin-top: 0.25rem;
		font-size: 0.8rem;
		opacity: 0.9;
	}
	.divider {
		width: min(400px, 60vw);
		height: 1px;
		background: var(--color-text);
		opacity: 0.2;
		margin: 4rem auto 4rem;
	}
	.media {
		grid-area: content;

		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		gap: 2rem;
	}
	.media li {
		list-style: none;
	}
	.media li a {
		max-width: 300px;
	}
	@media screen and (min-width: 768px) {
		.item {
			gap: 2rem;
			flex-direction: row;
			justify-content: flex-start;
			align-items: flex-start;
		}
	}

	video,
	img {
		width: clamp(200px, 90vw, 400px);
		/* height: clamp(200px, 250px, 300px); */
	}
	a {
		display: flex;
		height: 100%;
		align-items: center;
		color: var(--color-text);
		text-transform: uppercase;
		letter-spacing: 0.1em;
		text-decoration: none;
		transition: color 0.2s linear;
		position: relative;
		transition: filter 500ms;
		width: fit-content;
		gap: 0.5rem;

		/* font-weight: 700; */
		font-size: 0.8rem;
	}

	a::after {
		display: block;
		position: absolute;
		bottom: 0px;
		left: 0;
		content: "";
		background: var(--color-text);
		width: 100%;
		height: 1px;
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
