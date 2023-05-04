<template>
    <el-divider>
        <el-button type="primary" style="margin-left: 16px" @click="deleteSelectToDoItem">
            删除选中待办事项
        </el-button>
        <el-button type="primary" style="margin-left: 16px" @click="drawer = true">
            条件查询
        </el-button>
    </el-divider>
    <el-table :data="pageVo.records" @selection-change="handleSelectionChange" v-loading="loading" :border="true"
        max-height="450px" style="width: 100%">
        <el-table-column type="selection" width="55" />
        <el-table-column label="id" prop="itemId" width="100">
        </el-table-column>
        <el-table-column label="标题" prop="itemTitle" width="180">
        </el-table-column>
        <el-table-column label="描述" prop="itemDescription" width="300">
        </el-table-column>
        <el-table-column label="创建日期" prop="creationDate" :formatter="timeFormatter" width="165">
        </el-table-column>
        <el-table-column label="过期日期" prop="dueDate" :formatter="timeFormatter" width="165">
        </el-table-column>
        <el-table-column label="完成情况" width="165" v-slot="scope">
            <el-text class="mx-1" v-if="scope.row.completionFlag == 0">未完成</el-text>
            <el-text class="mx-1" v-else="scope.row.completionFlag == 1">已完成</el-text>
        </el-table-column>
        <el-table-column label="Operations" width="150" v-slot="scope">
            <el-button size="small" @click="handleEdit(scope.row)">更新</el-button>
            <el-button size="small" type="danger" @click="handleDelete(scope.row.itemId)">删除</el-button>
        </el-table-column>
    </el-table>
    <el-divider />
    <el-pagination background layout="prev, pager, next" @prev-click="prevClick" @next-click="nextClick"
        @current-change="currentChange" :total="pageVo.total" :page-count="pageVo.pages" />
    <el-drawer v-model="drawer" :direction="'rtl'" size="50%">
        <template #header>
            <h4>查询条件</h4>
        </template>
        <template #default>
            <el-form :inline="true" class="demo-form-inline">
                <el-form-item label="id">
                    <el-input-number v-model="queryVo.itemId" class="mx-4" placeholder="待办事项的id" :min="1" :max="10"
                        controls-position="right" />
                </el-form-item>
                <el-form-item label="标题">
                    <el-input v-model="queryVo.itemTitle" placeholder="待办事项标题" clearable />
                </el-form-item>
                <el-form-item label="描述">
                    <el-input v-model="queryVo.itemDescription" :rows="2" type="textarea" placeholder="待办事项的描述" clearable />
                </el-form-item>
                <el-form-item label="开始时间">
                    <el-date-picker v-model="queryVo.startDate" type="datetime" placeholder="Select date and time" />
                </el-form-item>
                <el-form-item label="结束时间">
                    <el-date-picker v-model="queryVo.endDate" type="datetime" placeholder="Select date and time" />
                </el-form-item>
                <el-form-item label="待办事项完成情况">
                    <el-select v-model="queryVo.completionFlag" placeholder="待办事项完成情况">
                        <el-option label="未完成" value="0" />
                        <el-option label="完成" value="1" />
                        <el-option label="所有" value="null" />
                    </el-select>
                </el-form-item>
                <el-form-item>
                    <el-button type="danger" @click="clearCondition">清空条件</el-button>
                </el-form-item>
            </el-form>
        </template>
        <template #footer>
            <div style="flex: auto">
                <el-button @click="cancelClick">取消</el-button>
                <el-button type="primary" @click="conditionQuery">查询</el-button>
            </div>
        </template>
    </el-drawer>
    <el-drawer v-model="drawer2" :direction="'rtl'" size="50%">
        <template #header>
            <h4>更新</h4>
        </template>
        <template #default>
            <el-form :inline="true" class="demo-form-inline">
                <el-form-item label="id">
                    <el-input-number :disabled="true" v-model="toDoItem.itemId" class="mx-4" placeholder="待办事项的id"
                        controls-position="right" />
                </el-form-item>
                <el-form-item label="标题">
                    <el-input v-model="toDoItem.itemTitle" placeholder="待办事项标题" clearable />
                </el-form-item>
                <el-form-item label="描述">
                    <el-input v-model="toDoItem.itemDescription" :rows="2" type="textarea" placeholder="待办事项的描述"
                        clearable />
                </el-form-item>
                <el-form-item label="开始时间">
                    <el-date-picker v-model="toDoItem.creationDate" type="datetime" placeholder="Select date and time" />
                </el-form-item>
                <el-form-item label="结束时间">
                    <el-date-picker v-model="toDoItem.dueDate" type="datetime" placeholder="Select date and time" />
                </el-form-item>
                <el-form-item label="待办事项完成情况">
                    <el-select v-model="toDoItem.completionFlag" placeholder="待办事项完成情况">
                        <el-option label="未完成" value="0" />
                        <el-option label="完成" value="1" />
                    </el-select>
                </el-form-item>
            </el-form>
        </template>
        <template #footer>
            <div style="flex: auto">
                <el-button @click="cancelClick2">取消</el-button>
                <el-button type="primary" @click="updateToDoItem">更新</el-button>
            </div>
        </template>
    </el-drawer>
</template>

