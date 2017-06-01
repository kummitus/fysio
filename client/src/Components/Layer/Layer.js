
import React, { Component } from 'react';
import { ListGroupItem,
         ButtonDropdown,
         DropdownToggle,
         DropdownMenu,
         DropdownItem
} from 'reactstrap';
import CategoryList from "../CategoryList/CategoryList";

class Layer extends Component {

    constructor(props) {
        super(props);
        this.toggle = this.toggle.bind(this);
        this.state = {
            dropdownOpen: false
        };
    }

    toggle() {
        this.setState({
            dropdownOpen: !this.state.dropdownOpen
        });
    }

    render(){
        return (
            <ListGroupItem id={this.props.layer.id}>
                <ButtonDropdown isOpen={this.state.dropdownOpen} toggle={this.toggle}>
                    <DropdownToggle caret>
                    {this.props.layer.name}
                    </DropdownToggle>
                    <DropdownMenu>
                        <CategoryList/>
                    </DropdownMenu>
                </ButtonDropdown>
            </ListGroupItem>
        );
    }
}

export default Layer;