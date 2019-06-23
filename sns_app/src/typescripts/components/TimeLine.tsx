import * as React from 'react'
import { TimeLineType } from '../domains/home'
import { getTimeLine } from '../services/timeLine'
import { Tweet } from '../components/Tweet'

interface Props {
  timeLine: TimeLineType[]
}

export default class TimeLine extends React.Component<Props> {
  public constructor(props: Props) {
    super(props)
    this.state = {
      timeLine: undefined,
    }
  }

  render() {
    const tweets = this.props.timeLine.map(tweet => <Tweet tweet={tweet} />)
    return { tweets }
  }

  // public async componentDidMount() {
  //   const timeLine = await getTimeLine(this.props.userId)
  //   this.setState({ timeLine })
  // }

  // public render() {
  //   if (this.state.timeLine === undefined) return null

  //   const tweets = this.tweetList(this.state.timeLine)
  //   return <div>{tweets}</div>
  // }

  // private tweetList = (timeLine: TimeLineType[]) => {
  //   const tweets:  = []
  //   timeLine.forEach(tweet => {
  //     tweets.push(<Tweet tweet={tweet} />)
  //   })

  //   return tweets
  // }
}
