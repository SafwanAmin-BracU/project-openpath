import { db } from '$lib/server/db';
import { communities } from '$lib/server/db/schema';
import type { PageServerLoad } from './$types';

export const load = (async () => {
    const allCommunities = await db.select().from(communities)
    return { allCommunities };
}) satisfies PageServerLoad;