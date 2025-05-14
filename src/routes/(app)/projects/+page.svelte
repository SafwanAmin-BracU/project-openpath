<script lang="ts">
  import Icon from "@iconify/svelte";
  import type { PageProps } from "./$types";
  import ProjectCard from "./ProjectCard.svelte";
  let { data }: PageProps = $props();

  // ===== STATE MANAGEMENT =====
  // Filter states using Svelte 5's $state for reactivity
  let searchQuery = $state(""); // Stores the current search text
  let selectedDifficulty = $state<string[]>([]); // Array of selected difficulty levels
  let minHealthScore = $state(7.0); // Minimum project health score filter
  let selectedLanguages = $state<string[]>([]); // Array of selected programming languages
  let selectedDomains = $state<string[]>([]); // Array of selected project domains

  // UI state management
  let sortBy = $state("Skill Match"); // Current sort option

  // ===== MOCK DATA =====
  // Sample projects data - would be replaced with GitHub API data in production
  let { projects, difficultyLevels, languageOptions } = data;

  // ===== FILTER OPTIONS =====
  // Available options for filter dropdowns and checkboxes

  // ===== HELPER FUNCTIONS =====
  // Reset all filters to their default values
  function resetFilters() {
    searchQuery = "";
    selectedDifficulty = [];
    minHealthScore = 7.0;
    selectedLanguages = [];
    selectedDomains = [];
  }
</script>

<!-- ===== MAIN CONTAINER ===== -->
<!-- Container with padding and auto margins -->
<div class="container py-6 mx-auto">
  <div class="flex flex-col space-y-4">
    <!-- ===== PAGE HEADER ===== -->
    <div class="flex justify-between items-center">
      <h1 class="text-3xl font-bold">Find Projects</h1>

      <!-- Sort dropdown -->
      <div class="flex gap-2 items-center">
        <span class="text-sm font-medium">Sort by:</span>
        <select
          bind:value={sortBy}
          class="px-3 py-1 h-9 text-sm rounded-md border shadow-sm transition-colors border-input bg-background focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"
        >
          <option>Skill Match</option>
          <option>Stars</option>
          <option>Recently Updated</option>
          <option>Health Score</option>
        </select>
      </div>
    </div>

    <!-- Page description -->
    <p class="text-muted-foreground">Discover open source projects that match your skills and interests</p>

    <!-- ===== TABS AND PROJECT COUNT ===== -->
    <div class="flex justify-between items-center pb-2 border-b">
      <!-- Project count indicator -->
      <span class="text-sm text-muted-foreground">Showing {projects.length} projects</span>
    </div>

    <!-- ===== MAIN CONTENT GRID ===== -->
    <!-- Two-column layout with filters on left, projects on right -->
    <div class="grid grid-cols-[300px_1fr] gap-6">
      <!-- ===== LEFT SIDEBAR: FILTERS ===== -->
      <div class="space-y-6">
        <!-- Search input -->
        <div>
          <h3 class="mb-2 font-medium">Search</h3>
          <div class="relative">
            <Icon
              icon="mdi:magnify"
              class="absolute top-2.5 left-2.5 w-4 h-4 text-muted-foreground"
            />
            <input
              type="search"
              placeholder="Search projects..."
              class="py-2 pr-3 pl-8 w-full h-10 text-sm rounded-md border shadow-sm border-input bg-background focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring"
              bind:value={searchQuery}
            />
          </div>
        </div>

        <!-- Difficulty level filter -->
        <div>
          <h3 class="mb-2 font-medium">Difficulty Level</h3>
          <div class="space-y-2">
            {#each difficultyLevels as level}
              <label class="flex gap-2 items-center">
                <input
                  type="checkbox"
                  value={level.difficulty}
                  bind:group={selectedDifficulty}
                  class="w-4 h-4 rounded border-gray-300 text-primary focus:ring-primary"
                />
                <span class="text-sm">{level.difficulty}</span>
              </label>
            {/each}
          </div>
        </div>

        <!-- Health score slider -->
        <div>
          <h3 class="mb-2 font-medium">Min Health Score</h3>
          <div class="space-y-2">
            <div class="flex justify-between">
              <span class="text-sm font-medium">{minHealthScore.toFixed(1)}</span>
              <span class="text-sm text-muted-foreground">10</span>
            </div>
            <input
              type="range"
              min="0"
              max="10"
              step="0.1"
              bind:value={minHealthScore}
              class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer"
            />
          </div>
        </div>

        <!-- Languages filter -->
        <div>
          <h3 class="mb-2 font-medium">Languages & Frameworks</h3>
          <div class="overflow-y-auto space-y-2 max-h-48">
            {#each languageOptions as language}
              <label class="flex gap-2 items-center">
                <input
                  type="checkbox"
                  value={language.name}
                  bind:group={selectedLanguages}
                  class="w-4 h-4 rounded border-gray-300 text-primary focus:ring-primary"
                />
                <span class="text-sm">{language.name}</span>
              </label>
            {/each}
          </div>
        </div>

        <!-- Reset filters button -->
        <button
          class="px-4 py-2 w-full text-sm font-medium text-gray-800 bg-gray-200 rounded-md transition-colors hover:bg-gray-300"
          onclick={resetFilters}
        >
          Reset Filters
        </button>
      </div>

      <!-- ===== RIGHT CONTENT: PROJECTS LIST ===== -->
      <div class="space-y-4">
        <!-- Project cards - each card represents one project -->
        {#each projects as project}
          <ProjectCard {project} />
        {/each}
      </div>
    </div>
  </div>
</div>