<script lang="ts" setup>
import {del, list, update} from '@/api/todo'
import moment from 'moment'
import {onMounted, reactive, ref} from 'vue'
import {ElNotification} from 'element-plus'
// 编辑待办事项函数
const handleEdit = (row: any) => {
    toDoItem.itemId = row.itemId
    toDoItem.itemTitle = row.itemTitle
    toDoItem.itemDescription = row.itemDescription
    toDoItem.creationDate = row.creationDate
    toDoItem.dueDate = row.dueDate
    toDoItem.completionFlag = row.completionFlag + ''
    drawer2.value = true
}
// 删除待办事项函数
const handleDelete = (itemId: any) => {
    delToDoItem(itemId)
}
// 查询条件
const queryVo = reactive({
    itemId: null,
    itemTitle: null,
    itemDescription: null,
    startDate: null,
    endDate: null,
    completionFlag: null,
    current: null,
    size: null
})
// 待办事项
const toDoItem = reactive({
    itemId: null,
    itemTitle: null,
    itemDescription: null,
    creationDate: null,
    dueDate: null,
    completionFlag: null,
})
// 分页查询结果
const pageVo = reactive({
    records: [],
    total: 0,
    size: 5,
    current: 1,
    pages: 0
})

// 时间格式化
const timeFormatter = (row: any, column: any) => {
    var time = row[column.property]
    return moment(time).format('yyyy-MM-DD HH:mm:ss')
}
// 控制加载动画显示
const loading = ref(false)
// 分页查询待办事项
const listToDoItem = (queryVo: object) => {
    loading.value = true;
    list(queryVo).then((res) => {
        var data = res.data.data
        pageVo.records = data.records
        pageVo.total = data.total
        pageVo.size = data.size
        pageVo.current = data.current
        pageVo.pages = data.pages
        loading.value = false
    }).catch((error) => {
        console.log(error)
        ElNotification.error({
            title: 'error',
            message: error,
            offset: 100
        })
    })
}
// 删除一个待办事项
const delToDoItem = (itemId: any) => {
    del(itemId).then((res) => {
        var data = res.data
        if (data.code == 200) {
            ElNotification.success({
                title: 'success',
                message: '删除成功！',
                offset: 100
            })
            listToDoItem(queryVo)
        } else {
            ElNotification.error({
                title: 'error',
                message: data.msg,
                offset: 100
            })
        }
    }).catch((error) => {
        console.log(error)
        ElNotification.error({
            title: 'error',
            message: error,
            offset: 100
        })
    })
}
// 前一页
const prevClick = (value: any) => {
    queryVo.current = value
    listToDoItem(queryVo)
}
// 后一页
const nextClick = (value: any) => {
    queryVo.current = value
    listToDoItem(queryVo)
}

// 跳转页码
const currentChange = (value: any) => {
    queryVo.current = value
    listToDoItem(queryVo)
}
// 抽屉（查询条件）显示控制
const drawer = ref(false)
// 抽屉（查询条件）页面展开取消
const cancelClick = () => {
    drawer.value = false
}
// 抽屉（更新）显示控制
const drawer2 = ref(false)
// 抽屉（查询条件）页面展开取消
const cancelClick2 = () => {
    drawer2.value = false
}
// 条件查询
const conditionQuery = () => {
    drawer.value = false
    listToDoItem(queryVo)
}
// 清空所有条件
const clearCondition = () => {
    queryVo.itemId = null
    queryVo.itemTitle = null
    queryVo.itemDescription = null
    queryVo.startDate = null
    queryVo.endDate = null
    queryVo.current = null
    queryVo.completionFlag = null
}
const ids = ref('')
// 获取所有选中的的行的 id
const handleSelectionChange = (arr: any) => {
    ids.value = ''
    for (var i = 0; i < arr.length; i++) {
        if (i != 0) {
            ids.value = ids.value + ',' + arr[i].itemId
        } else {
            ids.value += arr[i].itemId
        }
    }
}
// 删除选中行
const deleteSelectToDoItem = () => {
    if (ids.value == '') {
        ElNotification.info({
            title: 'info',
            message: '请先勾选要删除的待办事项！',
            offset: 100
        })
        return
    }
    del(ids.value).then((res) => {
        var data = res.data
        if (data.code == 200) {
            drawer2.value = false
            ElNotification.success({
                title: 'success',
                message: '删除成功！',
                offset: 100
            })
            listToDoItem(queryVo)
        } else {
            ElNotification.error({
                title: 'error',
                message: data.msg,
                offset: 100
            })
        }
    }).catch((error) => {
        console.log(error)
        ElNotification.error({
            title: 'error',
            message: error,
            offset: 100
        })
    })
}
// 更新ToDoItem
const updateToDoItem = () => {
    update(toDoItem).then((res) => {
        var data = res.data
        if (data.code == 200) {
            drawer2.value = false
            ElNotification.success({
                title: 'success',
                message: '更新成功！',
                offset: 100
            })
            listToDoItem(queryVo)
        } else {
            ElNotification.error({
                title: 'error',
                message: data.msg,
                offset: 100
            })
        }
    }).catch((error) => {
        console.log(error)
        ElNotification.error({
            title: 'error',
            message: error,
            offset: 100
        })
    })
}

onMounted(() => {
    listToDoItem(queryVo)
})
</script>
