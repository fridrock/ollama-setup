# Use the official Ollama image as base
FROM ollama/ollama:latest

# Set environment variables
ENV OLLAMA_HOST="0.0.0.0"

# Download the Gemma 3B model during build (optional)
# Note: This will make the image much larger (~2GB+)
# You can remove this and pull at runtime instead
RUN ollama pull gemma:3b

# Expose the Ollama API port
EXPOSE 11434

# Start Ollama when the container runs
CMD ["ollama", "serve"]