import type { RequestEvent } from "@sveltejs/kit";
import { db } from "$lib/server/db";
// import { users } from "../db/schema";

export const checkAuthUserToken = async (event: RequestEvent) => {
  // get the cookie from the request
  const cookie = event.cookies.get("session");

  // if the cookie is not set, return null
  if (!cookie) return null;

  // get the user from the database
  //   const user = await db.query.users.findFirst({
  //     where: (users, { eq }) => eq(users.sessionToken, cookie),
  //   });

  // if the user is not found, return null
  //   if (!user) return null;

  //   // return the user
  //   return user;
};
