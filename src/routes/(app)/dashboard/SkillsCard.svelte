<script lang="ts">
  import type { SkillType } from "./SkillsCardItem.svelte";
  import SkillsCardItem from "./SkillsCardItem.svelte";

  let { skills }: { skills: SkillType[] } = $props();
</script>

<div class="rounded-lg border shadow-sm border-gray-400 bg-white text-gray-900 h-full">
  <!-- Card header -->
  <div class="flex flex-col gap-1.5 p-6 pb-2">
    <h3 class="text-2xl font-semibold tracking-tight leading-none">Your Skills</h3>
    <p class="text-sm">Track your progress in different areas</p>
  </div>
  <!-- Card content -->
  <div class="p-6 pt-0">
    <div class="flex flex-col gap-4">
      {#each skills as skill}
        <SkillsCardItem {skill} />
      {/each}

      <!-- Update skills button -->
      <button
        class="inline-flex gap-2 justify-center items-center px-4 py-2 mt-4 w-full h-10 text-sm font-medium text-white whitespace-nowrap bg-emerald-700 rounded-md border transition-colors focus-visible:outline-none focus-visible:ring-2 focus:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-emerald-800"
        >Update Skills</button
      >
    </div>
  </div>
</div>
