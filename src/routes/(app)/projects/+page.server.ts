import { db } from "$lib/server/db";
import { projects, skills } from "$lib/server/db/schema";
import type { PageServerLoad } from "./$types";
import type { ProjectCardType } from "./ProjectCard.svelte";

const getAllProjects = async () => {
  const allProjects = await db.select().from(projects);
  return allProjects;
};

const getAllDistinctLanguages = async () => {
  const allDistinctLanguages = await db
    .select({
      name: skills.name,
    })
    .from(skills);
  return allDistinctLanguages;
};

const getAllDistinctDifficulties = async () => {
  const allDistinctDifficulties = await db
    .selectDistinct({
      difficulty: projects.difficulty,
    })
    .from(projects);
    return allDistinctDifficulties
};

export const load: PageServerLoad = async () => {
  return {
    projects: await getAllProjects(),
    difficultyLevels: await getAllDistinctDifficulties(),
    languageOptions: await getAllDistinctLanguages(),
  };
};
