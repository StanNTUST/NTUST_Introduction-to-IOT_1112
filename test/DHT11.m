<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables></variables>
  <block type="start" id="D?0%,UNq)qfnr]`U)mfU" x="362" y="287">
    <statement name="loop">
      <block type="arduinodelay" id="|DL8KDYVmaU*HBN*l,[Y">
        <value name="value">
          <shadow type="math_number" id="K`19-e=%vTTQw;%~e7^i">
            <field name="NUM">1000</field>
          </shadow>
        </value>
        <next>
          <block type="serial_write1" id="^S8i69=n|[HyYG%ge0rT">
            <value name="value">
              <shadow type="text" id="mGfDIEq?#!ODKI`Yx5(8">
                <field name="TEXT">Hello</field>
              </shadow>
              <block type="dht11hum" id="YQh;Nbwkfj:w9_pS4%84">
                <value name="NAME">
                  <shadow type="math_number" id="Ad3{xuX#cStft-,}^4-j">
                    <field name="NUM">27</field>
                  </shadow>
                </value>
              </block>
            </value>
            <next>
              <block type="serial_write1" id=";M:47i*5$O?-Yc7.fllA">
                <value name="value">
                  <shadow type="text" id="}ZPtB/--5=zig8m5cRC;">
                    <field name="TEXT">Hello</field>
                  </shadow>
                  <block type="dht11temp" id="[x4xOyXYl:6_Pt+*]$?l">
                    <value name="NAME">
                      <shadow type="math_number" id="zf!evfd|vW2%B_3HE{H3">
                        <field name="NUM">27</field>
                      </shadow>
                    </value>
                  </block>
                </value>
              </block>
            </next>
          </block>
        </next>
      </block>
    </statement>
  </block>
</xml>