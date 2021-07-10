import axios from "axios";
import React, { useEffect, useState } from "react";
import styled from "styled-components";
//import PropTypes from "prop-types";
import Card from "../atoms/Card";

const Grid = styled.div`
  display: grid;
  grid-column-gap: 16px;
  grid-row-gap: 16px;
  justify-content: center;
  justify-items: center;
  grid-template-columns: repeat(auto-fit, ${props => props.widthItem}px);
  max-width: 1500px;
  margin: 0 auto;

` 
const CardGrid = ({ widthItem }) => {

  const [summary, setSummary] = useState([])

  useEffect(() => {
    axios.get('/api/v1/facts')
    .then(response => setSummary(response.data.data) )
    .catch(response => console.log(response))
  }, [])

  const cards = summary.map(item => {
    return (
      <Card 
        title={item.attributes.title}
        image={item.attributes.imageurl}
      />
    )
  })


  return (
    <Grid widthItem={widthItem}>
      {cards}
    </Grid>
  )
};

// CardGrid.defaultProps = {
  
// };

// CardGrid.propTypes = {
  
// };

export default CardGrid;