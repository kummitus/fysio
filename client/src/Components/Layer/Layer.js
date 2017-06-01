
import React, { Component } from 'react';
import { ListGroupItem } from 'reactstrap';

class Layer extends Component{
    constructor(props){
        super();
        this.props = props;

    }
    render(){
        return (
            <ListGroupItem id={this.props.layer.id}>
                {this.props.layer.name}
            </ListGroupItem>
        );
    }
}

export default Layer;