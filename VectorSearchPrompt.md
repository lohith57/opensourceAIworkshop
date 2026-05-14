Goal: Enhance the existing web App with vector search so users can search products based on meaning using product descriptions.

Requirements:

1. Add a search bar on the Home page (top section, clearly visible).
2. When a user enters a query in the search bar:
   - Perform vector search using product_description embeddings
   - Return the most relevant products based on semantic similarity
3. Display the search results using the same product card UI as the home page
Database Changes:
4. Create a new file named schema2.sql.
5. In schema2.sql:
   - Add a VECTOR column to the products table
   - Add UPDATE statements to generate embeddings for product_description using MySQL HeatWave (e.g., ML_EMBED_ROW)

Example Queries: 
To generate embeddings: SELECT sys.ML_EMBED_ROW("What is artificial intelligence?", JSON_OBJECT("model_id", "cohere.embed-v4.0")) into @text_embedding;

For vector search:
SELECT DISTANCE(STRING_TO_VECTOR("[1.01231, 2.0123123, 3.0123123, 4.01231231]"), STRING_TO_VECTOR("[1, 2, 3, 4]"), "COSINE"); 