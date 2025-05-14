import type { PageServerLoad } from "./$types";
import type { SkillType } from "./SkillsCardItem.svelte";
import type { RecommendCardItemType } from "./RecommendCardItem.svelte";
import type { RecentsItemType } from "./RecentsCardItem.svelte";
import { db } from "$lib/server/db";
import { projects, users, userSkills, skills } from "$lib/server/db/schema";
import { stringify } from "querystring";
import { eq } from "drizzle-orm";
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



// END PLACEHOLDER DATA

// GET DATA FROM DATABASE
const getRecents = async () => { };
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
const getSkills = async (user: object) => {
  const userSkillsList = await db.select({
    title: skills.name,
    percentage: userSkills.proficiency

  }).from(users).innerJoin(userSkills, eq(users.id, userSkills.userId)).innerJoin(skills, eq(userSkills.skillId, skills.id)).where(eq(users.id, user.id))
  return userSkillsList
};

export const load: PageServerLoad = async ({ locals }) => {
  return {
    recents,
    recommends: await getRecommends(),
    // skills: await getSkills(locals.user.id)
    skills: []
  };
};
