import * as React from 'react'
import { TimeLineType } from '../domains/home'
import { getTimeLine } from '../services/timeLine'

interface Props {
  userId: number
}

interface States {
  timeLine?: TimeLineType[]
}

export default class TimeLine extends React.Component<Props, States> {
  public constructor(props: Props) {
    super(props)
    this.state = {
      timeLine: undefined,
    }
  }

  public async componentDidMount() {
    const timeLine = await getTimeLine(this.props.userId)
    this.setState({ timeLine })
  }

  public render() {
    if (this.state.timeLine === undefined) return null

    return (
      <div>
        <div>{this.state.timeLine[0].tweet}</div>
      </div>
    )
  }
}
