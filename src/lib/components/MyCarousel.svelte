<script>
	import { fade, fly } from 'svelte/transition';
	import * as Dialog from '$lib/components/ui/dialog';
	import Carousel from 'svelte-carousel';

	const wait = (ms) => new Promise((res) => setTimeout(res, ms));
</script>

<Dialog.Root>
	<Dialog.Trigger
		><img
			src="pastprojects/timetracker/timetracker.png"
			alt="screenshot of webpage that allows tracking time hour by hour over the course of one week, into various projects"
		/></Dialog.Trigger
	>
	<Dialog.Content>
		<Dialog.Header>
			<Dialog.Title>Time tracker</Dialog.Title>
			<Dialog.Description>Description of my time tracker</Dialog.Description>
		</Dialog.Header>
		<div class:w-full={true}>
			{#await wait(500)}
				<p>wait...</p>
			{:then}
				<Carousel>
					<img
						src="pastprojects/timetracker/timetracker.png"
						alt="screenshot of webpage that allows tracking time hour by hour over the course of one week, into various projects"
					/>
					<img
						src="pastprojects/timetracker/timetracker.png"
						alt="screenshot of webpage that allows tracking time hour by hour over the course of one week, into various projects"
					/>
				</Carousel>
			{/await}
		</div>
	</Dialog.Content>
</Dialog.Root>

<style>
	img {
		width: 100px;
		height: 100px;
	}
</style>
