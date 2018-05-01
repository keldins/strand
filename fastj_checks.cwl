cwlVersion: v1.0
class: CommandLineTool
baseCommand: /l7g/tools/fjt/fjt
hints:
  DockerRequirement:
    dockerPull: l7g/fjcheck:v1.0
stdout: dockerTester_output.txt
inputs:
  dock_flag:
    type: string
      inputBinding:
        position: 1

outputs:
    dockerTester_output:
        type: stdout
