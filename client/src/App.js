import React, { Component } from 'react';
import './App.css';
import { Button,
        ListGroup,
        ListGroupItem} from 'reactstrap';

class App extends Component {
    constructor() {
        super();
        this.state = {
            visible: "LayersPage",
            layers: []
        }
    }

    componentWillMount() {
        fetch('http://localhost:3001/layers.json')
            .then( response => response.json() )
            .then( results => {
                console.log(results)
                this.setState({
                    layers: results
                })
            })
    }

    render() {
        const Layer = (props) =>
            <ListGroupItem>
                {props.layer.name}
            </ListGroupItem>
    return (
      <div>
        <ListGroup>
            { this.state.layers.map(l => <Layer key={l.id} layer={l}/>) }
            <Button color="danger">Danger</Button>
        </ListGroup>
      </div>
    );
  }
}

export default App;
