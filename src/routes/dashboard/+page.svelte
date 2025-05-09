<script lang="ts">
  import Icon from "@iconify/svelte";

  type RecentActivityCardItemType = {
    title: string;
    description: string;
    timestamp: string;
  };

  type RecommendedProjectCardItemType = {
    icon: string;
    title: string;
    description: string;
    stars: number;
    technologies: string[];
    metrics: {
      goodFirstIssues: number;
      skillMatch: number;
    };
  };

  const recentActivityCardItems: RecentActivityCardItemType[] = [
    {
      title: "React Query",
      description: "Opened PR #1234",
      timestamp: "2 hours ago",
    },
    {
      title: "Next.js",
      description: "Commented on issue #5678",
      timestamp: "Yesterday",
    },
    {
      title: "Factify",
      description: "Opened PR #1234",
      timestamp: "2 hours ago",
    },
  ];

  const recommendedProjectCardItems: RecommendedProjectCardItemType[] = [
    {
      icon: "mdi:code",
      title: "React Query",
      description: "Hooks for fetching, caching and updating asynchronous data in React",
      stars: 29.5,
      technologies: ["JavaScript", "React", "TypeScript"],
      metrics: {
        goodFirstIssues: 12,
        skillMatch: 94,
      },
    },
    {
      icon: "mdi:code",
      title: "Next.js",
      description: "The React Framework for Production",
      stars: 106.0,
      technologies: ["JavaScript", "React", "TypeScript"],
      metrics: {
        goodFirstIssues: 8,
        skillMatch: 87,
      },
    },
    {
      icon: "mdi:code",
      title: "Factify",
      description: "Open Source Fact Checker",
      stars: 29.5,
      technologies: ["JavaScript", "React", "TypeScript"],
      metrics: {
        goodFirstIssues: 12,
        skillMatch: 94,
      },
    },
    {
      icon: "mdi:code",
      title: "Chakra UI",
      description: "Simple, modular and accessible component library for React",
      stars: 35.2,
      technologies: ["JavaScript", "React", "TypeScript"],
      metrics: {
        goodFirstIssues: 15,
        skillMatch: 91,
      },
    },
    {
      icon: "mdi:code",
      title: "Remix",
      description: "Full stack web framework built on React and modern web standards",
      stars: 22.3,
      technologies: ["JavaScript", "React", "TypeScript"],
      metrics: {
        goodFirstIssues: 9,
        skillMatch: 89,
      },
    },
    {
      icon: "mdi:code",
      title: "Recoil",
      description: "State management library for React apps",
      stars: 18.9,
      technologies: ["JavaScript", "React"],
      metrics: {
        goodFirstIssues: 6,
        skillMatch: 92,
      },
    },
    {
      icon: "mdi:code",
      title: "React Hook Form",
      description: "Performant, flexible and extensible forms with easy-to-use validation",
      stars: 36.7,
      technologies: ["JavaScript", "React", "TypeScript"],
      metrics: {
        goodFirstIssues: 13,
        skillMatch: 90,
      },
    },
    {
      icon: "mdi:code",
      title: "TanStack Table",
      description: "Headless UI for building powerful tables & datagrids",
      stars: 20.4,
      technologies: ["JavaScript", "React", "TypeScript"],
      metrics: {
        goodFirstIssues: 7,
        skillMatch: 88,
      },
    },
  ];
</script>

