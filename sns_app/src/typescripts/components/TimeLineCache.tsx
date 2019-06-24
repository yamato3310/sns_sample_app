import * as React from 'react'
import { TimeLine } from '../components/TimeLine'

interface Props {
  userId: number
}

export const TimeLineCache = (props: Props) => {
  const cache = React.useRef(undefined)

  return <TimeLine cache={cache} userId={props.userId} />
}
