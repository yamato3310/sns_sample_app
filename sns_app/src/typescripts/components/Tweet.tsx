import * as React from 'react'
import { TimeLineType } from '../domains/home'

interface Props {
  tweet: TimeLineType
}

export const Tweet = (props: Props) => {
  return (
    <div>
      <div>{props.tweet.tweet}</div>
    </div>
  )
}
