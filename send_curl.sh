curl -X POST http://localhost:3000/api/chat \
-H "Content-Type: application/json" \
-d '{"message": {"role": "user", "content": "I am fine. What is my name?"}}'