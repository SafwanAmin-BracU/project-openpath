import { pgTable, uuid, varchar, text, integer, timestamp, index, primaryKey } from "drizzle-orm/pg-core";
import { relations } from "drizzle-orm";

export const users = pgTable("users", {
  id: uuid("id").primaryKey().defaultRandom(),
  name: varchar("name", { length: 256 }).notNull(),
  email: varchar("email", { length: 256 }).notNull(),
  passwordHashValue: varchar("passwordHashValue", { length: 256 }).notNull(),
  createdAt: timestamp("createdAt", { withTimezone: true }).defaultNow().notNull(),
});

export const userSessions = pgTable("userSessions", {
  id: uuid("id").primaryKey().defaultRandom(),
  userId: uuid("userId")
    .notNull()
    .references(() => users.id, { onDelete: "cascade" }),
  createdAt: timestamp("createdAt", { withTimezone: true }).defaultNow().notNull(),
  expiresAt: timestamp("expiresAt", { withTimezone: true }).notNull(),
});

export const userSkills = pgTable(
  "userSkills",
  {
    userId: uuid("userId")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    skillId: uuid("skillId")
      .notNull()
      .references(() => skills.id, { onDelete: "cascade" }),
    proficiency: integer("proficiency").notNull(),
  },
  (table) => [primaryKey({ columns: [table.userId, table.skillId] })]
);

export const userSavedProjects = pgTable(
  "userSavedProjects",
  {
    userId: uuid("userId")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    projectId: uuid("projectId")
      .notNull()
      .references(() => projects.id, { onDelete: "cascade" }),
  },
  (table) => [primaryKey({ columns: [table.userId, table.projectId] })]
);

export const userJoinedCommunities = pgTable(
  "userJoinedCommunities",
  {
    userId: uuid("userId")
      .notNull()
      .references(() => users.id, { onDelete: "cascade" }),
    communityId: uuid("communityId")
      .notNull()
      .references(() => communities.id, { onDelete: "cascade" }),
  },
  (table) => [primaryKey({ columns: [table.userId, table.communityId] })]
);

export const skills = pgTable("skills", {
  id: uuid("id").primaryKey().defaultRandom(),
  name: varchar("name", { length: 256 }).notNull(),
});

export const projects = pgTable("projects", {
  id: uuid("id").primaryKey().defaultRandom(),
  name: varchar("name", { length: 256 }).notNull(),
  summary: text("summary").notNull(),
  stars: integer("stars").notNull(),
  createdAt: timestamp("createdAt", { withTimezone: true }).defaultNow().notNull(),
  updatedAt: timestamp("updatedAt", { withTimezone: true }).defaultNow().notNull(),
});

export const projectSkillRequirements = pgTable(
  "projectSkillRequirements",
  {
    projectId: uuid("projectId")
      .notNull()
      .references(() => projects.id, { onDelete: "cascade" }),
    skillId: uuid("skillId")
      .notNull()
      .references(() => skills.id, { onDelete: "cascade" }),
    proficiency: integer("proficiency").notNull(),
  },
  (table) => [primaryKey({ columns: [table.projectId, table.skillId] })]
);

export const communities = pgTable("communities", {
  id: uuid("id").primaryKey().defaultRandom(),
  name: varchar("name", { length: 256 }).notNull(),
  description: text("description").notNull(),
  createdAt: timestamp("createdAt", { withTimezone: true }).defaultNow().notNull(),
});

export const communityProjects = pgTable(
  "communityProjects",
  {
    communityId: uuid("communityId")
      .notNull()
      .references(() => communities.id, { onDelete: "cascade" }),
    projectId: uuid("projectId")
      .notNull()
      .references(() => projects.id, { onDelete: "cascade" }),
  },
  (table) => [primaryKey({ columns: [table.communityId, table.projectId] })]
);
