<script lang="ts">
  import type { RecentsItemType } from "./RecentsCardItem.svelte";
  import RecentsCardItem from "./RecentsCardItem.svelte";
  let { recents }: { recents: RecentsItemType[] } = $props();
</script>

<div class="rounded-lg border shadow-sm border-gray-400 bg-white text-gray-900 h-full">
  <!-- Card header -->
  <div class="flex flex-col gap-1.5 p-6 pb-2">
    <h3 class="text-2xl font-semibold tracking-tight leading-none">Recent Activity</h3>
  </div>
  <!-- Card content -->
  <div class="p-6 pt-0">
    <div class="flex flex-col gap-4">
      {#each recents as recent}
        <RecentsCardItem {recent} />
      {/each}
    </div>
  </div>
</div>
