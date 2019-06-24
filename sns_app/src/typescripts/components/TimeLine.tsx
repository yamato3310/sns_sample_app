import * as React from 'react'
import { TimeLineType } from '../domains/home'
import { getTimeLine } from '../services/timeLine'
import { Tweet } from './Tweet'
import { resolve } from 'dns'

interface Props {
  userId: number
  cache?: TimeLineType[]
}

export const TimeLine = (props: Props) => {
  const cache: any = React.useRef(false)

  const createTweet = (timeLine: TimeLineType[]) => {
    return timeLine.map(tweet => <Tweet tweet={tweet} />)
  }

  if (cache.current == false) {
    throw getTimeLine(props.userId)
      .then(res => (cache.current = res))
      .then(res => Promise.resolve())
  }

  return <div>{createTweet(cache.current)}</div>
}
