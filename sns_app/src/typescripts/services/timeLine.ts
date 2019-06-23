import { baseUrl, defaultHeader } from './client'
import { TimeLineType } from '../domains/home'
import { async } from 'q'

// export const getTimeLine = async (userId: number) => {
//   const queryParams = `${baseUrl}/users/${userId}/timeline`
//   const data: TimeLineType[] = await fetch(queryParams, {
//     method: 'GET',
//     headers: defaultHeader,
//   }).then(res => res.json())

//   // レスポンスが200かの確認の実装が必要

//   return data
// }

export const getTimeLine = async (userId: number) => {
  const queryParams = `${baseUrl}/users/${userId}/timeline`
  return await fetch(queryParams, {
    method: 'GET',
    headers: defaultHeader,
  }).then(res => res.json())
  // .then(res => Promise.resolve(res))
}
