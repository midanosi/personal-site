<script>
	import { page } from '$app/stores';

	console.log(`$page`, $page);
	$: id = $page.params.id;

</script>

<span>current page is {id}</span>
