<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables></variables>
  <block type="start" id="D?0%,UNq)qfnr]`U)mfU" x="362" y="287">
    <statement name="setup">
      <block type="eservosetup" id="ErO0N)#rO[7^AEm``?fR">
        <value name="pin">
          <shadow type="math_number" id="Liee;-VjT?~R#j:NM,vm">
            <field name="NUM">1</field>
          </shadow>
        </value>
        <value name="value">
          <shadow type="math_number" id="LhTq2c^]x^~x}Vf39%[%">
            <field name="NUM">27</field>
          </shadow>
        </value>
      </block>
    </statement>
    <statement name="loop">
      <block type="servowrite" id="vFRleKyGlA1AQ%kf~z%w">
        <value name="pin">
          <shadow type="math_number" id="Wq`827`7},dzG|m}B:n@">
            <field name="NUM">1</field>
          </shadow>
        </value>
        <value name="value">
          <shadow type="math_number" id="f#-?dKS{W}[L:%xP%77i">
            <field name="NUM">90</field>
          </shadow>
        </value>
        <next>
          <block type="arduinodelay1" id="e1t#{|o@p|{~2YyZ@]}h">
            <value name="value">
              <shadow type="math_number" id="G,aO)b%}o(r)2Swf:5i.">
                <field name="NUM">3</field>
              </shadow>
            </value>
            <next>
              <block type="servowrite" id=",~RNdW_AMJ:gb_3Y+YLD">
                <value name="pin">
                  <shadow type="math_number" id="Ez*XNsc4)**jU*L.^2kT">
                    <field name="NUM">1</field>
                  </shadow>
                </value>
                <value name="value">
                  <shadow type="math_number" id="Os,M0`OWQCDxSDjzsf_C">
                    <field name="NUM">120</field>
                  </shadow>
                </value>
                <next>
                  <block type="arduinodelay1" id="!;)JAzB!5tuOPSJ(?:NC">
                    <value name="value">
                      <shadow type="math_number" id="{e4jARH1%H[D4IXc!n:X">
                        <field name="NUM">3</field>
                      </shadow>
                    </value>
                  </block>
                </next>
              </block>
            </next>
          </block>
        </next>
      </block>
    </statement>
  </block>
</xml>