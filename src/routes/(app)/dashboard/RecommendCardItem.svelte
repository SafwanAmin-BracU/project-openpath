<script lang="ts">
  import Icon from "@iconify/svelte";

  export type RecommendCardItemType = {
    title: string;
    description: string;
    stars: number;
    technologies: string[];
    metrics: {
      goodFirstIssues: number;
      skillMatch: number;
    };
  };
  let { recommend }: { recommend: RecommendCardItemType } = $props();
</script>

<div class="flex gap-4 items-start p-4 rounded-lg border border-gray-400 transition-colors hover:bg-gray-100 h-fit">
  <!-- Project icon -->
  <div class="flex justify-center items-center rounded-md border size-10 shrink-0 bg-muted">
    <Icon
      icon="mdi:code"
      class="size-5"
    />
  </div>
  <!-- Project details -->
  <div class="flex flex-col flex-1 gap-1">
    <div class="flex justify-between items-center">
      <h3 class="font-semibold">{recommend.title}</h3>
      <!-- Star count -->
      <div class="flex gap-1 items-center text-amber-500">
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="24"
          height="24"
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          stroke-width="2"
          stroke-linecap="round"
          stroke-linejoin="round"
          class="w-4 h-4 fill-current lucide lucide-star"
          ><polygon
            points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"
          ></polygon></svg
        ><span class="text-sm">{recommend.stars}k</span>
      </div>
    </div>
    <p class="text-sm text-gray-600">{recommend.description}</p>
    <!-- Technology badges -->
    <div class="flex flex-wrap gap-2 pt-1">
      {#each recommend.technologies as technology}
        <div
          class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-gray-600 rounded-full border border-gray-400"
        >
          {technology}
        </div>
      {/each}
    </div>
    <!-- Project metrics -->
    <div class="flex gap-1.5 justify-between items-center pt-2">
      <div class="text-xs text-gray-600">{recommend.metrics.goodFirstIssues} good first issues</div>
      <div class="text-xs font-medium text-emerald-600">{recommend.metrics.skillMatch}% Skill Match</div>
    </div>
  </div>
</div>
