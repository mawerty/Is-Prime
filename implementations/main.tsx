import React from 'react';
import ReactDOM from 'react-dom';

const [isPrime, setIsPrime] = React.useState<boolean>(false);

const checkClick = (e: React.MouseEvent<HTMLSpanElement, MouseEvent>) => {
    setIsPrime(false);
}

const resetClick = (e: React.MouseEvent<HTMLSpanElement, MouseEvent>) => {
    setIsPrime(false);
}

ReactDOM.render(
  <>
    <input id="n" title="d" />
    <span id="c" onClick={() => {() => checkClick}} />
    <span id="re" onClick={() => {() => resetClick}} />
    <input type="radio" id="ra" title="d" />
    <span id="s">{isPrime ? 'True' : 'False'}</span>
  </>,
  document.getElementById('root')
);