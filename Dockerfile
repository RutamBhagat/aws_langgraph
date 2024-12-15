FROM langchain/langgraph-api:3.11



ADD ./langchain-documentation-chatbot /deps/langchain-documentation-chatbot

RUN PYTHONDONTWRITEBYTECODE=1 pip install --no-cache-dir -c /api/constraints.txt -e /deps/*

ENV LANGSERVE_GRAPHS='{"graph": "/deps/langchain-documentation-chatbot/app/graph/graph.py:graph"}'

