import React from "react"
import { BrowserRouter as Router, Switch, Route } from "react-router-dom"
import CardGrid from "./organisms/CardGrid";

const App = () => (
  <Router>
    <Switch>
      <Route path="/" component={CardGrid} />
    </Switch>
  </Router>
);


export default App;