<script lang="ts">
  import Icon from "@iconify/svelte";

  export type ProjectCardType = {
    id: 1;
    name: string;
    description: string;
    languages: string[];
    healthScore: number;
    contributors: number;
    difficulty: string;
    skillMatch: number;
    openIssues: number;
    stars: number;
  };

  let { project }: { project: ProjectCardType } = $props();
</script>

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

    <!-- Difficulty level -->
    <div>
      <div class="text-muted-foreground">Difficulty</div>
      <div class="font-medium">{project.difficulty}</div>
    </div>
  </div>

  <!-- Footer with good first issues and skill match -->
  <div class="flex justify-between items-center pt-2 mt-2 border-t">
    <div class="text-xs text-muted-foreground">{project.openIssues} open issues</div>
    <div class="text-xs font-medium text-emerald-600">{project.skillMatch}% skill match</div>
  </div>
</div>
