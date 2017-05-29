import React, { Component } from 'react';
import './App.css';
import {
    Collapse,
    Navbar,
    NavbarToggler,
    NavbarBrand,
    Nav,
    NavItem,
    NavLink,
    Container,
    Row,
    Col
} from 'reactstrap';

class App extends Component {
  render() {
    return (
      <div>
        <Header />
        <TopLevelGrid />
      </div>
    );
  }
}

class Header extends React.Component {
    render(){
        return (
            <Navbar color="faded" light toggleable>
                <NavbarToggler/>
                <NavbarBrand href="#">physiorepo</NavbarBrand>
                <Collapse navbar>
                    <Nav className="ml-auto" navbar>
                        <NavItem>
                            <NavLink href="#">Home</NavLink>
                        </NavItem>
                        <NavItem>
                            <NavLink href="#">Login</NavLink>
                        </NavItem>
                        <NavItem>
                            <NavLink href="#">Register</NavLink>
                        </NavItem>
                    </Nav>
                </Collapse>
            </Navbar>
        )
    }
}

class TopLevelGrid extends React.Component {
    render(){
        return (
        <Container>
            <Row>
                <Col>Layer</Col>
                <Col>Publication</Col>
            </Row>
        </Container>
        )
    }
}

export default App;
