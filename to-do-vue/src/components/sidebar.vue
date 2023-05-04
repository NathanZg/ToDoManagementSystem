<template>
    <el-menu
      default-active="2"
      class="el-menu-vertical-demo"
      :router="true"
    >
    <el-menu-item index="/">
        <el-icon><icon-menu /></el-icon>
        <template #title>首页</template>
      </el-menu-item>
      <el-menu-item index="/list">
        <el-icon><icon-menu /></el-icon>
        <template #title>待办事项列表</template>
      </el-menu-item>
      <el-menu-item index="/add">
        <el-icon><document /></el-icon>
        <template #title>添加</template>
      </el-menu-item>
    </el-menu>
  </template>

  <script lang="ts" setup>
  import {Document, Menu as IconMenu,} from '@element-plus/icons-vue'</script>

  <style>
  .el-menu-vertical-demo:not(.el-menu--collapse) {
    width: 200px;
    min-height: 400px;
  }
  </style>
