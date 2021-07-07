import React from "react";
// import PropTypes from "prop-types";
import styled from 'styled-components';

const Container = styled.div`
  border: 2px solid #2a441d;
  border-radius: 4px;
  width: 100%;  
`
const Image = styled.div`
  width: 100%;
  background-image: url(${props => props.image});
  min-height: 250px;
  background-size: cover;
  background-position: center center;
`
const Body = styled.div`
  padding: 0 10px 10px 10px;
`

const Titulo = styled.h2`
  margin: 10px 0 10px 0;
`
const KeywordsWrapper = styled.div`
  display: flex;
`
const KeywordsList = styled.ul`
  display: flex;
  padding: 0;
`
const Keyword = styled.li`
  list-style: none;
  color: #a9a9a9;
  margin-right: 10px;
`

const Button = styled.button`
  padding: 6px 12px;
  cursor: pointer;
  background-color: #2a441d;
  border: 2px solid #2a441d;
  color: #fff;
  text-decoration: none;
  border-radius: 4px;
`

const ButtonWrapperButton = styled.div`
  display: flex;
  justify-content: flex-end;
`


const Card = () => (
  <Container>
    <Image image="https://cdn.artandlogic.com/wp-content/uploads/graphQl.png" />
    <Body>
      <Titulo>Meu titulo super chamativo!!</Titulo>      
      <KeywordsWrapper>
        <KeywordsList>
          <Keyword>#javascript</Keyword>
          <Keyword>#query</Keyword>
          <Keyword>#query</Keyword>
        </KeywordsList>
      </KeywordsWrapper>
      <ButtonWrapperButton>
        <Button> View Summary </Button>
      </ButtonWrapperButton>
    </Body>    
  </Container>
);

// Card.defaultProps = {
  
// };

// Card.propTypes = {
  
// };

export default Card;