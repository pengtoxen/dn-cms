import request from '@/utils/request'

export function edit(data) {
  return request({
    url: 'Admin/User/edit',
    method: 'post',
    data
  })
}

export function logout() {
  return request({
    url: 'Admin/User/logout',
    method: 'post'
  })
}
