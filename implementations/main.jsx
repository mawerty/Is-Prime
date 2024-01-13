import React, { useState } from 'react';
import ReactDOM from 'react-dom';
import './main.css';

ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);

function App() {
  const [isPrime, setIsPrime] = useState(false);

  const handleCheckClick = () => {
    setIsPrime(false);
  };

  const handleResetClick = () => {
    setIsPrime(false);
  };

  return (
    <div>
      <form>
        <input type="text" id="number" placeholder="Number" />
      </form>
      <label htmlFor="check">
        <span id="checkbtn" onClick={handleCheckClick}>
          Check if it's prime
        </span>
      </label>
      <input type="radio" id="check" name="group" />
      <label htmlFor="reset">
        <span id="resetbtn" onClick={handleResetClick}>
          Reset result
        </span>
      </label>
      <input type="radio" id="reset" name="group" />
      <span id="result">{isPrime ? 'True' : 'False'}</span>
    </div>
  );
}

