Enhance the existing app, add an AI feature to summarize product feedback using MySQL HeatWave GenAI.

Requirements:

1. Use MySQL HeatWave native GenAI (e.g., ML_GENERATE) to summarize feedback comments from the feedback table for a given product.
   Example: SELECT sys.ML_GENERATE(@text, JSON_OBJECT("task", "generation", "model_id", "xai.grok-4", "language", "en"));
   Example output:{"text": "Artificial Intelligence (AI) refers ... understanding."}
2. For each product:
    * Take all feedback comments
    * Generate a short summary 
3. Add this summary to the Product Detail page under a section called:
    “Customer Feedback Summary”
4. Keep the implementation modular and production-ready.
5.If a product has no feedback, show:
     “No customer feedback summary available yet.”