import request from '@/utils/request'

export function fossilClassification(data) {
  return request({
    url: 'admin/open/fClassification',
    method: 'post',
    data
  })
}

export function geoAge(data) {
  return request({
    url: 'admin/open/geoAge',
    method: 'post',
    data
  })
}

export function location(data) {
  return request({
    url: 'admin/open/location',
    method: 'post',
    data
  })
}

