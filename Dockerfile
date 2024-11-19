# Use the official TeX Live image
FROM texlive/texlive:latest

# Install texlive-full
RUN apt-get update && apt-get install -y texlive-full

# Set working directory
WORKDIR /workspace

# Copy the current directory contents into the container
COPY . /workspace

# Command to compile the LaTeX document
CMD ["pdflatex", "-interaction=nonstopmode", "document.tex"]
