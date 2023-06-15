import { useState } from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState(0);
  const changeTitleColor = count === 5 ? 'blue' : '';
  return (
    <>
      <h1 style={{ color: `${changeTitleColor}` }}>Vite + React</h1>
      <div className="card">
        <button onClick={() => setCount((count) => count + 1)}>
          Count is {count}
        </button>
      </div>
    </>
  );
}

export default App;
