import * as React from 'react'
import TimeLine from '../components/TimeLine'

interface HomeProps {}

export default class Home extends React.Component<HomeProps> {
  public render() {
    return <TimeLine userId={1} />
  }
}
