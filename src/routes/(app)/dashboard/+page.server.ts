import type { PageServerLoad } from "./$types";
import type { SkillType } from "./SkillsCardItem.svelte";
import type { RecommendCardItemType } from "./RecommendCardItem.svelte";
import type { RecentsItemType } from "./RecentsCardItem.svelte";
import { db } from "$lib/server/db";
import { projects } from "$lib/server/db/schema";
// PLACEHOLDER DATA
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

// END PLACEHOLDER DATA

// GET DATA FROM DATABASE
const getRecents = async () => {};
const getRecommends = async () => {
  // get the recommends from the database
  const recommends = await db.select().from(projects);
  // map the recommends to the RecommendCardItemType
  return recommends.map((project) => {
    // get the project skills from the database
    // calculate the skill match
    return {
      title: project.name,
      description: project.summary,
      stars: project.stars,
      technologies: ["JavaScript", "React", "TypeScript"],
      metrics: {
        goodFirstIssues: project.issueCount,
        skillMatch: 100,
      },
    };
  });
};
const getSkills = async () => {};

export const load: PageServerLoad = async () => {
  return {
    recents,
    recommends: await getRecommends(),
    skills,
  };
};
