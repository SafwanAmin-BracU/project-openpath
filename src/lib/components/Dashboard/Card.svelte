<script lang="ts">
  import Icon from "@iconify/svelte";
  export let title: string;
  export let description: string;
  export let icon: string;
  export let metrics: Record<string, any>;
</script>

<div class="rounded-lg border shadow-sm bg-card text-card-foreground p-6">
  {#if icon}
    <div class="flex items-center gap-2 mb-4">
      <slot name="icon">
        <Icon
          {icon}
          class="w-5 h-5"
        />
      </slot>
      <h3 class="text-lg font-semibold">{title}</h3>
    </div>
  {:else}
    <h3 class="text-lg font-semibold mb-4">{title}</h3>
  {/if}

  <p class="text-sm text-muted-foreground mb-4">{description}</p>

  <div class="space-y-2">
    <slot name="metrics">
      {#each Object.entries(metrics) as [key, value]}
        <div class="flex justify-between text-sm">
          <span class="text-muted-foreground">{key}</span>
          <span class="font-medium">{value}</span>
        </div>
      {/each}
    </slot>
  </div>
</div>
