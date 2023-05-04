<template>
    <div class="common-layout">
        <el-container>
            <el-header>
                <PageHeader/>
            </el-header>
            <el-container>
                <el-aside width="200px">
                    <Sidebar/>
                </el-aside>
                <el-main>
                    <RouterView/>
                </el-main>
            </el-container>
        </el-container>
    </div>
</template>
<script setup lang="ts">
import Sidebar from '@/components/sidebar.vue';
import PageHeader from '@/components/header.vue';</script>
