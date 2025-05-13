<script lang="ts">
  import type { PageProps } from "./$types";

  // Components
  import SkillsCard from "./SkillsCard.svelte";
  import RecommendCard from "./RecommendCard.svelte";
  import RecentsCard from "./RecentsCard.svelte";

  // Load Data from server
  let { data }: PageProps = $props();
  // Destructure data
  let { skills, recommends, recents } = data;
</script>

<div class="flex flex-1 gap-4 h-full">
  <!-- Left column -->
  <div class="flex flex-col flex-1 gap-4 h-full">
    <!-- Recommended Projects card -->
    <RecommendCard {recommends} />
  </div>

  <!-- Right column -->
  <div class="flex flex-col gap-4">
    <!-- Skills card -->
    <SkillsCard {skills} />

    <!-- Recent Activity card -->
    <RecentsCard {recents} />
  </div>
</div>
