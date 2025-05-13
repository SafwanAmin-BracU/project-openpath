<script lang="ts">
  export type SkillType = {
    title: string;
    percentage: number;
  };
  let { skill }: { skill: SkillType } = $props();
</script>

<div class="flex flex-col gap-1">
  <div class="flex justify-between items-center">
    <span class="text-sm font-medium">{skill.title}</span>
    <span class="text-sm font-medium">{skill.percentage}</span>
  </div>
  <div class="overflow-hidden w-full h-2 rounded-full bg-muted border border-gray-300">
    <div
      class="h-full bg-emerald-600"
      style="width: {skill.percentage}%"
    ></div>
  </div>
</div>
