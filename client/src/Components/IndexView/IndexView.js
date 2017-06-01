
import React, { Component } from 'react';
import LayerList from "../LayerList/LayerList";
import PublicationTable from "../PublicationTable/PublicationTable";

class IndexView extends Component{
    render(){
        return (
            <table>
                <tr>
                    <td>
                        <LayerList />
                    </td>
                    <td>
                        <PublicationTable />
                    </td>
                </tr>
            </table>
        );
    }
}

export default IndexView;