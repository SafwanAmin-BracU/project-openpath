CREATE TABLE "communities" (
	"id" serial PRIMARY KEY NOT NULL,
	"name" varchar(256) NOT NULL,
	"description" text NOT NULL,
	"created_at" timestamp
	with
		time zone DEFAULT now () NOT NULL
);

CREATE TABLE "community_projects" (
	"community_id" integer NOT NULL,
	"project_id" integer NOT NULL,
	CONSTRAINT "community_projects_community_id_project_id_pk" PRIMARY KEY ("community_id", "project_id")
);

CREATE TABLE "issues" (
	"id" serial PRIMARY KEY NOT NULL,
	"title" varchar(256) NOT NULL,
	"description" text NOT NULL,
	"created_at" timestamp
	with
		time zone DEFAULT now () NOT NULL,
		"updated_at" timestamp
	with
		time zone DEFAULT now () NOT NULL,
		"lines_of_code" integer NOT NULL,
		"status" text NOT NULL,
		"author_id" integer NOT NULL,
		"project_id" integer NOT NULL
);

CREATE TABLE "project_skill_requirements" (
	"project_id" integer NOT NULL,
	"skill_id" integer NOT NULL,
	"proficiency" integer NOT NULL,
	CONSTRAINT "project_skill_requirements_project_id_skill_id_pk" PRIMARY KEY ("project_id", "skill_id")
);

CREATE TABLE "projects" (
	"id" serial PRIMARY KEY NOT NULL,
	"name" varchar(256) NOT NULL,
	"summary" text NOT NULL,
	"stars" integer NOT NULL,
	"health_score" integer NOT NULL,
	"contributor_count" integer NOT NULL,
	"issue_count" integer NOT NULL,
	"difficulty" text NOT NULL,
	"created_at" timestamp
	with
		time zone DEFAULT now () NOT NULL,
		"updated_at" timestamp
	with
		time zone DEFAULT now () NOT NULL
);

CREATE TABLE "skills" (
	"id" serial PRIMARY KEY NOT NULL,
	"name" varchar(256) NOT NULL
);

CREATE TABLE "user_joined_communities" (
	"user_id" integer NOT NULL,
	"community_id" integer NOT NULL,
	CONSTRAINT "user_joined_communities_user_id_community_id_pk" PRIMARY KEY ("user_id", "community_id")
);

CREATE TABLE "user_saved_projects" (
	"user_id" integer NOT NULL,
	"project_id" integer NOT NULL,
	CONSTRAINT "user_saved_projects_user_id_project_id_pk" PRIMARY KEY ("user_id", "project_id")
);

CREATE TABLE "user_skills" (
	"user_id" integer NOT NULL,
	"skill_id" integer NOT NULL,
	"proficiency" integer NOT NULL
);

CREATE TABLE "users" (
	"id" serial PRIMARY KEY NOT NULL,
	"name" varchar(256) NOT NULL,
	"email" varchar(256) NOT NULL,
	"password_hash_value" varchar(256) NOT NULL,
	"created_at" timestamp
	with
		time zone DEFAULT now () NOT NULL,
		"session_token" uuid NOT NULL,
		"session_token_expires" timestamp
	with
		time zone,
		CONSTRAINT "users_session_token_unique" UNIQUE ("session_token")
);

ALTER TABLE "community_projects" ADD CONSTRAINT "community_projects_community_id_communities_id_fk" FOREIGN KEY ("community_id") REFERENCES "public"."communities" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "community_projects" ADD CONSTRAINT "community_projects_project_id_projects_id_fk" FOREIGN KEY ("project_id") REFERENCES "public"."projects" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "issues" ADD CONSTRAINT "issues_author_id_users_id_fk" FOREIGN KEY ("author_id") REFERENCES "public"."users" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "issues" ADD CONSTRAINT "issues_project_id_projects_id_fk" FOREIGN KEY ("project_id") REFERENCES "public"."projects" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "project_skill_requirements" ADD CONSTRAINT "project_skill_requirements_project_id_projects_id_fk" FOREIGN KEY ("project_id") REFERENCES "public"."projects" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "project_skill_requirements" ADD CONSTRAINT "project_skill_requirements_skill_id_skills_id_fk" FOREIGN KEY ("skill_id") REFERENCES "public"."skills" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "user_joined_communities" ADD CONSTRAINT "user_joined_communities_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "user_joined_communities" ADD CONSTRAINT "user_joined_communities_community_id_communities_id_fk" FOREIGN KEY ("community_id") REFERENCES "public"."communities" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "user_saved_projects" ADD CONSTRAINT "user_saved_projects_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "user_saved_projects" ADD CONSTRAINT "user_saved_projects_project_id_projects_id_fk" FOREIGN KEY ("project_id") REFERENCES "public"."projects" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "user_skills" ADD CONSTRAINT "user_skills_user_id_users_id_fk" FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE cascade ON UPDATE no action;

ALTER TABLE "user_skills" ADD CONSTRAINT "user_skills_skill_id_skills_id_fk" FOREIGN KEY ("skill_id") REFERENCES "public"."skills" ("id") ON DELETE cascade ON UPDATE no action;