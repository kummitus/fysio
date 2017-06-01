
import React, { Component } from 'react';
import Layer from "../../Components/Layer/Layer";
import { ListGroup } from 'reactstrap';


class LayerList extends Component {
    constructor() {
        super();
        this.state = {
            layers: []
        }
    }

    componentWillMount() {
        fetch('http://localhost:3001/layers.json')
            .then(response => response.json())
            .then(results => {
                console.log(results)
                this.setState({
                    layers: results
                })
            })
    }

    render() {
        return (
            <div>
                <ListGroup>
                    { this.state.layers.map(l => <Layer key={l.id} layer={l}/>) }
                </ListGroup>
            </div>
        );
    }
}

export default LayerList;