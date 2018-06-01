import request from '@/utils/request'

export function loginByUsername(username, password) {
  const data = {
    username,
    password
  }
  return request({
    url: 'Admin/Login/login',
    method: 'post',
    data
  })
}

export function getUserInfo(token) {
  return request({
    url: 'Admin/User/info',
    method: 'post'
  })
}

