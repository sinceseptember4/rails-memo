import React from 'react'
import { Switch, Route, Link } from 'react-router-dom'
import Create from './new'
import Destroy from './destroy'
import Edit from './edit'

function App() {
    return (
      <>

            <Link to="/memos/new">
              Add New Todo
            </Link>

            <Link to="/memos/edit">
              Edit New Todo
            </Link>

            <Link to="/memos/destroy">
              Add New Todo
            </Link>

        <Switch>
          <Route path="/memos/edit" component={Edit} />
          <Route path="/memos/new" component={Create} />
          <Route path="/memos/destroy" component={Destroy} />
        </Switch>

      </>
    )
  }
  
  export default App