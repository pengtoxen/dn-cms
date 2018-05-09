import request from '@/utils/request'

export function edit(data) {
  return request({
    url: 'admin/user/edit',
    method: 'post',
    data
  })
}

export function logout() {
  return request({
    url: 'admin/user/logout',
    method: 'post'
  })
}
