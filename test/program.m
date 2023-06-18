<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="EYNBUZKcRK~JA!5Z.+6s">isSetTime</variable>
    <variable type="" id="?;eP^8l~/E@4kPzX+cty">hour</variable>
    <variable type="" id="?bqUPJM%fnEfo`6]WJXv">minute</variable>
    <variable type="" id="H+GL8/=4`T$I#L]{,,J.">second</variable>
    <variable type="" id="@#RLZTYys4OPTLv?~l?-">computerHour</variable>
    <variable type="" id="l{*D0[N*q|feFM+D|z48">computerMinute</variable>
    <variable type="" id="/FxEjPs;|L[29,5!Z8KV">computerSecond</variable>
  </variables>
  <block type="variables_set" id="ue|mMaY|=XL?a1:x?]JH" x="234" y="-389">
    <field name="VALUE1">int</field>
    <field name="VAR" id="EYNBUZKcRK~JA!5Z.+6s" variabletype="">isSetTime</field>
    <value name="VALUE">
      <block type="math_number" id="D8T[+Y$M[-E~I]rY_KdI">
        <field name="NUM">0</field>
      </block>
    </value>
    <next>
      <block type="variables_set" id="Q?Au#%($$PY0^/GdXlRK">
        <field name="VALUE1">String</field>
        <field name="VAR" id="@#RLZTYys4OPTLv?~l?-" variabletype="">computerHour</field>
        <value name="VALUE">
          <block type="text" id="T`w3y[pE~PGA|qF8~?^j">
            <field name="TEXT"></field>
          </block>
        </value>
        <next>
          <block type="variables_set" id=":,6}.(Ft}qut8e;1f^%~">
            <field name="VALUE1">String</field>
            <field name="VAR" id="l{*D0[N*q|feFM+D|z48" variabletype="">computerMinute</field>
            <value name="VALUE">
              <block type="text" id="3S9qp15N7]G{M0tN;s=/">
                <field name="TEXT"></field>
              </block>
            </value>
            <next>
              <block type="variables_set" id="E-v[{y14NxL)-/db;bk{">
                <field name="VALUE1">String</field>
                <field name="VAR" id="?;eP^8l~/E@4kPzX+cty" variabletype="">hour</field>
                <value name="VALUE">
                  <block type="text" id="$VTclA*3T4vFccW6Hkq%">
                    <field name="TEXT"></field>
                  </block>
                </value>
                <next>
                  <block type="variables_set" id="/$VBKct8U;3[jz+F$/HW">
                    <field name="VALUE1">String</field>
                    <field name="VAR" id="?bqUPJM%fnEfo`6]WJXv" variabletype="">minute</field>
                    <value name="VALUE">
                      <block type="text" id="0u`5D=+(4]1}ZdAbE*)U">
                        <field name="TEXT"></field>
                      </block>
                    </value>
                  </block>
                </next>
              </block>
            </next>
          </block>
        </next>
      </block>
    </next>
  </block>
  <block type="procedures_defnoreturn" id="p2vVvS$4q{lv)xD6BR+A" x="763" y="-287">
    <field name="NAME">noise</field>
    <field name="PARAMS"></field>
    <comment pinned="false" h="120" w="160">傳送訊息</comment>
    <statement name="STACK">
      <block type="mqttpublish" id="?L=QHj=%n-Qf7QB@Rs?Z">
        <value name="num1">
          <shadow type="text3" id="M,+ToA?Ya?%EXJe?Li0z">
            <field name="TEXT">myRobot</field>
          </shadow>
        </value>
        <value name="num2">
          <shadow type="text3" id="S-,N|c@)T=*g*g%;@*8o">
            <field name="TEXT">Start</field>
          </shadow>
        </value>
      </block>
    </statement>
  </block>
  <block type="procedures_defnoreturn" id="W}3r@u+_tfy(hp(LG`pd" x="738" y="-112">
    <field name="NAME">setTime</field>
    <field name="PARAMS"></field>
    <comment pinned="false" h="120" w="160">設定鬧鐘時間</comment>
  </block>
  <block type="procedures_defnoreturn" id="/]/mV|8@Lf/MpC$~!suB" x="738" y="13">
    <field name="NAME">move</field>
    <field name="PARAMS"></field>
    <comment pinned="false" h="120" w="160">車子移動</comment>
  </block>
  <block type="procedures_defnoreturn" id="VG`0,[Q|`LDC]C,jn+Rw" x="688" y="138">
    <field name="NAME">getTime</field>
    <field name="PARAMS"></field>
    <comment pinned="false" h="120" w="160">取得網路時間</comment>
    <statement name="STACK">
      <block type="math_change" id="r$+7(u3wVvAL;oPQ,K$4">
        <field name="VAR" id="@#RLZTYys4OPTLv?~l?-" variabletype="">computerHour</field>
        <value name="DELTA">
          <shadow type="math_number" id="{8N:YL/.bsN348_0|Zi_">
            <field name="NUM">1</field>
          </shadow>
          <block type="transformer" id="Nzit$E,Me[Bbr_$2f{]o">
            <field name="NAME">String</field>
            <value name="value">
              <block type="ntp_get1" id="zZC3UWFk}VEh*fO%#`DX">
                <field name="NAME">4</field>
              </block>
            </value>
          </block>
        </value>
        <next>
          <block type="math_change" id="KMd=R}Pb=:1CPe7vd1lL">
            <field name="VAR" id="l{*D0[N*q|feFM+D|z48" variabletype="">computerMinute</field>
            <value name="DELTA">
              <shadow type="math_number" id="XA@ooRe6C1?yvTSH`Lv!">
                <field name="NUM">1</field>
              </shadow>
              <block type="transformer" id="fC{zX.Bn^;;=k[d^p~d5">
                <field name="NAME">String</field>
                <value name="value">
                  <block type="ntp_get1" id="1__J7NLgsEK-VRbx*vNf">
                    <field name="NAME">5</field>
                  </block>
                </value>
              </block>
            </value>
          </block>
        </next>
      </block>
    </statement>
  </block>
  <block type="start" id="Q/Y6eNDo^/F!h$n?9*A]" x="113" y="188">
    <statement name="setup">
      <block type="simplewificonnectesp" id="7NkYIlMJ(3xeu!%xx3hR">
        <value name="ssid">
          <shadow type="text3" id="9h{Zhvguy}0_~iOOI2A8">
            <field name="TEXT">ssid</field>
          </shadow>
        </value>
        <value name="pass">
          <shadow type="text3" id="?*u(Cb4I]}kA(O7nU/HM">
            <field name="TEXT">pass</field>
          </shadow>
        </value>
        <next>
          <block type="mqttsetup" id="Z%b3WLH[;0S).~WeH(A@">
            <value name="num1">
              <shadow type="text3" id="4oYq4b]i4L]/K$;ipWzO">
                <field name="TEXT">broker.mqttdashboard.com</field>
              </shadow>
            </value>
            <value name="port">
              <shadow type="math_number" id="g4B/:m-q-*B*pW!JsP|h">
                <field name="NUM">1883</field>
              </shadow>
            </value>
            <next>
              <block type="mqttsubscribe" id="X7Og*-=:,~Pl}Ch$I3OD">
                <value name="num1">
                  <shadow type="text3" id="5nVrA0txgpCUC|-a#DU_">
                    <field name="TEXT">myRobot</field>
                  </shadow>
                </value>
                <next>
                  <block type="ntp_begin" id="6*Q364yGZFcVu5aoR#7I"></block>
                </next>
              </block>
            </next>
          </block>
        </next>
      </block>
    </statement>
    <statement name="loop">
      <block type="ntp_get" id="2nGQ+P078iai4}Uo.Bs:">
        <next>
          <block type="procedures_callnoreturn" id="/1E?J_q[^V,DX6IwQ9!o">
            <mutation name="move"></mutation>
            <field name="NAME">move</field>
            <next>
              <block type="procedures_callnoreturn" id="cZZYjus|zy$jL:efo.!G">
                <mutation name="setTime"></mutation>
                <field name="NAME">setTime</field>
                <next>
                  <block type="procedures_callnoreturn" id="MWuzj_vsHw4{6%MgwIxh">
                    <mutation name="getTime"></mutation>
                    <field name="NAME">getTime</field>
                    <next>
                      <block type="controls_if" id="D+Lf!s_/C#+zkenQXIUw">
                        <value name="IF0">
                          <shadow type="logic_boolean" id="^i23]A~qz;XI]5_qob_X">
                            <field name="BOOL">TRUE</field>
                          </shadow>
                          <block type="logic_compare" id="tTG%;RcLt+W3cy[8K+hu">
                            <field name="OP">EQ</field>
                            <value name="A">
                              <block type="variables_get" id="DpqyYZ/*Op[HmT9$2Hs,">
                                <field name="VAR" id="EYNBUZKcRK~JA!5Z.+6s" variabletype="">isSetTime</field>
                              </block>
                            </value>
                            <value name="B">
                              <block type="math_number" id="bXgLyno1=BXJ+DqrF!)W">
                                <field name="NUM">1</field>
                              </block>
                            </value>
                          </block>
                        </value>
                        <statement name="DO0">
                          <block type="controls_if" id="Nh@4llT64I=2/_W?^Oek">
                            <value name="IF0">
                              <shadow type="logic_boolean" id="XLhujbC.$hNYIqV_E6nC">
                                <field name="BOOL">TRUE</field>
                              </shadow>
                              <block type="logic_operation" id="m$$n[kI@[$rl3$V9p=KR">
                                <field name="OP">AND</field>
                                <value name="A">
                                  <block type="logic_compare" id="9l/Z6+zB,:Ih,d#d|,rX">
                                    <field name="OP">EQ</field>
                                    <value name="A">
                                      <block type="variables_get" id="t}SoP4`E(6}ZC~7oL{@y">
                                        <field name="VAR" id="@#RLZTYys4OPTLv?~l?-" variabletype="">computerHour</field>
                                      </block>
                                    </value>
                                    <value name="B">
                                      <block type="variables_get" id="{H^|@k:g*u!v.$Fjr}?A">
                                        <field name="VAR" id="?;eP^8l~/E@4kPzX+cty" variabletype="">hour</field>
                                      </block>
                                    </value>
                                  </block>
                                </value>
                                <value name="B">
                                  <block type="logic_compare" id="0rQF(#`dw$`vd?GIgo4d">
                                    <field name="OP">EQ</field>
                                    <value name="A">
                                      <block type="variables_get" id=":Uc!9f{D)N1#sUBx9GLl">
                                        <field name="VAR" id="l{*D0[N*q|feFM+D|z48" variabletype="">computerMinute</field>
                                      </block>
                                    </value>
                                    <value name="B">
                                      <block type="variables_get" id="-=U]dpE6nPo|}$,.ZLNd">
                                        <field name="VAR" id="?bqUPJM%fnEfo`6]WJXv" variabletype="">minute</field>
                                      </block>
                                    </value>
                                  </block>
                                </value>
                              </block>
                            </value>
                            <statement name="DO0">
                              <block type="procedures_callnoreturn" id="d2wlVbQDxasFdO`^0K1;">
                                <mutation name="noise"></mutation>
                                <field name="NAME">noise</field>
                              </block>
                            </statement>
                          </block>
                        </statement>
                        <next>
                          <block type="arduinodelay1" id="H6c`#K`9)gt.2BK-`OI8">
                            <value name="value">
                              <shadow type="math_number" id="IO#8Q)2?Me8YpK4y;X6!">
                                <field name="NUM">1</field>
                              </shadow>
                            </value>
                          </block>
                        </next>
                      </block>
                    </next>
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