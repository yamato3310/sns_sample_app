import * as React from 'react'
import { TimeLine } from '../components/TimeLine'
import { async } from 'q'

interface HomeProps {}

export const Home = () => {
  return (
    <React.Suspense fallback={<div>なう　ろーでぃんぐ</div>}>
      <TimeLine userId={1} />
    </React.Suspense>
  )
}