<div class="flex flex-1 gap-4 h-full">
  <!-- Left column -->
  <div class="flex flex-col flex-1 gap-4 h-full">
    <!-- Recommended Projects card -->
    <div class="gap-4 p-6 card w-full overflow-y-auto">
      <!-- Card header -->
      <div class="flex flex-col gap-2">
        <h3 class="text-2xl font-semibold tracking-tight leading-none">Recommended Projects</h3>
        <p class="text-sm">Based on your skills and interests</p>
      </div>
      <!-- Card content -->
      <div class="flex flex-col gap-4">
        {#each recommendedProjectCardItems as item}
          {@render RecommendedProjectCardItem(item)}
        {/each}
      </div>
    </div>
  </div>

  <!-- Right column -->
  <div class="flex flex-col gap-4">
    <!-- Skills card -->
    <div class="card">
      <!-- Card header -->
      <div class="flex flex-col gap-1.5 p-6 pb-2">
        <h3 class="text-2xl font-semibold tracking-tight leading-none">Your Skills</h3>
        <p class="text-sm">Track your progress in different areas</p>
      </div>
      <!-- Card content -->
      <div class="p-6 pt-0">
        <div class="flex flex-col gap-4">
          <!-- JavaScript skill -->
          <div class="flex flex-col gap-1">
            <div class="flex justify-between items-center">
              <span class="text-sm font-medium">JavaScript</span><span class="text-sm font-medium">85%</span>
            </div>
            <div class="overflow-hidden w-full h-2 rounded-full bg-muted">
              <div
                class="h-full bg-emerald-600"
                style="width: 85%;"
              ></div>
            </div>
          </div>
          <!-- React skill -->

          <!-- Python skill -->
          <div class="flex flex-col gap-1">
            <div class="flex justify-between items-center">
              <span class="text-sm font-medium">Python</span><span class="text-sm font-medium">60%</span>
            </div>
            <div class="overflow-hidden w-full h-2 rounded-full bg-muted">
              <div
                class="h-full bg-emerald-600"
                style="width: 60%;"
              ></div>
            </div>
          </div>
          <!-- Node.js skill -->
          <div class="flex flex-col gap-1">
            <div class="flex justify-between items-center">
              <span class="text-sm font-medium">Node.js</span><span class="text-sm font-medium">45%</span>
            </div>
            <div class="overflow-hidden w-full h-2 rounded-full bg-muted">
              <div
                class="h-full bg-emerald-600"
                style="width: 45%;"
              ></div>
            </div>
          </div>
          <!-- Update skills button -->
          <button
            class="inline-flex gap-2 justify-center items-center px-4 py-2 mt-4 w-full h-10 text-sm font-medium text-white whitespace-nowrap bg-emerald-700 rounded-md border transition-colors focus-visible:outline-none focus-visible:ring-2 focus:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 hover:bg-emerald-800"
            >Update Skills</button
          >
        </div>
      </div>
    </div>

    <!-- Recent Activity card -->
    <div class="card">
      <!-- Card header -->
      <div class="flex flex-col gap-1.5 p-6 pb-2">
        <h3 class="text-2xl font-semibold tracking-tight leading-none">Recent Activity</h3>
      </div>
      <!-- Card content -->
      <div class="p-6 pt-0">
        <div class="flex flex-col gap-4">
          {#each recentActivityCardItems as item}
            {@render RecentActivityItem(item)}
          {/each}
        </div>
      </div>
    </div>
  </div>
</div>

{#snippet RecentActivityItem(activity: { title: string; description: string; timestamp: string })}
  <div class="flex gap-4 items-start">
    <div class="relative mt-0.5 w-2 h-2 bg-emerald-600 rounded-full">
      <span class="absolute -top-0.5 -left-0.5 bg-emerald-600 rounded-full opacity-75 animate-ping size-3"></span>
    </div>
    <div class="flex flex-col flex-1 gap-1">
      <p class="text-sm font-medium leading-none">{activity.title}</p>
      <p class="text-sm">{activity.description}</p>
      <p class="text-xs">{activity.timestamp}</p>
    </div>
  </div>
{/snippet}

{#snippet RecommendedProjectCardItem(item: RecommendedProjectCardItemType)}
  <div class="flex gap-4 items-start p-4 rounded-lg border border-gray-400 transition-colors hover:bg-gray-100 h-fit">
    <!-- Project icon -->
    <div class="flex justify-center items-center rounded-md border size-10 shrink-0 bg-muted">
      <Icon
        icon={item.icon}
        class="size-5"
      />
    </div>
    <!-- Project details -->
    <div class="flex flex-col flex-1 gap-1">
      <div class="flex justify-between items-center">
        <h3 class="font-semibold">{item.title}</h3>
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
          ><span class="text-sm">{item.stars}k</span>
        </div>
      </div>
      <p class="text-sm text-gray-600">{item.description}</p>
      <!-- Technology badges -->
      <div class="flex flex-wrap gap-2 pt-1">
        {#each item.technologies as technology}
          <div
            class="inline-flex items-center px-2.5 py-0.5 text-xs font-semibold text-gray-600 rounded-full border border-gray-400"
          >
            {technology}
          </div>
        {/each}
      </div>
      <!-- Project metrics -->
      <div class="flex gap-1.5 justify-between items-center pt-2">
        <div class="text-xs text-gray-600">{item.metrics.goodFirstIssues} good first issues</div>
        <div class="text-xs font-medium text-emerald-600">{item.metrics.skillMatch}% Skill Match</div>
      </div>
    </div>
  </div>
{/snippet}

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
