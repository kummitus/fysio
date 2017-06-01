
import React, { Component } from 'react';
import Category from "../Category/Category";

import { DropdownItem, ListGroup } from 'reactstrap';

class CategoryList extends Component{
    constructor() {
        super();
        this.state = {
            categories: []
        }
    }

    componentWillMount() {
        fetch('http://localhost:3001/categories.json')
            .then(response => response.json())
            .then(results => {
                console.log(results)
                this.setState({
                    categories: results
                })
            })
    }

    render() {
        return (
            <div>
                <ListGroup>
                    { this.state.categories.map(l => <DropdownItem><Category key={l.id} category={l}/></DropdownItem>) }
                </ListGroup>
            </div>
        )
    }
}

export default CategoryList;