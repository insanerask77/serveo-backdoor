#!/bin/bash

# Function to obfuscate the script and generate the obfuscated version
obfuscate_script() {
  if [[ -z "$1" ]]; then
    echo "Usage: $0 <file.sh>"
    exit 1
  fi

  original_file="$1"
  obfuscated_file="run_obfuscated_${original_file%.sh}.sh"

  # Create the obfuscated version
  echo '#!/bin/bash' > "$obfuscated_file"
  echo -e "\n# Decodes and executes the original script\n" >> "$obfuscated_file"
  echo 'eval "$(base64 --decode << EOF' >> "$obfuscated_file"
  base64 "$original_file" >> "$obfuscated_file"
  echo 'EOF' >> "$obfuscated_file"
  echo ')"' >> "$obfuscated_file"

  # Make the new obfuscated script executable
  chmod +x "$obfuscated_file"
  echo "Obfuscated version saved as: $obfuscated_file"
}

# Call the function with the provided file as an argument
obfuscate_script "$1"
