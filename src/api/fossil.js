import request from '@/utils/request'

export function fetchList(query) {
  return request({
    url: 'Admin/Fossil/lists',
    method: 'get',
    params: query
  })
}

export function fetchFossil(query) {
  return request({
    url: 'Admin/Fossil/detail',
    method: 'get',
    params: query
  })
}

export function createFossil(data) {
  return request({
    url: 'Admin/Fossil/operate',
    method: 'post',
    data
  })
}

export function updateFossil(data) {
  return request({
    url: 'Admin/Fossil/operate',
    method: 'post',
    data
  })
}

export function deleteFossil(data) {
  return request({
    url: 'Admin/Fossil/delete',
    method: 'post',
    data
  })
}

export function switcher(data) {
  return request({
    url: 'Admin/Fossil/switcher',
    method: 'post',
    data
  })
}
