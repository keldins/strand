cwlVersion: v1.0
class: ExpressionTool
requirements:
  InlineJavascriptRequirement: {}
inputs:
  fastj_directory: Directory
outputs:
  fastj_files:
    type: File[]
expression: |
  ${
    var fastj_files = [];

    for (var i = 0; i < inputs.fastj_directory.listing.length; i++) {
      var file = inputs.fastj_directory.listing[i];
      if (file.nameext == ".
    }
