<script lang="ts">
	import { Collapsible } from 'bits-ui';
</script>

<Collapsible.Root>
	<Collapsible.Trigger class="flex hover:bg-rose-800 p-1 transition border-amber-600 rounded-md"
		><slot name="Trigger" />
	</Collapsible.Trigger>
	<Collapsible.Content>
		<slot name="content" />
	</Collapsible.Content>
</Collapsible.Root>
