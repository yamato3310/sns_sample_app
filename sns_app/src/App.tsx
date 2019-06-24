import React from 'react'
import { BrowserRouter as Router, Route } from 'react-router-dom'
import { Home } from '../src/typescripts/screens/Home'

const App = () => (
  <Router>
    <Route exact path="/" component={Home} />
    <Route path="/about" component={About} />
    <Route path="/friends" component={Friends} />
  </Router>
)

const About = () => (
  <div>
    <h2>About</h2>
    <p>フレンズに投票するページです</p>
  </div>
)
const Friends = () => (
  <div>
    <h2>Friends</h2>
    <p>ここにフレンズのリストを書きます</p>
  </div>
)

export default App
