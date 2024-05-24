import os

def replace_header(file_path, header_content):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    # Find the index of the first empty line
    empty_line_index = next((index for index, line in enumerate(lines) if line.strip() == ""), len(lines))

    # Get the content after the first empty line
    remaining_content = "".join(lines[empty_line_index:])

    with open(file_path, 'w') as file:
        file.write(header_content + "\n" + remaining_content)

def main():
    header_file = "header.txt"

    if not os.path.exists(header_file):
        print(f"Error: '{header_file}' not found.")
        return

    with open(header_file, 'r') as file:
        header_content = file.read().strip()

    current_directory = os.getcwd()

    for filename in os.listdir(current_directory):
        if filename.endswith(".cub"):
            replace_header(os.path.join(current_directory, filename), header_content)
            print(f"Updated: {filename}")

if __name__ == "__main__":
    main()
