import React, { Component } from 'react';

import {
    Collapse,
    Navbar,
    NavbarToggler,
    NavbarBrand,
    Nav,
    NavItem,
    NavLink,
    Container
} from 'reactstrap';

class App extends Component {
  render() {
    return (
      <div>
       <h1>FysioRepo</h1>
      </div>
    );
  }
}

class Header extends React.Component {
    render() {
        return (
            <Navbar color="faded" light>
                <NavbarBrand href="/">physiorepo</NavbarBrand>
            </Navbar>
        )
    }
}

export default App;
