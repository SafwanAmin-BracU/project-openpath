<script lang="ts">
  export let title: string;
  export let description: string;
  export let timestamp: string;
  export let icon: string;
  import Icon from "@iconify/svelte";
</script>

<div class="flex gap-4 items-start p-4 rounded-lg border transition-colors hover:bg-muted/50">
  <slot name="icon">
    <Icon
      {icon}
      class="mt-1 w-5 h-5"
    />
  </slot>
  <div class="flex-1 space-y-1">
    <h3 class="font-medium">{title}</h3>
    <p class="text-sm text-muted-foreground">{description}</p>
    <p class="text-xs text-muted-foreground">{timestamp}</p>
  </div>
</div>
