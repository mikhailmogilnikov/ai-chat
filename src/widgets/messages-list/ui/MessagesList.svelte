<script lang="ts">
	import { ChatMessage } from '~/entities/message';
</script>

<div class="flex flex-col gap-2">
	<ChatMessage message="Hello" isMe={false} />
	<ChatMessage message="Hello" isMe={true} />
	<ChatMessage message="Hello" isMe={false} />
	<ChatMessage message="Hello" isMe={true} />
</div>
