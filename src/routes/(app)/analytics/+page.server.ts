import { db } from "$lib/server/db";
import { count, eq, sum, and } from "drizzle-orm";
import type { PageServerLoad } from "./$types";
import { issues, projects, users } from "$lib/server/db/schema";

export const load: PageServerLoad = async ({ locals }) => {
    const totalContributions = (await db
        .select({ count: count() })
        .from(issues)
        .innerJoin(users, eq(issues.authorId, users.id))
        .innerJoin(projects, eq(issues.projectId, projects.id))
        .where(eq(users.id, locals.user?.id)))[0];

    const projectsContributed = (await db
        .selectDistinct({
            count: count(issues.projectId)
        })
        .from(issues)
        .where(eq(issues.authorId, locals.user?.id)))[0]

    const totalLinesOfCode = (await db
        .select({
            count: sum(issues.linesOfCode)
        })
        .from(users)
        .innerJoin(issues, eq(users.id, issues.authorId))
        .where(eq(users.id, locals.user?.id))
        .groupBy(users.id, users.name))[0]

    const closedIssues = (await db
        .selectDistinct({
            count: count(issues.projectId)
        })
        .from(issues)
        .where(eq(issues.authorId, locals.user?.id)))[0]


    return { totalContributions, projectsContributed, totalLinesOfCode, closedIssues }

};