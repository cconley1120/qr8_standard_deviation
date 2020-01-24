    // src/App.js

    import React, { Component } from 'react';
    import StandardDeviations from './components/standard_deviations';

    class App extends Component {
      state = {
        standard_deviations: []
      }

      componentDidMount() {
        fetch('/standard_deviations')
        .then(res => res.json())
        .then((data) => {
          this.setState({ standard_deviations: data })
        })
        .catch(console.log)
      }

      render() {
        return (
          <StandardDeviations standard_deviations={this.state.standard_deviations} />
        );
      }
    }

    export default App;