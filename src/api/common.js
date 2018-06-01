import request from '@/utils/request'

export function fossilClassification(data) {
  return request({
    url: 'Admin/Open/fClassification',
    method: 'post',
    data
  })
}

export function geoAge(data) {
  return request({
    url: 'Admin/Open/geoAge',
    method: 'post',
    data
  })
}

export function location(data) {
  return request({
    url: 'Admin/Open/location',
    method: 'post',
    data
  })
}

