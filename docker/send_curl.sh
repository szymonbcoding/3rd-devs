curl -X POST http://localhost:3000/api/chat \
-H "Content-Type: application/json" \
-d '{"messages": [{"role": "user", "content": "Search wiki for John Wick"}]}'