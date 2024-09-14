import unittest
import subprocess

class TestPython(unittest.TestCase):
    def test_output(self):
        # Command to run translator.py script
        command = ["python3", "python.py"]
        
        # Run the command and capture output
        result = subprocess.run(command, capture_output=True, text=True)
        
        # Expected output without the newline at the end
        expected_output = "h"
        
        # Strip any leading/trailing whitespace from the output and compare
        self.assertEqual(result.stdout.strip(), expected_output)

if __name__ == '__main__':
    unittest.main()