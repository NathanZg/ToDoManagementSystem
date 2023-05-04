<template>
  <el-menu class="el-menu-demo" mode="horizontal" :ellipsis="false">
    <el-menu-item @click="index" index="0">
      <el-icon>
        <Notification />
      </el-icon>
      <div>待办事项管理系统</div>
    </el-menu-item>
    <div class="flex-grow" />
    <el-menu-item index="1" @click="about">
      <el-icon>
        <InfoFilled />
      </el-icon>
      <div>
        关于
      </div>
    </el-menu-item>
  </el-menu>
</template>

<script lang="ts" setup>
import { useRouter } from 'vue-router'
const router = useRouter()
const index = () => {
  router.push('/')
}
const about = () => {
  router.push('/about')
}
</script>

<style>
.flex-grow {
  flex-grow: 1;
}
</style>
