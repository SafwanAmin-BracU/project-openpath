<script lang="ts">
  export type RecentsItemType = {
    title: string;
    description: string;
    timestamp: string;
  };
  let { recent }: { recent: RecentsItemType } = $props();
</script>

<div class="flex gap-4 items-start">
  <div class="relative mt-0.5 w-2 h-2 bg-emerald-600 rounded-full">
    <span class="absolute -top-0.5 -left-0.5 bg-emerald-600 rounded-full opacity-75 animate-ping size-3"></span>
  </div>
  <div class="flex flex-col flex-1 gap-1">
    <p class="text-sm font-medium leading-none">{recent.title}</p>
    <p class="text-sm">{recent.description}</p>
    <p class="text-xs">{recent.timestamp}</p>
  </div>
</div>
