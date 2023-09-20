<script>
	import MyCarousel from '$lib/components/MyCarousel.svelte';
	import { Collapsible } from 'bits-ui';
	import Carousel from 'svelte-carousel';
	import { ChevronDown } from 'lucide-svelte';
	import { fade } from 'svelte/transition';
</script>

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
						<p>
							I was brought on to create a UI conveying the real-time workings of a Machine Learning
							model trained in-house. The model was a custom bridge-building game, trained on
							real-word physics. I was very happy with resulting look and functionality of the demo.
							The (fantastic) design was done by a coworker.
						</p>
						<p>
							The animation is done using html5 canvas, and was quite a headache to figure out. I
							also took the opportunity to try out both Svelte, and Mobx-State-Tree (MST) for state
							management. Exploring MST was worthwhile and fun, but I don't think I'll be using it
							again. Svelte however was fantastic.
						</p>
					</Collapsible.Content>
				</Collapsible.Root>
			</div>
			<div class="media">
				<!-- <img src="pastprojects/good bridge.png" /> -->
				<video controls muted>
					<source src="/pastprojects/monumental/24thSep-JustBridge-28s.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
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
							Made with Svelte, and tried out Snowpack (before Vite won). The design is heavily
							lifted from one I found on dribbble.
						</p>
						<p>The data is saved locally to browser storage using PouchDB</p>
						<p>Not released, but I used this myself almost every day for 1.5 years.</p>
					</Collapsible.Content>
				</Collapsible.Root>
			</div>
			<figure class="media">
				<img
					src="pastprojects/timetracker/timetracker.png"
					alt="screenshot of webpage that allows tracking time hour by hour over the course of one week, into various projects"
				/>
			</figure>
			<MyCarousel />
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
							I made some designs in Framer for different pages. Some of it was great, some of it
							was overkill. I coded some of it too, but there was no momentum and no-one else
							actively working on the project. On top real-time pressures, I eventually lost all
							motivation, and stopped work on the projects. I'm still really proud of my designs
							though.
						</p>
					</Collapsible.Content>
				</Collapsible.Root>
			</div>
			<figure class="media">
				<img
					src="pastprojects/mkrecords/mkrecords submission page ideas.png"
					alt="a design in Framer web design tool for a time submission page, with options for track, time trial mode and many other factors"
				/>
				<figcaption>Designs I made in Framer for a submission page</figcaption>
			</figure>
		</div>
	</article>

	<div class="divider" />

	<article id="recipe-site">
		<div class="item">
			<div class="desc">
				<h1 class="name">Recipe Site</h1>
				<p>A project to shake off the designing and programming rust. Recipes have always</p>
				<p>See (link)blog article(blog) for more in-depth thoughts</p>
				<p>
					Am in the process of using this myself, continually adding recipes that I cook into it, so
					I can later easily bring them up on my phone whereever I am.
				</p>
			</div>
			<div class="media">
				<img
					src="pastprojects/recipe-site/fake.img"
					alt="webpage with a input text box top left, visualisation of remaining holiday days bottom left, and a calendar view on the whole right side, with coloured days representing planned or taken holiday days"
				/>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="spyro-scene">
		<div class="item">
			<div class="desc">
				<h1 class="name">Spyro Scene</h1>
				<p>
					Have for many years had the itch to dive into 3D work. And I've always loved Spyro So I
					challenged myself to see how best I could recreate parts of the original ps1 game!
				</p>
				<p>(in progress)</p>
			</div>
			<div class="media" />
		</div>
	</article>
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
	@media screen and (min-width: 768px) {
		.item {
			gap: 2rem;
			flex-direction: row;
			justify-content: flex-start;
			align-items: flex-start;
		}
	}

	p {
		margin-bottom: 1rem;
	}
	.desc {
		max-width: 450px;
	}
	.media {
		grid-area: content;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
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
	video,
	img {
		width: clamp(200px, 90vw, 400px);
		/* height: clamp(200px, 250px, 300px); */
	}
</style>
