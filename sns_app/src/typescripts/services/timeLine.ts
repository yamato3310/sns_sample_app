import { baseUrl, defaultHeader } from './client'
import { TimeLineType } from '../domains/home'

export const getTimeLine = async (userId: number) => {
  const queryParams = `${baseUrl}/users/${userId}/timeline`
  const data: TimeLineType[] = await fetch(queryParams, {
    method: 'GET',
    headers: defaultHeader,
  }).then(res => res.json())

  // レスポンスが200かの確認の実装が必要

  return data
}
