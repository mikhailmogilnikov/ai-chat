<script lang="ts">
	interface Props {
		message: string;
		isMe: boolean;
	}

	const { message, isMe }: Props = $props();
</script>

<div class="flex w-full">
	<p>
		{message}
	</p>
</div>
