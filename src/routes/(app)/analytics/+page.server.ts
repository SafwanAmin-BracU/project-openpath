import { db } from "$lib/server/db";
import { count, eq } from "drizzle-orm";
import type { PageServerLoad } from "./$types";
import { issues, projects, users } from "$lib/server/db/schema";

export const load: PageServerLoad = async ({ locals }) => {
    const totalContributions = (await db
        .select({ count: count() })
        .from(issues)
        .innerJoin(users, eq(issues.authorId, users.id))
        .innerJoin(projects, eq(issues.projectId, projects.id))
        .where(eq(users.id, locals.user?.id)))[0];


    return { totalContributions }

};