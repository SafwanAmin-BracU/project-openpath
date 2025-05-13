import type { Actions, PageServerLoad } from "./$types";
import { db } from "$lib/server/db";
import { users } from "$lib/server/db/schema";
import { eq } from "drizzle-orm";
import { goto } from "$app/navigation";
import { redirect } from "@sveltejs/kit";

export const load = (async () => {
  return {};
}) satisfies PageServerLoad;

export const actions: Actions = {
  default: async ({ request, locals }) => {
    const data = await request.formData();
    const email = data.get("email");
    const password = data.get("password");
    // console.log("Action fired", email, password);

    const user = (
      await db
        .select()
        .from(users)
        .where(eq(users.email, email as string))
        .limit(1)
    )[0];
    console.log(user);

    if (user && user.password === password) {
      console.log("login successfull");
      locals.user = user;
      redirect(301, "/dashboard");
    }
  },
};
