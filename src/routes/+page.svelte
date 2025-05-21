<script lang="ts">
	import { onMount } from 'svelte';
	import { AddMessageInput } from '~/features/add-message';
	import { MessagesList } from '~/widgets/messages-list';

	onMount(() => {
		window.scrollTo(0, window.innerHeight);
	});
</script>

<div
	class="relative mx-auto flex min-h-[calc(100svh-calc(var(--spacing)*14))] w-full max-w-screen-md p-4"
>
	<div
		class="flex min-h-[calc(100svh-calc(var(--spacing)*26))] w-full flex-col justify-end overflow-y-auto pb-26"
	>
		<MessagesList />
	</div>

	<div
		class="bg-background fixed bottom-0 z-1 h-24 w-[calc(100%-var(--spacing)*8)] max-w-[calc(var(--breakpoint-md)-var(--spacing)*8)]"
	>
		<div class="from-background absolute -top-6 h-6 w-full bg-gradient-to-t to-transparent"></div>
		<AddMessageInput />
	</div>
</div>
