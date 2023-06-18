<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables></variables>
  <block type="start" id="hTnmz5o!`m*PfqCFB2mU" x="463" y="337">
    <statement name="setup">
      <block type="simplewificonnectesp" id=":s8.wL!UzrvzP97U1B`:">
        <value name="ssid">
          <shadow type="text3" id="y[Z!t[Lk@y*U8Lrz#Z`Q">
            <field name="TEXT">root</field>
          </shadow>
        </value>
        <value name="pass">
          <shadow type="text3" id="U6=q@ei9i.yHwh6?E#;#">
            <field name="TEXT">rootroot</field>
          </shadow>
        </value>
        <next>
          <block type="speechtotext" id="fO,@Rh66y.S:(8j$;fES">
            <statement name="NAME">
              <block type="controls_if" id="qk$aM12C+vz%_R@fSyZM">
                <value name="IF0">
                  <shadow type="logic_boolean" id=",1J7RR$+r8KBGg[8{@ht">
                    <field name="BOOL">TRUE</field>
                  </shadow>
                  <block type="logic_compare" id="mJNZfUt3I^MD)2U}Kai-">
                    <field name="OP">EQ</field>
                    <value name="A">
                      <block type="speechp1" id="+{FW99$-@vycv:-jZqT;"></block>
                    </value>
                    <value name="B">
                      <block type="text" id="yQX;iVQQoa`|TdZ]40]t">
                        <field name="TEXT">開燈</field>
                      </block>
                    </value>
                  </block>
                </value>
                <statement name="DO0">
                  <block type="digital12" id="nf.sP~m.x+ivx0yQ0`.]">
                    <value name="pin">
                      <shadow type="math_number" id="Qyjy.{`t8SRw)M5!%~JA">
                        <field name="NUM">27</field>
                      </shadow>
                    </value>
                    <value name="value">
                      <shadow type="math_number" id="[-_5xnJWw/^14v[Q?Kwk">
                        <field name="NUM">1</field>
                      </shadow>
                    </value>
                  </block>
                </statement>
                <next>
                  <block type="controls_if" id="BzS65;Q%No.Ax_vvd)D,">
                    <value name="IF0">
                      <shadow type="logic_boolean" id=",1J7RR$+r8KBGg[8{@ht">
                        <field name="BOOL">TRUE</field>
                      </shadow>
                      <block type="logic_compare" id="DEUeK_xn;9)P07;u-TJo">
                        <field name="OP">EQ</field>
                        <value name="A">
                          <block type="speechp1" id="_GHSwwuG4TO?=d_ep2Ez"></block>
                        </value>
                        <value name="B">
                          <block type="text" id="OT[}A)eE*PQvtkxSb())">
                            <field name="TEXT">關燈</field>
                          </block>
                        </value>
                      </block>
                    </value>
                    <statement name="DO0">
                      <block type="digital12" id="CU*atQ$e~b90o]NR|2ga">
                        <value name="pin">
                          <shadow type="math_number" id="!7STHJ2I:4n~r`+YePSV">
                            <field name="NUM">27</field>
                          </shadow>
                        </value>
                        <value name="value">
                          <shadow type="math_number" id="b;(8%_D]g8_w(RV[xRzv">
                            <field name="NUM">0</field>
                          </shadow>
                        </value>
                      </block>
                    </statement>
                  </block>
                </next>
              </block>
            </statement>
          </block>
        </next>
      </block>
    </statement>
  </block>
</xml>