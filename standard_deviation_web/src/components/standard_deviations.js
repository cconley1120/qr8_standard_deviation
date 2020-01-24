import React from 'react'

const StandardDeviations = ({ standard_deviations }) => {
  return (
    <div>
      <center><h1>Standard Deviation Results</h1></center>


      <table class="table table-striped">
        <thead>
          <tr>
            <th scope="col">Values</th>
            <th scope="col">Result</th>
            <th scope="col">Date</th>
          </tr>
        </thead>
        <tbody>
      {standard_deviations.map((standard_deviation) => (
          <tr>
            <td>{standard_deviation.values}</td>
            <td>{standard_deviation.result}</td>
            <td>{standard_deviation.created_at}</td>
          </tr>     
      ))}
        </tbody>
      </table>      
    </div>
  )
};

export default StandardDeviations