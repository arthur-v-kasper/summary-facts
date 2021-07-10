import React from "react"
import { BrowserRouter as Router, Switch, Route } from "react-router-dom"
import CardGrid from "./organisms/CardGrid";
import GlobalStyleComponet from "../style/Globalstyle";
import Navbar from "./atoms/Navbar";

const App = () => (
  <>
    <GlobalStyleComponet />
    <Navbar />
    <Router>
      <Switch>
        <Route path="/" render={() => <CardGrid widthItem="400" />}  />
      </Switch>
    </Router>
  </>
);


export default App;