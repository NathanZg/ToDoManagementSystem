<template>
    <button @click="g">get</button>
    <button @click="a">add</button>
    <button @click="d">del</button>
    <button @click="u">update</button>
</template>
<script setup lang="ts">
import {add, del, list, update} from "@/api/todo"

var queryVo = {
    itemId:null,
    itemTitle:null,
    startDate:null,
    endDate:null,
    completionFlag:null,
    current:null,
    size:null
}

var toDoItem = {
    itemId:514,
    itemTitle:"test1",
    itemDescription:"test2",
    creationDate:new Date(),
    dueDate:new Date(),
    completionFlag:"0"
}
function g() {
    list(queryVo).then((res) => {
        console.log(res.data)
    })
}
function d() {
    del("514").then((res) => {
        console.log(res.data)
    })
}
function a() {
    add(toDoItem).then((res) => {
        console.log(res.data)
    })
}
function u() {
    update(toDoItem).then((res) => {
        console.log(res.data)
    })
}
</script>
