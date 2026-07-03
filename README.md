\# SmartMeal AI



AI-powered mobile meal-planning app. Users enter diet preferences, budget, and health goals;

the backend generates and optimizes a weekly meal plan using a LangGraph agent workflow,

a genetic algorithm, and a scikit-learn scoring model.



\## Tech Stack



| Layer | Technology |

|---|---|

| Mobile frontend | Expo + React Native (TypeScript) |

| Backend API | FastAPI (Python) |

| AI workflow | LangGraph (planner + reviewer agents, via Groq) |

| Optimization | Custom genetic algorithm |

| Machine learning | scikit-learn |

| MLOps | MLflow |



\## Project Structure

smartmeal-ai/

├── backend/           # FastAPI service, agents, optimizer, ml

├── frontend/          # Expo React Native app

├── start/             # start.ps1 — launches both servers at once

└── README.md



\## Setup



\### 1. Backend



```powershell

cd backend

python -m venv venv

venv\\Scripts\\activate

pip install -r requirements.txt

```



Create `backend\\.env`:

GROQ\_API\_KEY=your\_key\_here

MLFLOW\_TRACKING\_URI=http://localhost:5000

BACKEND\_PORT=8000

LOG\_LEVEL=INFO



Run:

```powershell

uvicorn main:app --reload --port 8000

```

Check `http://127.0.0.1:8000/docs`.



\### 2. Frontend



```powershell

cd frontend

npm install

```



Create `frontend\\.env`:

EXPO\_PUBLIC\_API\_URL=http://localhost:8000



Run:

```powershell

npx expo start

```

Press `w` for browser, or scan the QR code with Expo Go.



\### 3. Quick start (both at once)



```powershell

.\\start\\start.ps1

```



\## API Endpoints



| Method | Path | Description |

|---|---|---|

| POST | `/generate-plan` | Accepts user preferences, returns a weekly meal plan |

| GET | `/meals` | Returns the full meal dataset |

| GET | `/health` | Health check |



\## Testing



```powershell

cd backend

pytest tests/ -v

```



\## ML Training / MLflow



```powershell

cd backend

python ml/train.py

mlflow ui --port 5000   # view at http://localhost:5000

```



\## Notes



\- Requires Node.js, Python 3.11+, and a Groq API key (console.groq.com).

\- `venv/`, `node\_modules/`, `.env`, and `mlruns/` are gitignored — never commit secrets.

