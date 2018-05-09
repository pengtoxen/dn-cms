import request from '@/utils/request'

export function fetchList(query) {
  return request({
    url: 'admin/fossil/lists',
    method: 'get',
    params: query
  })
}

export function fetchFossil(query) {
  return request({
    url: 'admin/fossil/detail',
    method: 'get',
    params: query
  })
}

export function createFossil(data) {
  return request({
    url: 'admin/fossil/operate',
    method: 'post',
    data
  })
}

export function updateFossil(data) {
  return request({
    url: 'admin/fossil/operate',
    method: 'post',
    data
  })
}

export function deleteFossil(data) {
  return request({
    url: 'admin/fossil/delete',
    method: 'post',
    data
  })
}

export function switcher(data) {
  return request({
    url: 'admin/fossil/switcher',
    method: 'post',
    data
  })
}
