class: Workflow
id: "grepc-workflow"
label: "grepc-workflow"
cwlVersion: v1.1

doc: A workflow to determine how many lines in the input match a pattern

inputs:
  w_pattern: string
  w_input_file: File

outputs:
  w_output_file:
    type: File
    outputSource: grepc/output_file
    
steps:
  grepc:
    run: grepc.cwl
    in:
      pattern: w_pattern
      input_file: w_input_file
    out: [output_file]

    
