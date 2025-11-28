import { useState } from "react";
import axios from "axios";

function App() {
  const [msg, setMsg] = useState("");

  const callApi = async () => {
    const res = await axios.get(import.meta.env.VITE_API_URL);
    setMsg(res.data.message);
  };

  return (
    <div style={{ padding: 40 }}>
      <h1>React + AWS Lambda</h1>
      <button onClick={callApi}>Call Backend</button>
      <p>{msg}</p>
    </div>
  );
}

export default App;
