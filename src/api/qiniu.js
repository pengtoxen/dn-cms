import request from '@/utils/request'
import axios from 'axios'

export function getToken() {
  return request({
    url: '/admin/upload/token',
    method: 'get'
  })
}

export function upload(action, param, config) {
  return axios.post(action, param, config)
}
