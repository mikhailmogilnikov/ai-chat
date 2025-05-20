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
		class="flex min-h-[calc(100svh-calc(var(--spacing)*14))] w-full flex-col justify-end overflow-y-auto pb-26"
	>
		<MessagesList />
	</div>

	<div class="bg-background fixed bottom-0 z-2 h-24 w-full max-w-screen-md rounded-t-2xl">
		<AddMessageInput />
	</div>
</div>
