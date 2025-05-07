<script lang="ts">
  import Icon from "@iconify/svelte";

  // ===== STATE MANAGEMENT =====
  // Filter states using Svelte 5's $state for reactivity
  let searchQuery = $state(""); // Stores the current search text
  let selectedDifficulty = $state<string[]>([]); // Array of selected difficulty levels
  let minHealthScore = $state(7.0); // Minimum project health score filter
  let selectedLanguages = $state<string[]>([]); // Array of selected programming languages
  let selectedDomains = $state<string[]>([]); // Array of selected project domains

  // UI state management
  let sortBy = $state("Skill Match"); // Current sort option
  let activeTab = $state("All Projects"); // Currently active tab

  // ===== MOCK DATA =====
  // Sample projects data - would be replaced with GitHub API data in production
  const projects = [
    {
      id: 1,
      name: "React Query",
      description: "Hooks for fetching, caching and updating asynchronous data in React",
      languages: ["JavaScript", "React", "TypeScript"],
      healthScore: 9.2,
      contributors: 342,
      responseTime: "1-2 days",
      difficulty: "Intermediate",
      skillMatch: 94,
      goodFirstIssues: 12,
      stars: 29.5,
    },
    {
      id: 2,
      name: "Next.js",
      description: "The React Framework for Production",
      languages: ["JavaScript", "React", "TypeScript"],
      healthScore: 9.8,
      contributors: 2241,
      responseTime: "3-5 days",
      difficulty: "Intermediate",
      skillMatch: 87,
      goodFirstIssues: 8,
      stars: 106,
    },
    // ... more projects would be added here
    {
      id: 3,
      name: "Express.js",
      description: "Fast, unopinionated, minimalist web framework for Node.js",
      languages: ["JavaScript", "Node.js"],
      healthScore: 7.9,
      contributors: 262,
      responseTime: "1 week+",
      difficulty: "Beginner",
      skillMatch: 81,
      goodFirstIssues: 6,
      stars: 55.3,
    },
    {
      id: 4,
      name: "Fastify",
      description: "Fast and low overhead web framework for Node.js",
      languages: ["JavaScript", "Node.js", "TypeScript"],
      healthScore: 8.5,
      contributors: 156,
      responseTime: "1-2 days",
      difficulty: "Advanced",
      skillMatch: 76,
      goodFirstIssues: 5,
      stars: 26.9,
    },
  ];

  // ===== REACTIVE EFFECTS =====
  // Filter projects based on selected filters
  $effect(() => {
    // This would filter projects based on selected filters
    // Implementation would use the state variables to filter the projects array
    // For now, we're just using the mock data
  });

  // ===== FILTER OPTIONS =====
  // Available options for filter dropdowns and checkboxes
  const difficultyLevels = ["Beginner", "Intermediate", "Advanced"];
  const languageOptions = ["JavaScript", "TypeScript", "Python", "Java", "C++", "Go", "Rust"];
  const domainOptions = ["Web Development", "Mobile Development", "Machine Learning", "Data Science", "DevOps"];

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

      <!-- Tab navigation -->
      <div class="flex space-x-1">
        <!-- Tab buttons with active state styling -->
        <button
          class={`px-3 py-1 text-sm rounded-md transition-colors ${activeTab === "All Projects" ? "bg-primary text-primary-foreground" : "hover:bg-muted"}`}
          on:click={() => (activeTab = "All Projects")}
        >
          All Projects
        </button>
        <button
          class={`px-3 py-1 text-sm rounded-md transition-colors ${activeTab === "Recommended" ? "bg-primary text-primary-foreground" : "hover:bg-muted"}`}
          on:click={() => (activeTab = "Recommended")}
        >
          Recommended
        </button>
        <button
          class={`px-3 py-1 text-sm rounded-md transition-colors ${activeTab === "Trending" ? "bg-primary text-primary-foreground" : "hover:bg-muted"}`}
          on:click={() => (activeTab = "Trending")}
        >
          Trending
        </button>
        <button
          class={`px-3 py-1 text-sm rounded-md transition-colors ${activeTab === "Beginner Friendly" ? "bg-primary text-primary-foreground" : "hover:bg-muted"}`}
          on:click={() => (activeTab = "Beginner Friendly")}
        >
          Beginner Friendly
        </button>
      </div>
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
                  value={level}
                  bind:group={selectedDifficulty}
                  class="w-4 h-4 rounded border-gray-300 text-primary focus:ring-primary"
                />
                <span class="text-sm">{level}</span>
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
                  value={language}
                  bind:group={selectedLanguages}
                  class="w-4 h-4 rounded border-gray-300 text-primary focus:ring-primary"
                />
                <span class="text-sm">{language}</span>
              </label>
            {/each}
          </div>
        </div>

        <!-- Domains filter -->
        <div>
          <h3 class="mb-2 font-medium">Domains</h3>
          <div class="overflow-y-auto space-y-2 max-h-48">
            {#each domainOptions as domain}
              <label class="flex gap-2 items-center">
                <input
                  type="checkbox"
                  value={domain}
                  bind:group={selectedDomains}
                  class="w-4 h-4 rounded border-gray-300 text-primary focus:ring-primary"
                />
                <span class="text-sm">{domain}</span>
              </label>
            {/each}
          </div>
        </div>

        <!-- Reset filters button -->
        <button
          class="px-4 py-2 w-full text-sm font-medium text-gray-800 bg-gray-200 rounded-md transition-colors hover:bg-gray-300"
          on:click={resetFilters}
        >
          Reset Filters
        </button>
      </div>

      <!-- ===== RIGHT CONTENT: PROJECTS LIST ===== -->
      <div class="space-y-4">
        <!-- Project cards - each card represents one project -->
        {#each projects as project}
          <div class="p-4 rounded-lg border transition-colors hover:bg-muted/50">
            <!-- Project header with icon, name, and star count -->
            <div class="flex justify-between items-start">
              <div class="flex gap-4">
                <!-- Project icon -->
                <div class="flex justify-center items-center w-10 h-10 rounded-md border shrink-0 bg-muted">
                  <Icon
                    icon="mdi:code-braces"
                    class="w-5 h-5"
                  />
                </div>

                <!-- Project title and description -->
                <div>
                  <h3 class="flex gap-2 items-center text-lg font-semibold">
                    {project.name}
                    <!-- Star count -->
                    <span class="flex items-center text-sm font-normal text-amber-500">
                      <Icon
                        icon="mdi:star"
                        class="mr-0.5 w-4 h-4"
                      />
                      {project.stars}k
                    </span>
                  </h3>
                  <p class="text-sm text-muted-foreground">{project.description}</p>
                </div>
              </div>

              <!-- Save button -->
              <button class="px-3 py-1 text-sm rounded-md border transition-colors hover:bg-muted">Save</button>
            </div>

            <!-- Technology tags -->
            <div class="flex flex-wrap gap-2 mt-3">
              {#each project.languages as language}
                <div
                  class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold rounded-full border bg-secondary text-secondary-foreground"
                >
                  {language}
                </div>
              {/each}
            </div>

            <!-- Project metrics grid -->
            <div class="grid grid-cols-3 gap-4 mt-4 text-sm">
              <!-- Health score -->
              <div>
                <div class="text-muted-foreground">Health Score</div>
                <div class="flex items-center font-medium">
                  <div class="mr-2 w-2 h-2 bg-emerald-600 rounded-full"></div>
                  {project.healthScore}/10
                </div>
              </div>

              <!-- Contributors count -->
              <div>
                <div class="text-muted-foreground">Contributors</div>
                <div class="flex items-center font-medium">
                  <Icon
                    icon="mdi:account-group"
                    class="mr-1 w-4 h-4"
                  />
                  {project.contributors}
                </div>
              </div>

              <!-- Response time -->
              <div>
                <div class="text-muted-foreground">Response Time</div>
                <div class="font-medium">{project.responseTime}</div>
              </div>

              <!-- Difficulty level -->
              <div>
                <div class="text-muted-foreground">Difficulty</div>
                <div class="font-medium">{project.difficulty}</div>
              </div>
            </div>

            <!-- Footer with good first issues and skill match -->
            <div class="flex justify-between items-center pt-2 mt-2 border-t">
              <div class="text-xs text-muted-foreground">{project.goodFirstIssues} good first issues</div>
              <div class="text-xs font-medium text-emerald-600">{project.skillMatch}% skill match</div>
            </div>
          </div>
        {/each}
      </div>
    </div>
  </div>
</div>
