-- schema2.sql: Enhancements for vector search in E-commerce App

-- Add VECTOR column to products table for description embeddings
ALTER TABLE products
ADD COLUMN description_embedding VECTOR(1024);

-- Update existing products to generate embeddings for descriptions
-- Assuming Cohere embed-v4.0 produces 1024-dimensional vectors
-- This assumes MySQL HeatWave supports VECTOR type and ML_EMBED_ROW returns compatible vector data
UPDATE products
SET description_embedding = sys.ML_EMBED_ROW(description, JSON_OBJECT("model_id", "cohere.embed-v4.0"));