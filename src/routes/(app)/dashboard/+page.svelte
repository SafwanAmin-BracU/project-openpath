<script lang="ts">
  import type { SkillType } from "./SkillsCardItem.svelte";
  import SkillsCard from "./SkillsCard.svelte";
  import RecommendCard from "./RecommendCard.svelte";
  import type { RecommendCardItemType } from "./RecommendCardItem.svelte";
  import type { RecentsItemType } from "./RecentsCardItem.svelte";
  import RecentsCard from "./RecentsCard.svelte";

  const recents: RecentsItemType[] = [
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

  const recommends: RecommendCardItemType[] = [
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

  const skills: SkillType[] = [
    {
      title: "JavaScript",
      percentage: 85,
    },
    {
      title: "React",
      percentage: 60,
    },
    {
      title: "Python",
      percentage: 60,
    },
    {
      title: "Node.js",
      percentage: 45,
    },
  ];
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
