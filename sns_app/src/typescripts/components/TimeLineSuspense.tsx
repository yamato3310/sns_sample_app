import * as React from 'react'
import { getTimeLine } from '../services/timeLine'
import { TimeLineType } from '../domains/home'
import TimeLine from '../components/TimeLine'

interface Props {
  userId: number
}

export const TimeLineSuspense = async (props: Props) => {
  let timeline = await getTimeLine(props.userId)
  console.log(timeline)
  console.log('timeline')

  return (
    <div>
      <TimeLine timeLine={timeline} />
    </div>
  )
}
