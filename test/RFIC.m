<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="oE*nT,JP5/xh*Vj_*$NV">a</variable>
  </variables>
  <block type="start" id="7hm0]zK^/zi0CTN]DcDz" x="413" y="387">
    <statement name="setup">
      <block type="simplewificonnectesp" id="wmB]nEHZTbIX1fCZ!jVo">
        <value name="ssid">
          <shadow type="text3" id="sOdvOs;`Pa15UcgB9~YR">
            <field name="TEXT">root</field>
          </shadow>
        </value>
        <value name="pass">
          <shadow type="text3" id="ueju)b^5%_SaAF3wv#KO">
            <field name="TEXT">rootroot</field>
          </shadow>
        </value>
      </block>
    </statement>
    <statement name="loop">
      <block type="controls_if" id=",(QFaFoX|rB`U.hN{;wa">
        <value name="IF0">
          <shadow type="logic_boolean" id="fREyZD|$e;;4oVOeqvXB">
            <field name="BOOL">TRUE</field>
          </shadow>
          <block type="erc522_available" id="bl5sKyWux^LIp5?Dg?TI"></block>
        </value>
        <statement name="DO0">
          <block type="variables_set" id="zF1md9%bd`?UC*yBTdv.">
            <field name="VALUE1">String</field>
            <field name="VAR" id="oE*nT,JP5/xh*Vj_*$NV" variabletype="">a</field>
            <value name="VALUE">
              <block type="esp32rfidid" id="z:(]4u`U0[tX~|R%z0Pa"></block>
            </value>
            <next>
              <block type="serial_write1" id="Z47n4bd@Y54C+`[aWq9A">
                <value name="value">
                  <shadow type="text" id="{3|v$Glwg8oy$VqGi4U,">
                    <field name="TEXT">Hello</field>
                  </shadow>
                  <block type="variables_get" id="pRr~-x7nDt*]2_V63R/`">
                    <field name="VAR" id="oE*nT,JP5/xh*Vj_*$NV" variabletype="">a</field>
                  </block>
                </value>
                <next>
                  <block type="controls_if" id="r_.c$`Kf+y-K=_f_Z$p(">
                    <value name="IF0">
                      <shadow type="logic_boolean" id="QEvA/+N,ILm#_uRjm7ZH">
                        <field name="BOOL">TRUE</field>
                      </shadow>
                      <block type="logic_compare" id="WssG%R7q^*puQq9Sg{sG">
                        <field name="OP">EQ</field>
                        <value name="A">
                          <block type="variables_get" id="6@=_m}+L%wX.ki9rW0MS">
                            <field name="VAR" id="oE*nT,JP5/xh*Vj_*$NV" variabletype="">a</field>
                          </block>
                        </value>
                        <value name="B">
                          <block type="text" id="A3B3TlFv{w88@!5d(`KH">
                            <field name="TEXT">23341157194</field>
                          </block>
                        </value>
                      </block>
                    </value>
                    <statement name="DO0">
                      <block type="digital12" id="P14#@o[5Qv5Ur+F`0bba">
                        <value name="pin">
                          <shadow type="math_number" id=")ULP[^2tS}u5eb~2[ulw">
                            <field name="NUM">14</field>
                          </shadow>
                        </value>
                        <value name="value">
                          <shadow type="math_number" id="+OrLjbKPGY8,C+eibq:P">
                            <field name="NUM">1</field>
                          </shadow>
                        </value>
                        <next>
                          <block type="arduinodelay1" id="}nbUeLVi4Bgol#M.ncJ:">
                            <value name="value">
                              <shadow type="math_number" id="LP=LiOV]krHPQr9Fu+MR">
                                <field name="NUM">2</field>
                              </shadow>
                            </value>
                            <next>
                              <block type="digital12" id="{rJh5Ie=~}{{M:M2(+3,">
                                <value name="pin">
                                  <shadow type="math_number" id="25}TD}]I3$s`afY$b%[H">
                                    <field name="NUM">14</field>
                                  </shadow>
                                </value>
                                <value name="value">
                                  <shadow type="math_number" id=";8jkCLtIoL%ZN%KD.Z{G">
                                    <field name="NUM">0</field>
                                  </shadow>
                                </value>
                              </block>
                            </next>
                          </block>
                        </next>
                      </block>
                    </statement>
                  </block>
                </next>
              </block>
            </next>
          </block>
        </statement>
      </block>
    </statement>
  </block>
</xml>