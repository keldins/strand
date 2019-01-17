cwlVersion: v1.0
class: Workflow
requirements:
  ScatterFeatureRequirement: {}
  arv:RunInSingleContainer: {}
hints:
  DockerRequirement:
    dockerPull: l7g/fjcheck:v1.0
inputs:
  flag:
    type: string
  fastj_collection:
    type: Directory

outputs:
    error_report:
        type: stdout

steps:
  fjt:
    scatter: [fastj_file]
    run: fastj_checks.cwl
    in:
      flag: flag
      fastj_file: fastj_file      
    out: [error_report]
