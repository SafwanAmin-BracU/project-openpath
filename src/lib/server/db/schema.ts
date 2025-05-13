import { pgTable, uuid, varchar, text, integer, timestamp, index } from "drizzle-orm/pg-core";
import { relations } from "drizzle-orm";

export const users = pgTable("users", {
  id: uuid("id").primaryKey().defaultRandom(),
  username: varchar("username", { length: 50 }).notNull().unique(),
  email: varchar("email", { length: 100 }).notNull().unique(),
  passwordHash: varchar("password_hash", { length: 255 }).notNull(),
  name: varchar("name", { length: 100 }),
  githubUsername: varchar("github_username", { length: 50 }),
  phone: varchar("phone", { length: 20 }),
  city: varchar("city", { length: 100 }),
  state: varchar("state", { length: 50 }),
  postalCode: varchar("postal_code", { length: 20 }),
  addressLine1: varchar("address_line1", { length: 255 }),
  addressLine2: varchar("address_line2", { length: 255 }),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const projects = pgTable("projects", {
  id: uuid("id").primaryKey().defaultRandom(),
  name: varchar("name", { length: 100 }).notNull(),
  description: text("description"),
  repositoryUrl: varchar("repository_url", { length: 255 }),
  communitySupport: integer("community_support").default(0),
  maintainerEngagement: varchar("maintainer_engagement", { length: 50 }),
  difficulty: varchar("difficulty", { length: 20 }),
  stars: integer("stars").default(0),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const skills = pgTable("skills", {
  id: uuid("id").primaryKey().defaultRandom(),
  name: varchar("name", { length: 50 }).notNull().unique(),
  category: varchar("category", { length: 50 }),
  createdAt: timestamp("created_at").notNull().defaultNow(),
});

export const communities = pgTable("communities", {
  id: uuid("id").primaryKey().defaultRandom(),
  name: varchar("name", { length: 100 }).notNull().unique(),
  description: text("description"),
  imageUrl: varchar("image_url", { length: 255 }),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const posts = pgTable("posts", {
  id: uuid("id").primaryKey().defaultRandom(),
  userId: uuid("user_id").references(() => users.id),
  communityId: uuid("community_id").references(() => communities.id),
  title: varchar("title", { length: 255 }),
  content: text("content").notNull(),
  category: varchar("category", { length: 50 }),
  postedAt: timestamp("posted_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const comments = pgTable("comments", {
  id: uuid("id").primaryKey().defaultRandom(),
  postId: uuid("post_id")
    .notNull()
    .references(() => posts.id),
  userId: uuid("user_id")
    .notNull()
    .references(() => users.id),
  content: text("content").notNull(),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const projectLanguages = pgTable("project_languages", {
  id: uuid("id").primaryKey().defaultRandom(),
  projectId: uuid("project_id")
    .notNull()
    .references(() => projects.id),
  language: varchar("language", { length: 50 }).notNull(),
});

export const projectRequirements = pgTable("project_requirements", {
  id: uuid("id").primaryKey().defaultRandom(),
  projectId: uuid("project_id")
    .notNull()
    .references(() => projects.id),
  skillId: uuid("skill_id")
    .notNull()
    .references(() => skills.id),
});

// Add missing projectIssues table
export const projectIssues = pgTable("project_issues", {
  id: uuid("id").primaryKey().defaultRandom(),
  projectId: uuid("project_id")
    .notNull()
    .references(() => projects.id),
  title: varchar("title", { length: 255 }).notNull(),
  description: text("description"),
  status: varchar("status", { length: 20 }).default("open"),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const pullRequests = pgTable("pull_requests", {
  id: uuid("id").primaryKey().defaultRandom(),
  projectId: uuid("project_id")
    .notNull()
    .references(() => projects.id),
  userId: uuid("user_id")
    .notNull()
    .references(() => users.id),
  title: varchar("title", { length: 255 }).notNull(),
  description: text("description"),
  linesAdded: integer("lines_added").default(0),
  linesRemoved: integer("lines_removed").default(0),
  status: varchar("status", { length: 20 }).default("open"),
  submittedAt: timestamp("submitted_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const contributions = pgTable("contributions", {
  id: uuid("id").primaryKey().defaultRandom(),
  userId: uuid("user_id")
    .notNull()
    .references(() => users.id),
  projectId: uuid("project_id")
    .notNull()
    .references(() => projects.id),
  description: text("description"),
  type: varchar("type", { length: 50 }),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

export const contributionMetrics = pgTable("contribution_metrics", {
  id: uuid("id").primaryKey().defaultRandom(),
  contributionId: uuid("contribution_id")
    .notNull()
    .references(() => contributions.id),
  linesAdded: integer("lines_added").default(0),
  linesRemoved: integer("lines_removed").default(0),
  filesChanged: integer("files_changed").default(0),
  complexityScore: integer("complexity_score").default(0),
  createdAt: timestamp("created_at").notNull().defaultNow(),
});

export const userSkills = pgTable("user_skills", {
  id: uuid("id").primaryKey().defaultRandom(),
  userId: uuid("user_id")
    .notNull()
    .references(() => users.id),
  skillId: uuid("skill_id")
    .notNull()
    .references(() => skills.id),
  createdAt: timestamp("created_at").notNull().defaultNow(),
});

export const userCommunities = pgTable("user_communities", {
  id: uuid("id").primaryKey().defaultRandom(),
  userId: uuid("user_id")
    .notNull()
    .references(() => users.id),
  communityId: uuid("community_id")
    .notNull()
    .references(() => communities.id),
  joinedAt: timestamp("joined_at").notNull().defaultNow(),
});

// Add other table definitions following the same pattern...

// Define relations
export const usersRelations = relations(users, ({ many }) => ({
  posts: many(posts),
  communities: many(userCommunities),
  skills: many(userSkills),
  contributions: many(contributions),
}));

export const communitiesRelations = relations(communities, ({ many }) => ({
  posts: many(posts),
  members: many(userCommunities),
}));

// Add relations for projectIssues
export const projectIssuesRelations = relations(projectIssues, ({ one }) => ({
  project: one(projects, { fields: [projectIssues.projectId], references: [projects.id] }),
}));

// Update projectsRelations to include issues
export const projectsRelations = relations(projects, ({ many }) => ({
  languages: many(projectLanguages),
  requirements: many(projectRequirements),
  issues: many(projectIssues),
}));

// Add new relations
export const postsRelations = relations(posts, ({ many, one }) => ({
  comments: many(comments),
  author: one(users, { fields: [posts.userId], references: [users.id] }),
  community: one(communities, { fields: [posts.communityId], references: [communities.id] }),
}));

export const commentsRelations = relations(comments, ({ one }) => ({
  post: one(posts, { fields: [comments.postId], references: [posts.id] }),
  author: one(users, { fields: [comments.userId], references: [users.id] }),
}));

export const projectLanguagesRelations = relations(projectLanguages, ({ one }) => ({
  project: one(projects, { fields: [projectLanguages.projectId], references: [projects.id] }),
}));

export const projectRequirementsRelations = relations(projectRequirements, ({ one }) => ({
  project: one(projects, { fields: [projectRequirements.projectId], references: [projects.id] }),
  skill: one(skills, { fields: [projectRequirements.skillId], references: [skills.id] }),
}));
