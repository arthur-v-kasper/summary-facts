import React from "react";
import styled from "styled-components";
//import PropTypes from "prop-types";
import Card from "../atoms/Card";

const Grid = styled.div`
  display: grid;
  grid-column-gap: 16px;
  grid-row-gap: 16px;
  justify-content: center;
  justify-items: center;
  grid-template-columns: repeat(auto-fit, 400px);

` 


const CardGrid = () => (
  <Grid>
    <Card />
    <Card />
    <Card />
    <Card />
    <Card />
    <Card />
  </Grid>
);

// CardGrid.defaultProps = {
  
// };

// CardGrid.propTypes = {
  
// };

export default CardGrid;