import React, { Component } from 'react';
import './App.css';
import NavBar from './Components/NavBar/NavBar';
import IndexView from "./Components/IndexView/IndexView";

class App extends Component {
    constructor() {
        super();
        this.state = {
            visible: "LayersPage"
        }
    }

    render() {
        return (
          <div>
              <NavBar />
              <IndexView />
          </div>
        );
  }
}

export default App;
