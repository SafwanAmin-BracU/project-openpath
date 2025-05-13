<script lang="ts">
  import RecommendCardItem from "./RecommendCardItem.svelte";
  import type { RecommendCardItemType } from "./RecommendCardItem.svelte";

  let { recommends }: { recommends: RecommendCardItemType[] } = $props();
</script>

<div class="gap-4 p-6 card w-full overflow-y-auto">
  <!-- Card header -->
  <div class="flex flex-col gap-2">
    <h3 class="text-2xl font-semibold tracking-tight leading-none">Recommended Projects</h3>
    <p class="text-sm">Based on your skills and interests</p>
  </div>
  <!-- Card content -->
  <div class="flex flex-col gap-4">
    {#each recommends as recommend}
      <RecommendCardItem {recommend} />
    {/each}
  </div>
</div>

<style lang="postcss">
  @reference 'tailwindcss';

  ::-webkit-scrollbar {
    display: none;
  }
  .card {
    @apply rounded-lg border shadow-sm border-gray-400 bg-white text-gray-900;
    @apply h-full;
  }
</style>
