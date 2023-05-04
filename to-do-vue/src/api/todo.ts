import httpService from "@/request/axios";

export function index() {
    return httpService({
        url: '/index',
        method: 'get'
    })
}

export function list(queryVo: any) {
    return httpService({
        url: '/list',
        method: 'post',
        data: queryVo
    })
}

export function add(toDoItem: any) {
    return httpService({
        url: '/add',
        method: 'post',
        data: toDoItem
    })
}

export function del(ids: any) {
    return httpService({
        url: '/delete',
        method: 'delete',
        headers: {
            'Content-Type': 'text/plain'
        },
        data: ids
    })
}

export function update(toDoItem: any) {
    return httpService({
        url: '/update',
        method: 'post',
        data: toDoItem
    })
}
