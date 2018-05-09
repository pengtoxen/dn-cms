import request from '@/utils/request'

export function loginByUsername(username, password) {
  const data = {
    username,
    password
  }
  return request({
    url: 'admin/login/login',
    method: 'post',
    data
  })
}

export function getUserInfo(token) {
  return request({
    url: 'admin/user/info',
    method: 'post'
  })
}

