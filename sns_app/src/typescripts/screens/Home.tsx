import * as React from 'react'
// import { TimeLineSuspense } from '../components/TimeLineSuspense'

interface HomeProps {}

const TimeLineSuspense = React.lazy(() =>
  import('../components/TimeLineSuspense')
)

export default class Home extends React.Component<HomeProps> {
  public render() {
    return (
      <React.Suspense fallback={<div>now lod</div>}>
        <TimeLineSuspense userId={1} />
      </React.Suspense>
    )
  }
}
