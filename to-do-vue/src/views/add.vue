<template>
    <el-form :model="toDoItem" label-width="120px">
        <el-form-item label="标题">
            <el-input v-model="toDoItem.itemTitle" />
        </el-form-item>
        <el-form-item label="描述">
            <el-input v-model="toDoItem.itemDescription" type="textarea" />
        </el-form-item>
        <el-form-item label="开始时间">
            <el-date-picker v-model="toDoItem.creationDate" type="datetime" placeholder="Select date and time" />
        </el-form-item>
        <el-form-item label="结束时间">
            <el-date-picker v-model="toDoItem.dueDate" type="datetime" placeholder="Select date and time" />
        </el-form-item>
        <el-form-item>
            <el-button type="primary" @click="onSubmit">Create</el-button>
            <el-button>Cancel</el-button>
        </el-form-item>
    </el-form>
</template>

<script lang="ts" setup>
import {reactive} from 'vue'
import {add} from '@/api/todo'
import {ElNotification} from 'element-plus'
import {useRouter} from 'vue-router'

const router = useRouter();
const toDoItem = reactive({
    itemId: null,
    itemTitle: null,
    itemDescription: null,
    creationDate: null,
    dueDate: null,
    completionFlag: 0,
})

const clearToDoItem = () => {
    toDoItem.itemId = null,
    toDoItem.itemTitle = null,
    toDoItem.itemDescription = null,
    toDoItem.creationDate = null,
    toDoItem.dueDate = null,
    toDoItem.completionFlag = 0
}

const onSubmit = () => {
    add(toDoItem).then((res) => {
        var data = res.data
        if (data.code == 200) {
            ElNotification.success({
                title: 'success',
                message: '添加成功！',
                offset: 100
            })
            router.push('/list');
        } else {
            ElNotification.error({
                title: 'error',
                message: data.msg,
                offset: 100
            })
        }
        clearToDoItem()
    }).catch((error) => {
        console.log(error)
        ElNotification.error({
            title: 'error',
            message: error,
            offset: 100
        })
        clearToDoItem()
    })
}
</script>
