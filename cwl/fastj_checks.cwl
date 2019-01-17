cwlVersion: v1.0
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: l7g/fjcheck:v1.0
requirements:
  InlineJavascriptRequirement: {}
baseCommand: /l7g/tools/fjt/fjt
stdout: $(inputs.fastj_file)_fj_error_report.txt
inputs:
  flag:
    type: string
      inputBinding:
        position: 1
  fastj_file:
    type: File
       inputBinding:
         positions: 2

outputs:
    error_report:
        type: stdout
