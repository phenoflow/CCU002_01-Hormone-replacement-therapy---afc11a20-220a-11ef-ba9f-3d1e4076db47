cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-hormone-replacement-therapy-hrt-tablet---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  ccu002_01-hormone-replacement-therapy-hrt-2microgram---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-2microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-tablet---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-ethinylestradiol---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-ethinylestradiol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-2microgram---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-climaval---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-climaval---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-ethinylestradiol---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-cycloprogynova---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-cycloprogynova---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-climaval---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-femostonconti---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-femostonconti---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-cycloprogynova---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-tridestra---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-tridestra---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-femostonconti---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-150microg---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-150microg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-tridestra---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-100microgram---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-100microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-150microg---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-sequi---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-sequi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-100microgram---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-elleste---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-elleste---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-sequi---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-climagest---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-climagest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-elleste---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-spray---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-spray---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-climagest---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-nuvelle---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-nuvelle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-spray---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-estraderm---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-estraderm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-nuvelle---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-015mg---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-015mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-estraderm---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-125mg---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-015mg---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-premarin---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-premarin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-125mg---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-indivina---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-indivina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-premarin---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-sandrena---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-sandrena---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-indivina---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-novofem---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-novofem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-sandrena---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-femseven---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-femseven---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-novofem---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-evorel---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-evorel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-femseven---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-acetate---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-acetate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-evorel---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-modifiedrelease---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-acetate---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-zumenon---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-zumenon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-modifiedrelease---primary/output
  premique-ccu002_01-hormone-replacement-therapy-hrt---primary:
    run: premique-ccu002_01-hormone-replacement-therapy-hrt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-zumenon---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-sachet---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: premique-ccu002_01-hormone-replacement-therapy-hrt---primary/output
  ccu002_01-hormone-replacement-therapy-hrt-oestrogens---primary:
    run: ccu002_01-hormone-replacement-therapy-hrt-oestrogens---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-sachet---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ccu002_01-hormone-replacement-therapy-hrt-oestrogens---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
