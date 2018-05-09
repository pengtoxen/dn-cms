import request from '@/utils/request'

export function getDistrict(id = null) {
  if (id) {
    return request({
      url: '/mall/open/district',
      method: 'get',
      params: { id }
    })
  } else {
    return request({
      url: '/mall/open/district',
      method: 'get',
      params: { id }
    })
  }
}
