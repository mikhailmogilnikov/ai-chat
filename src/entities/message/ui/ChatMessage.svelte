<script lang="ts">
	import { MdRenderer } from '~/shared/ui/common/md-renderer';

	interface Props {
		message: string;
		isMe: boolean;
	}

	const { message, isMe }: Props = $props();
</script>

<div class={['flex w-full', isMe ? 'justify-end' : 'justify-start']}>
	<div
		class={[
			'bg-default max-w-[93%] rounded-2xl px-3 py-2',
			isMe ? 'bg-primary text-primary-foreground' : ''
		]}
	>
		{#if isMe}
			<p class="text-base break-words">
				{message}
			</p>
		{:else}
			<div class="flex flex-col gap-4 py-2">
				<MdRenderer content={message} />
			</div>
		{/if}
	</div>
</div>
