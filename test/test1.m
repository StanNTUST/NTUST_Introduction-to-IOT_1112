<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables></variables>
  <block type="web_page1" id="h-Nq^OkQ[--l.S6~}=`8" x="637" y="238">
    <field name="NAME">1</field>
    <statement name="NAME1">
      <block type="html_center" id="iwXi|9~.on)?0xgSzHfO">
        <statement name="center">
          <block type="html_a" id="l[obZMgANpeq_Q3;myCN">
            <field name="http">/on</field>
            <statement name="NAME">
              <block type="html_print" id="==-G$Y(3NXDOognuo!^m">
                <field name="name1">10</field>
                <field name="name2">on</field>
              </block>
            </statement>
          </block>
        </statement>
        <next>
          <block type="br" id=".J:!w3ZR6FP|klahGGA%">
            <next>
              <block type="html_center" id="Do9jsHo5(cFF3;`pr4=m">
                <statement name="center">
                  <block type="html_a" id=")w8lK`SMf7K[Fg})SKPm">
                    <field name="http">/off</field>
                    <statement name="NAME">
                      <block type="html_print" id="xS(L9}kIqD`Q.k_O7BTS">
                        <field name="name1">10</field>
                        <field name="name2">off</field>
                      </block>
                    </statement>
                    <next>
                      <block type="br" id=",UZ8kJ#]d26cxIc3#1OZ">
                        <next>
                          <block type="html_print1" id="1$F~TN:5QeaVC8bWc?BO">
                            <field name="name1">10</field>
                            <value name="NAME">
                              <shadow type="text3" id="ZY$Nn7MI3axg(+Fd5L/y">
                                <field name="TEXT">output</field>
                              </shadow>
                              <block type="analog22" id="e~LKmJX_ZI*YMPzW#Yv%">
                                <value name="pin">
                                  <shadow type="math_number" id="xXAqK/#}PRIdgx3Y7F}F">
                                    <field name="NUM">34</field>
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
            </next>
          </block>
        </next>
      </block>
    </statement>
  </block>
  <block type="start" id="=qT$VEo-/?m%fyTW0AEu" x="363" y="862">
    <statement name="setup">
      <block type="simplewificonnectesp" id="YgOB!befh355Hv3RZazb">
        <value name="ssid">
          <shadow type="text3" id="nN7`lLEX|N-6QVCnQz)H">
            <field name="TEXT">root</field>
          </shadow>
        </value>
        <value name="pass">
          <shadow type="text3" id="UYKpD(q0Cy_Kk~^xo*xI">
            <field name="TEXT">rootroot</field>
          </shadow>
        </value>
      </block>
    </statement>
    <statement name="loop">
      <block type="serial_write1" id="Ma7xDCicE}/2ZqqyT+O(">
        <value name="value">
          <shadow type="text" id="AI0u2#[5TIO_#|r;qlo:">
            <field name="TEXT">Hello</field>
          </shadow>
          <block type="wifiip22esp" id="ZQb/U[]k}$)f;|.?[hN|"></block>
        </value>
        <next>
          <block type="simplewebserverbeginesp" id="iI_}BrIEr2KfkWdeN1bj">
            <value name="port">
              <shadow type="math_number" id="iF%|wDVLA?@:P35L.wus">
                <field name="NUM">80</field>
              </shadow>
            </value>
            <next>
              <block type="simple_conditionesp" id="THWYTcRcJ,rg!vzjI,h+">
                <value name="condition">
                  <shadow type="text3" id="h--+LK02:Wd1*XjBJb8W">
                    <field name="TEXT">/on</field>
                  </shadow>
                </value>
                <statement name="NAME">
                  <block type="digital12" id="AxP5Ky/757sIgAn(=D4v">
                    <value name="pin">
                      <shadow type="math_number" id=".z6_@kG91BHb5Y4ylE+K">
                        <field name="NUM">27</field>
                      </shadow>
                    </value>
                    <value name="value">
                      <shadow type="math_number" id="z4XaiCx5VD,9m~xF`1V0">
                        <field name="NUM">1</field>
                      </shadow>
                    </value>
                    <next>
                      <block type="simplewebserverprintesp" id="p1{4uJiwumSJV*,%GG]#">
                        <value name="print">
                          <shadow type="text3" id=".Hc0Egy;fBQ/Yh!(Hw={">
                            <field name="TEXT">print_html</field>
                          </shadow>
                          <block type="web_page2" id="TKEo=uFN{?=Mh$xWH.v(">
                            <field name="NAME">1</field>
                          </block>
                        </value>
                      </block>
                    </next>
                  </block>
                </statement>
                <next>
                  <block type="simple_conditionesp" id="0rb*_zU,W(wwry!zl.nZ">
                    <value name="condition">
                      <shadow type="text3" id="sfbs4Ya=0x?c$/tS`HR%">
                        <field name="TEXT">/off</field>
                      </shadow>
                    </value>
                    <statement name="NAME">
                      <block type="digital12" id="wBmW{6CTJUIyVohewHS8">
                        <value name="pin">
                          <shadow type="math_number" id="LjJY].r)$@Tt)G~TT|,s">
                            <field name="NUM">27</field>
                          </shadow>
                        </value>
                        <value name="value">
                          <shadow type="math_number" id="*z1W*{!0632orGFd/;Fv">
                            <field name="NUM">0</field>
                          </shadow>
                        </value>
                        <next>
                          <block type="simplewebserverprintesp" id="~unCrEwoFMKIo~~gA7-Q">
                            <value name="print">
                              <shadow type="text3" id=".Hc0Egy;fBQ/Yh!(Hw={">
                                <field name="TEXT">print_html</field>
                              </shadow>
                              <block type="web_page2" id="l,v@_tGDIuSe*W_1aY${">
                                <field name="NAME">1</field>
                              </block>
                            </value>
                          </block>
                        </next>
                      </block>
                    </statement>
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