<svelte:head>
	<title>Misc</title>
</svelte:head>

<h1 class="text-center text-bold">MISC.</h1>

<div class="misc">
	<article id="complex-gsap-anim">
		<div class="item">
			<div class="desc">
				<h2 class="name">Complex GSAP Animation</h2>
				<p>
					I was tasked with converting a static powerpoint presentation slide into an animated
					webpage. I made heavy use of GSAP and it's timeline feature using GSAP.
				</p>
				<p>
					My takeaways: 1. GSAP is great, 100% would use it again 2. is that if you want to make a
					complex animation <i>without interactivity</i>, then perhaps creating a video using video
					editing software could be a more efficient method to get the desired result.
				</p>
			</div>
			<div class="content">
				<video controls width="100%" muted>
					<source
						src="/pastprojects/wdsdemos/solace gsap animation screencap.mov"
						type="video/mp4"
					/>
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="netflix-menu-clone">
		<div class="item">
			<div class="desc">
				<h2 class="name">Netflix Menu Clone</h2>
				<p>
					I made this with a coworker as part of the same project to present past public-facing
					projects. It's controllable with keyboard or mouse. Some of the animations and behaviour
					were super hard to nail down to be bug-free. The web is not built to construct this kind
					of non-standard menu easily! We also aimed to see if we could run it on a Fire TV Stick.
				</p>
				<p>
					What I learnt: Old Fire TV Sticks are super under-powered, and full-screen fade
					transitions are expensive animations!
				</p>
			</div>
			<div class="content">
				<video controls width="100%" muted>
					<source src="/pastprojects/wdsdemos/wds demos menu screencap.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="nonzzmt">
		<div class="item">
			<div class="desc">
				<h1 class="name">NonZZMT Rankings Site</h1>
				<p>
					My first website, made in 2014, and 2017. Made using JQuery, MySQL and PHP (no longer live
					due to server costs).
				</p>
			</div>
			<div class="content">
				<img
					src="pastprojects/nonzzmt/rankingspage.png"
					alt="website with black header, block purple background, title saying 'Site Records' and two columns of players and time trial records for various mario kart tracks."
				/>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="holiday-dashboard">
		<div class="item">
			<div class="desc">
				<h1 class="name">Holiday Dashboard</h1>
				<p>
					Made this out of frustration of visualising the amount of holiday I have taken/have
					remaining.
				</p>
				<p>Built from CRA, hence the React "blue"</p>
				<p>
					Once again, very custom to scrape data from company's internal data (plan was to make it
					usable by anyone in company, but turned out impossible), and super buggy, but once again,
					I've been using this myself for the last 2 years.
				</p>
			</div>
			<div class="content">
				<img
					src="pastprojects/holidaydashboard/2021.png"
					alt="webpage with a input text box top left, visualisation of remaining holiday days bottom left, and a calendar view on the whole right side, with coloured days representing planned or taken holiday days"
				/>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="mapbox-test-run">
		<div class="item">
			<div class="desc">
				<h1 class="name">Mapbox Test Run</h1>
				<p>
					Ahead of a work client project that involved using maps, I whipped up a quick app to demo mapbox, and an associated react-mapbox-gl library and test it's functionality.
				</p>
				<p>This basic app checked the following things:</p>
				<ul>
					<li>Smooth navigation animation to different locations and zooms</li>
					<li>Can select item from a virtualised list to navigate to and select a location on map</li>
					<li>Perform the opposite behaviour; click item on map to scroll to and focus item in list</li>
					<li>Map type (dark/streets) switcher</li>
				</ul>
			</div>
			<div class="content">
				<video controls width="100%" muted>
					<source src="/pastprojects/mapboxtestrun/mapbox-test-run-recording.mov" type="video/quicktime" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>

	<div class="divider" />

	<h1 class="section-title" id="3d">3D/Design/Animation Experiments</h1>

	<article id="r3f-flexmenu">
		<div class="item">
			<div class="desc">
				<h2 class="name">r3f flex-menu codesandbox</h2>
				<p>
					I'm constantly interested and inspired by Paul Henschel's tweets about react-three-fiber
					(r3f) and what you can easily do with it. I'm generally interested in using r3f more,
					because I want to make 3d things in the web, but whenever I looked at three.js code in the
					past, it made me think "oh christ there's so much boilerplate, god no". (I have heard of
					svelte-cubed, am excited about that too!) This was a quick thing I made using flex library
				</p>
			</div>
			<div class="content">
				<video controls width="100%" muted>
					<source src="/pastprojects/r3f/flex menu of geometry shapes.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="explodingcube">
		<div class="item">
			<div class="desc">
				<h2 class="name">r3f exploding cube</h2>
				<p>
					Making this lead me to discovering a bug in react-spring, which I raised a ticket for, and
					eventually fixed myself! First OSS contribution I think :D
				</p>
			</div>
			<div class="content">
				<iframe
					src="https://codesandbox.io/embed/exploding-square-sine-forked-20qdf?fontsize=14&hidenavigation=1&theme=dark"
					style="width:100%; height:500px; border:0; border-radius: 4px; overflow:hidden;"
					title="exploding square (sine) (forked)"
					allow="accelerometer; ambient-light-sensor; camera; encrypted-media; geolocation; gyroscope; hid; microphone; midi; payment; usb; vr; xr-spatial-tracking"
					sandbox="allow-forms allow-modals allow-popups allow-presentation allow-same-origin allow-scripts"
				/>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="tabmenu">
		<div class="item">
			<div class="desc">
				<h2 class="name">tab menu with changing colour underline</h2>
				<p>
					I was trying to make a clone of the New Tab extension "moment", but got distracted and
					only made this animation and nothing much else.
				</p>
			</div>
			<div class="content">
				<video controls width="100%" muted>
					<source src="/pastprojects/noseynewtab/noseynewtab.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="cclogo">
		<div class="item">
			<div class="desc">
				<h2 class="name">CC logo animations</h2>
				<p>
					When learning the differences and pros/cons of doing animations in CSS vs JS, I decided to
					use company's logo as a test subject!
				</p>
				<p>
					Quite happy with how these turned out, but I only showed these to my team, not the wider
					company. Was only an experiment.
				</p>
			</div>
			<div class="content">
				<video controls width="100%" muted>
					<source src="/pastprojects/cclogosanim/anims.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>

	<div class="divider" />

	<article id="blobmenu">
		<div class="item">
			<div class="desc">
				<h2 class="name">Blob Menu & Button Hover effect</h2>
				<p>
					Two random effects I made once. Never used, but just wanted to document it so it's not
					lost to time!
				</p>
			</div>
			<div class="content">
				<video controls width="100%" muted>
					<source src="/pastprojects/bitsandbobs/blob menu.mov" type="video/mp4" />
					Sorry, your browser doesn't support embedded videos.
				</video>
			</div>
		</div>
	</article>
</div>

<style>
	.misc {
		margin: 4rem auto;
	}
	h1 {
		font-size: 1.2rem;
		font-weight: bold;
	}
	h2 {
		font-weight: bold;
	}
	p, li {
		font-size: 0.6rem;
		max-width: 400px;
		opacity: 80%;
	}
	li {
		margin-left: 1rem;
	}
	img,
	video,
	iframe {
		max-width: 300px;
		max-height: 200px;
	}

	/* .divider {
		width: min(400px, 60vw);
		height: 1px;
		background: var(--color-text);
		opacity: 0.2;
		margin: 4rem auto 4rem;
	} */

	article {
		margin-bottom: 2rem;
	}
</style>
