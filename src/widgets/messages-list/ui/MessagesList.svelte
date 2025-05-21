<script lang="ts">
	import { ChatMessage } from '~/entities/message';
	import { FIRST_CHAT_MESSAGE } from '../config/first-message';
</script>

<div class="flex flex-col gap-4">
	<ChatMessage message={FIRST_CHAT_MESSAGE} isMe={false} />
	<ChatMessage message="Привет! Как дела?" isMe={true} />
</div>
