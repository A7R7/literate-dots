
import re

code = 0;
level = 0;

def process_file(input_file, output_file):
    global code
    global level
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            line = line.strip()
            if line == '':
                if code == 1:
                  outfile.write("#+end_src \n")
                code = 0

                outfile.write('\n')

            elif line.startswith('#:') or line.startswith("#::"):
                if code == 1:
                  outfile.write("#+end_src \n")
                code = 0

                line = line[3:].lstrip()

                if line.endswith('{{{'):
                    level = level + 1
                    line = level * "*" + " " + line[:-3]
                    outfile.write(line + "\n")
                elif line.endswith('}}}'):
                    level = level - 1
                    line = ""
                    outfile.write(line + "\n")
                else:
                    line = re.sub(r'(\b\w+_\w+\b)', r'~\1~', line)
                    outfile.write(line + "\n")

            else:
                if code == 0:
                    outfile.write("#+begin_src conf\n")
                code = 1
                outfile.write("  " + line + "\n")

input_filename = 'kitty.conf'
output_filename = 'kitty.org'

process_file(input_filename, output_filename)
