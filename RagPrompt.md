Goal: Add a RAG chatbot to the existing Electronics E-commerce Web App to answer customer questions such as warranty registration, return policy, shipping, order cancellation, product support, and payment help.

Requirements:

1. Build the chatbot using open-source libraries for both the UI and backend integration.

2. Match the app’s existing design system: colors, typography, rounded corners, spacing, and premium visual style.

3. Create a sample FAQ knowledge document in "faq.txt" format with realistic and detailed information for:
   - warranty registration
   - return policy
   - order cancellation
   - delivery timeline
   - product support
   - payment help

4. Use MySQL HeatWave’s native ML_RAG procedure to answer user queries from the FAQ knowledge source.
   Use this syntax only:
   CALL sys.ML_RAG("What is AutoML", @output, JSON_OBJECT("vector_store", JSON_ARRAY("demo_db.demo_embeddings")));

5. Do not modify schema.sql. The document will be ingested separately.

6. Add a chatbot button or floating chat widget in the app.

7. Show answers in a clean chat panel with:
   - user message
   - bot response
   - loading state

8. If no answer is found, show a polite fallback message and suggest contacting support.

9. Keep the implementation modular and production-ready.

10. Do not use os.getenv, os.environ, or any environment-variable-based database configuration.
    Use the database connection details already provided in db_utils.py as the single source of truth.
    Do not duplicate or re-read database credentials from environment variables.
    Import and reuse db_utils.py directly for all database connectivity and related configuration.