// import type { PageServerLoad } from "./$types";
// import { db } from "$lib/server/db";
// import { sql } from "drizzle-orm";
// import { redirect } from "@sveltejs/kit";

// export const load = (async ({ locals }) => {
//   // Ensure user is authenticated
//   // if (!locals.user) {
//   //     throw redirect(302, '/login');
//   // }

//   // Fallback to first user if ID is missing (temporary dev solution)
//   const userId = locals.user?.id || (await db.query.users.findFirst())?.id;

//   if (!userId) {
//     throw new Error("No user available for recommendations");
//   }

//   const recommendedProjects = await db.execute(sql`SELECT * FROM get_project_recommendations(${userId})`);

//   return {
//     recommendedProjects: recommendedProjects.rows,
//   };
// }) satisfies PageServerLoad;
