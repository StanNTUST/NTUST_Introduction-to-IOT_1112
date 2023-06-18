<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="9~y{jvQ8/[4!pu_~wAMR">myTime</variable>
    <variable type="" id="*jI7{,vBP`VNFUSuH~2s">netTime</variable>
    <variable type="" id="OvpK~Ji~6{mYtsN^:LKM">ring</variable>
    <variable type="" id="Y~%18{h/.A}[NJkGeDM(">straight</variable>
    <variable type="" id="#3N)$VZ9OAi@xazI7ESH">iLR</variable>
    <variable type="" id="~!07K?E%(P#%L*{ezug[">iRS</variable>
    <variable type="" id="-U~Eq{_wYa~trFUn/sAe">lR</variable>
    <variable type="" id=")9.PZLf!({9.91aDGEg#">rstraight</variable>
    <variable type="" id="N}wjo_YNXBHqwZ$J;Y%;">index</variable>
  </variables>
  <block type="variables_set" id="Lt(@qY{}Y{?esT)J}:Z]" x="263" y="-13">
    <field name="VALUE1">String</field>
    <field name="VAR" id="9~y{jvQ8/[4!pu_~wAMR" variabletype="">myTime</field>
    <value name="VALUE">
      <block type="text" id="VzG7W|+W+;8]:X0~!F09">
        <field name="TEXT"></field>
      </block>
    </value>
    <next>
      <block type="variables_set" id="ldf-4ZBLM8OgmmNAtd3^">
        <field name="VALUE1">String</field>
        <field name="VAR" id="*jI7{,vBP`VNFUSuH~2s" variabletype="">netTime</field>
        <value name="VALUE">
          <block type="text" id="B)m,)qbJz^u$K)y0Vj65">
            <field name="TEXT"></field>
          </block>
        </value>
        <next>
          <block type="variables_set" id="/0my,Tr#Fg|6dm9t/`1x">
            <field name="VALUE1">int</field>
            <field name="VAR" id="OvpK~Ji~6{mYtsN^:LKM" variabletype="">ring</field>
            <value name="VALUE">
              <block type="math_number" id="MCn$,C-z)j-(R4d@O$P.">
                <field name="NUM">0</field>
              </block>
            </value>
          </block>
        </next>
      </block>
    </next>
  </block>
  <block type="procedures_defnoreturn" id="d!w2$d7uyeqx=_wXkcz9" x="888" y="-38">
    <field name="NAME">function</field>
    <field name="PARAMS"></field>
    <comment pinned="false" h="120" w="160">描述此函式...</comment>
  </block>
  <block type="procedures_defnoreturn" id="Y7Zaxe`g:iAG[`UXki/G" x="1363" y="112">
    <field name="NAME">inputTime</field>
    <field name="PARAMS"></field>
    <comment pinned="false" h="120" w="160">描述此函式...</comment>
  </block>
  <block type="esp32onebutton" id="ctVK[Q@O8!]yWqDe@~u9" x="1037" y="163">
    <field name="NAME">E</field>
    <field name="NAME2">1</field>
    <statement name="NAME1">
      <block type="math_change" id="1by~P6i_hIa.Lpp:5T66">
        <field name="VAR" id="OvpK~Ji~6{mYtsN^:LKM" variabletype="">ring</field>
        <value name="DELTA">
          <shadow type="math_number" id="odYc9^#K8hjfZNPRNuOi">
            <field name="NUM">2</field>
          </shadow>
        </value>
      </block>
    </statement>
  </block>
  <block type="start" id="_fYq7^%#7+id{BTjl.~A" x="263" y="213">
    <statement name="setup">
      <block type="simplewificonnectesp" id="*V~70]:weM,;5p|},9}C">
        <value name="ssid">
          <shadow type="text3" id="tP:6*pDL$y(DY5ek?7KU">
            <field name="TEXT">root</field>
          </shadow>
        </value>
        <value name="pass">
          <shadow type="text3" id="gn_WrW:;R~d,N%eJWuyF">
            <field name="TEXT">rootroot</field>
          </shadow>
        </value>
        <next>
          <block type="mqttsetup" id=")gr-.tMG%pzmI6[*lMQ7">
            <value name="num1">
              <shadow type="text3" id="dHW2u*^LMS`G:Gs{aS;L">
                <field name="TEXT">broker.mqttdashboard.com</field>
              </shadow>
            </value>
            <value name="port">
              <shadow type="math_number" id="`gN`Pd$;2[qK(P{olj[W">
                <field name="NUM">1883</field>
              </shadow>
            </value>
            <next>
              <block type="mqttsubscribe" id="k4F=NXdV)N=*K%G!m0%6">
                <value name="num1">
                  <shadow type="text3" id="-mmnvkX:*:syOg*m;.ya">
                    <field name="TEXT">/clockTime</field>
                  </shadow>
                </value>
                <next>
                  <block type="mqttsubscribe" id="bP;=gk05]Nkv8rpkM]+L">
                    <value name="num1">
                      <shadow type="text3" id="nKCg?4awnpim^F4Fp==l">
                        <field name="TEXT">/currentTime</field>
                      </shadow>
                    </value>
                    <next>
                      <block type="esp32onebutton1" id="Sh{6.;CRci0*qSWj^fs`">
                        <field name="NAME">E</field>
                        <value name="NUM1">
                          <shadow type="math_number" id="vrQ|8}Xk~GO}tgO3u:lz">
                            <field name="NUM">15</field>
                          </shadow>
                        </value>
                        <next>
                          <block type="ntp_begin" id="w2lXVRD.M,a5`#(M0!p8"></block>
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
    <statement name="loop">
      <block type="ntp_get" id="CoSNSgC*wQ10brvC*g3Y">
        <next>
          <block type="math_change" id="XJec[N6ViJ1Q4?LmTcvx">
            <field name="VAR" id="*jI7{,vBP`VNFUSuH~2s" variabletype="">netTime</field>
            <value name="DELTA">
              <shadow type="math_number" id="mV:#9r2w7T(aZ%cXA*BM">
                <field name="NUM">0</field>
              </shadow>
              <block type="text_join" id="CoFp)Wrxajx(:#7otzz#">
                <mutation items="2"></mutation>
                <value name="ADD0">
                  <block type="transformer" id="ba;[`GpJzf@qGg:si5=.">
                    <field name="NAME">String</field>
                    <value name="value">
                      <block type="ntp_get1" id="T|4`D}}CDZX7f]zlKjI-">
                        <field name="NAME">4</field>
                      </block>
                    </value>
                  </block>
                </value>
                <value name="ADD1">
                  <block type="transformer" id="lwOF]G/jW{2L)h}:SV~R">
                    <field name="NAME">String</field>
                    <value name="value">
                      <block type="ntp_get1" id="`%;d]nxZy.Z4J_#Yhf]`">
                        <field name="NAME">5</field>
                      </block>
                    </value>
                  </block>
                </value>
              </block>
            </value>
            <next>
              <block type="mqttpublish" id="!|ln;-aO+y~~7|Ph+mpa">
                <value name="num1">
                  <shadow type="text3" id="LwpC%~m$Qs+D(c(AhZA9">
                    <field name="TEXT">/currentTime</field>
                  </shadow>
                </value>
                <value name="num2">
                  <shadow type="text3" id=".tR|~MnE.-cZ9ymF^m4k">
                    <field name="TEXT">message</field>
                  </shadow>
                  <block type="variables_get" id="W%eOmO.TH{_S^}jNp1@2">
                    <field name="VAR" id="*jI7{,vBP`VNFUSuH~2s" variabletype="">netTime</field>
                  </block>
                </value>
                <next>
                  <block type="serial_write1" id="L+rd,fY.lxWwki#rH`[f">
                    <value name="value">
                      <shadow type="text" id="%9X!l*qO0o~FWEGRAM/9">
                        <field name="TEXT">Hello</field>
                      </shadow>
                      <block type="variables_get" id="[q27O]tn54#ABIO1#*+a">
                        <field name="VAR" id="*jI7{,vBP`VNFUSuH~2s" variabletype="">netTime</field>
                      </block>
                    </value>
                    <next>
                      <block type="procedures_callnoreturn" id="t=nW~Pk{,,Fa8fLv2eO1">
                        <mutation name="inputTime"></mutation>
                        <field name="NAME">inputTime</field>
                        <next>
                          <block type="arduinodelay1" id="GiGedDc,FY~RJ%aT{%cD">
                            <value name="value">
                              <shadow type="math_number" id="U}joS1^W$%pTu]^tqzQP">
                                <field name="NUM">2</field>
                              </shadow>
                            </value>
                            <next>
                              <block type="serial_write1" id=",24!1=`{`v_+7o.V4|i;">
                                <value name="value">
                                  <shadow type="text" id="ZBxUr+v9!.Z1ka7KU|nr">
                                    <field name="TEXT">Hello</field>
                                  </shadow>
                                  <block type="variables_get" id="4De,E0.*v?c6dB}^[e@x">
                                    <field name="VAR" id="9~y{jvQ8/[4!pu_~wAMR" variabletype="">myTime</field>
                                  </block>
                                </value>
                                <next>
                                  <block type="controls_whileUntil" id="[E]Bbd^JF/)qKVwaVtV_">
                                    <field name="MODE">WHILE</field>
                                    <value name="BOOL">
                                      <block type="logic_compare" id="!M%m04?^W,g}80bo7(8G">
                                        <field name="OP">EQ</field>
                                        <value name="A">
                                          <block type="variables_get" id="GEq5?_yMd0)2NgDtX)r#">
                                            <field name="VAR" id="9~y{jvQ8/[4!pu_~wAMR" variabletype="">myTime</field>
                                          </block>
                                        </value>
                                        <value name="B">
                                          <block type="variables_get" id="6R1ea!ML#=,O!0Q.UDsw">
                                            <field name="VAR" id="*jI7{,vBP`VNFUSuH~2s" variabletype="">netTime</field>
                                          </block>
                                        </value>
                                      </block>
                                    </value>
                                    <statement name="DO">
                                      <block type="math_change" id="A)Z2|W+a`Kd]xF[{P%~7">
                                        <field name="VAR" id="OvpK~Ji~6{mYtsN^:LKM" variabletype="">ring</field>
                                        <value name="DELTA">
                                          <shadow type="math_number" id="/V$BwltIP;$4S-grB+Oj">
                                            <field name="NUM">1</field>
                                          </shadow>
                                        </value>
                                      </block>
                                    </statement>
                                    <next>
                                      <block type="controls_whileUntil" id="S.31,MY_;bj3{%kK7sMB">
                                        <field name="MODE">WHILE</field>
                                        <value name="BOOL">
                                          <block type="logic_compare" id=":}YQQ8-(xPB!YxN6AxWT">
                                            <field name="OP">EQ</field>
                                            <value name="A">
                                              <block type="variables_get" id="/]`8^vQU)i4rU1T*iTSb">
                                                <field name="VAR" id="OvpK~Ji~6{mYtsN^:LKM" variabletype="">ring</field>
                                              </block>
                                            </value>
                                            <value name="B">
                                              <block type="math_number" id="%@~l/:uFh4x_4lIawhzl">
                                                <field name="NUM">1</field>
                                              </block>
                                            </value>
                                          </block>
                                        </value>
                                        <statement name="DO">
                                          <block type="esp32tone" id="eby4zZwQjw^h81/T0|sB">
                                            <field name="NAME">131</field>
                                            <value name="num1">
                                              <shadow type="math_number" id="rvU+oMdOIXs1D|o}^#om">
                                                <field name="NUM">13</field>
                                              </shadow>
                                            </value>
                                            <value name="num">
                                              <shadow type="math_number" id="80,{uK3Tt=l$J3}2C1[y">
                                                <field name="NUM">1000</field>
                                              </shadow>
                                            </value>
                                            <next>
                                              <block type="procedures_callnoreturn" id="^H.xXmdScl7O^@aqB7Z9">
                                                <mutation name="Move"></mutation>
                                                <field name="NAME">Move</field>
                                              </block>
                                            </next>
                                          </block>
                                        </statement>
                                        <next>
                                          <block type="controls_whileUntil" id="I1qeo-5]5@2~717qsbY}">
                                            <field name="MODE">WHILE</field>
                                            <value name="BOOL">
                                              <block type="logic_compare" id="KiS,7CsB^Si$C=RKQuD0">
                                                <field name="OP">EQ</field>
                                                <value name="A">
                                                  <block type="variables_get" id="srjuKy%TMs@`uRcIIFPU">
                                                    <field name="VAR" id="OvpK~Ji~6{mYtsN^:LKM" variabletype="">ring</field>
                                                  </block>
                                                </value>
                                                <value name="B">
                                                  <block type="math_number" id="j`oCVCpP.a8jx^uZ:F*{">
                                                    <field name="NUM">2</field>
                                                  </block>
                                                </value>
                                              </block>
                                            </value>
                                            <statement name="DO">
                                              <block type="ESP32CAM1" id="W2jKu`^Zoh7*}t]vhRGl">
                                                <field name="pin1">0</field>
                                                <next>
                                                  <block type="ESP32CAM2" id="KF#];.59`9ocLM;U2xL@">
                                                    <next>
                                                      <block type="pocketimagewrite1" id="A/`N5sqNGO$(6d:d9UH9">
                                                        <value name="num1">
                                                          <shadow type="text3" id="3=8%a)m}n(EL+23jA+-%">
                                                            <field name="TEXT">/photo.jpg</field>
                                                          </shadow>
                                                        </value>
                                                        <next>
                                                          <block type="ESP32CAMclose1" id="fBc2AFQCG35mL,*F:~bs">
                                                            <next>
                                                              <block type="Line" id="5j6T+KcA,HAGMSL6m,=+">
                                                                <value name="num1">
                                                                  <shadow type="text3" id="%VuWoLv0;b/Dm2Bv5_,H">
                                                                    <field name="TEXT">gHdqJoUGsm41dacxVKVRP4fvGQpc6TGSx70OkmT2hls</field>
                                                                  </shadow>
                                                                </value>
                                                                <next>
                                                                  <block type="Line2" id="mXZcDZ%oke#wY4wV_:])">
                                                                    <value name="num1">
                                                                      <shadow type="text3" id="*aj7i13~pQl%#e(kgPp[">
                                                                        <field name="TEXT">Haha</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <value name="num2">
                                                                      <shadow type="text3" id="||P=aGOw|gezOJ_S$+%k">
                                                                        <field name="TEXT">/photo.jpg</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <next>
                                                                      <block type="math_change" id="_`FO8,MMhIfe3Sw-1vxv">
                                                                        <field name="VAR" id="OvpK~Ji~6{mYtsN^:LKM" variabletype="">ring</field>
                                                                        <value name="DELTA">
                                                                          <shadow type="math_number" id="fPxj@?`##w[S21sX-ko!">
                                                                            <field name="NUM">0</field>
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
        </next>
      </block>
    </statement>
  </block>
  <block type="procedures_defnoreturn" id=";|fAu87NhAc%Z-N3nf-8" x="1413" y="588">
    <field name="NAME">Move</field>
    <field name="PARAMS"></field>
    <comment pinned="false" h="120" w="160">描述此函式...</comment>
    <statement name="STACK">
      <block type="variables_set" id="Kc,Sdp)Wwfgr|bK8XGPq">
        <field name="VALUE1">int</field>
        <field name="VAR" id="Y~%18{h/.A}[NJkGeDM(" variabletype="">straight</field>
        <value name="VALUE">
          <block type="math_random_int" id="/u.9[1XAMf,^PcGC}FdI">
            <value name="FROM">
              <shadow type="math_number" id="Qy38Ixeob|h^o)d!q70b">
                <field name="NUM">5</field>
              </shadow>
            </value>
            <value name="TO">
              <shadow type="math_number" id="3H*]5Ip8IK!zSQUb{58h">
                <field name="NUM">10</field>
              </shadow>
            </value>
          </block>
        </value>
        <next>
          <block type="variables_set" id="S!{+1`HYpFWQttxHoc(a">
            <field name="VALUE1">int</field>
            <field name="VAR" id=")9.PZLf!({9.91aDGEg#" variabletype="">rstraight</field>
            <value name="VALUE">
              <block type="math_random_int" id="2hHd9*3w[v-hCb@k9SmE">
                <value name="FROM">
                  <shadow type="math_number" id="Zr-e1^u*/z.GRSgV#T=~">
                    <field name="NUM">1</field>
                  </shadow>
                </value>
                <value name="TO">
                  <shadow type="math_number" id="fV$*e$:(h59kH*@zyU}Y">
                    <field name="NUM">3</field>
                  </shadow>
                </value>
              </block>
            </value>
            <next>
              <block type="digital12" id="j}*ZSteOxy{Cf!q^^+x5">
                <value name="pin">
                  <shadow type="math_number" id="OaaOZokbI/Gm6Av/S6w5">
                    <field name="NUM">22</field>
                  </shadow>
                </value>
                <value name="value">
                  <shadow type="math_number" id="g.QnD*%:rOveNn(*8H:o">
                    <field name="NUM">1</field>
                  </shadow>
                </value>
                <next>
                  <block type="digital12" id="nW/wwwO0aRJ+uyh9vFhM">
                    <value name="pin">
                      <shadow type="math_number" id="j59wRG+b4v[6!L?zXCVX">
                        <field name="NUM">23</field>
                      </shadow>
                    </value>
                    <value name="value">
                      <shadow type="math_number" id="BFJ=16t3DtWLf~XD:VWp">
                        <field name="NUM">0</field>
                      </shadow>
                    </value>
                    <next>
                      <block type="digital12" id="V1sY9QV?YDk_EKL`l-wX">
                        <value name="pin">
                          <shadow type="math_number" id="Yr,2XoTh0_}re}l?+v4g">
                            <field name="NUM">16</field>
                          </shadow>
                        </value>
                        <value name="value">
                          <shadow type="math_number" id="VYetlI9NP`+N].00@jqI">
                            <field name="NUM">1</field>
                          </shadow>
                        </value>
                        <next>
                          <block type="digital12" id="B]M=2I!j:U=a/#r.3!}1">
                            <value name="pin">
                              <shadow type="math_number" id="Ucp2laeBhR0s:b`oynf2">
                                <field name="NUM">17</field>
                              </shadow>
                            </value>
                            <value name="value">
                              <shadow type="math_number" id="O1oZgNGyN#QYd1`GYlIv">
                                <field name="NUM">0</field>
                              </shadow>
                            </value>
                            <next>
                              <block type="controls_for" id="BPV;EkO^x]VqKQ/1n?[z">
                                <value name="VAR">
                                  <shadow type="variables_get" id="L`Dx`#od8PLt6msi,0[2">
                                    <field name="VAR" id="N}wjo_YNXBHqwZ$J;Y%;" variabletype="">index</field>
                                  </shadow>
                                </value>
                                <value name="FROM">
                                  <shadow type="math_number" id="Nw(aQ8HLoEG(FSZMqkCw">
                                    <field name="NUM">0</field>
                                  </shadow>
                                </value>
                                <value name="TO">
                                  <shadow type="math_number" id="z{sUgHO_@?9+bIMj7}+0">
                                    <field name="NUM">10</field>
                                  </shadow>
                                  <block type="variables_get" id="J0zeN/t]zZ`Qa#nxnm3I">
                                    <field name="VAR" id="Y~%18{h/.A}[NJkGeDM(" variabletype="">straight</field>
                                  </block>
                                </value>
                                <value name="BY">
                                  <shadow type="math_number" id="[S*H:U#Ki(9*;/7pBo)8">
                                    <field name="NUM">1</field>
                                  </shadow>
                                </value>
                                <statement name="DO">
                                  <block type="controls_if" id=":IeNQrdx](GX^R1+.G@R">
                                    <value name="IF0">
                                      <shadow type="logic_boolean" id="cF^tUtlWkgz|qi)QoR|Q">
                                        <field name="BOOL">TRUE</field>
                                      </shadow>
                                      <block type="logic_compare" id="l)yb?}Ej,m$!e*(},#l@">
                                        <field name="OP">LT</field>
                                        <value name="A">
                                          <block type="aultrasound" id="XobJw!+=pMp7g#L|.pH0">
                                            <value name="pin">
                                              <shadow type="math_number" id="JCqQaNil):6n@|PpDsp[">
                                                <field name="NUM">2</field>
                                              </shadow>
                                            </value>
                                            <value name="pin1">
                                              <shadow type="math_number" id="gR-4C_rqpY[t;ahhi49+">
                                                <field name="NUM">3</field>
                                              </shadow>
                                            </value>
                                          </block>
                                        </value>
                                        <value name="B">
                                          <block type="math_number" id="f/U?tZFC^5@|!Xt=yMwW">
                                            <field name="NUM">20</field>
                                          </block>
                                        </value>
                                      </block>
                                    </value>
                                    <statement name="DO0">
                                      <block type="math_change" id="XHBykb}8bB{/n-OL0)$s">
                                        <field name="VAR" id=")9.PZLf!({9.91aDGEg#" variabletype="">rstraight</field>
                                        <value name="DELTA">
                                          <shadow type="math_number" id="%+C$ru$%3^^M;13Dsi{K">
                                            <field name="NUM">1</field>
                                          </shadow>
                                          <block type="math_random_int" id="p!aWXW-7Y[PG0VmHUGIA">
                                            <value name="FROM">
                                              <shadow type="math_number" id="XMAFM:qU7Orp[KMN;@4!">
                                                <field name="NUM">1</field>
                                              </shadow>
                                            </value>
                                            <value name="TO">
                                              <shadow type="math_number" id="fl)HtB9/_u;bXX6tWua%">
                                                <field name="NUM">3</field>
                                              </shadow>
                                            </value>
                                          </block>
                                        </value>
                                        <next>
                                          <block type="variables_set" id="=]o:vdb:Q-wz@EL2WnKq">
                                            <field name="VALUE1">int</field>
                                            <field name="VAR" id="#3N)$VZ9OAi@xazI7ESH" variabletype="">iLR</field>
                                            <value name="VALUE">
                                              <block type="math_random_int" id="s+grvJdWHl%55PnYqfSf">
                                                <value name="FROM">
                                                  <shadow type="math_number" id="p=s;N%z4$(4!DK65c[h{">
                                                    <field name="NUM">0</field>
                                                  </shadow>
                                                </value>
                                                <value name="TO">
                                                  <shadow type="math_number" id="k$)_iU9R~y}eu^`xDf.2">
                                                    <field name="NUM">1</field>
                                                  </shadow>
                                                </value>
                                              </block>
                                            </value>
                                            <next>
                                              <block type="variables_set" id="o!HLJ{gEVYUdW+a_#P}j">
                                                <field name="VALUE1">int</field>
                                                <field name="VAR" id="~!07K?E%(P#%L*{ezug[" variabletype="">iRS</field>
                                                <value name="VALUE">
                                                  <block type="math_random_int" id="wM2rr)KCYP7Jig*JW*Bk">
                                                    <value name="FROM">
                                                      <shadow type="math_number" id="pJ@nkJ;C(]@n%LLK$/])">
                                                        <field name="NUM">1</field>
                                                      </shadow>
                                                    </value>
                                                    <value name="TO">
                                                      <shadow type="math_number" id="=tGvj,aio?;g-8|ThJc4">
                                                        <field name="NUM">3</field>
                                                      </shadow>
                                                    </value>
                                                  </block>
                                                </value>
                                                <next>
                                                  <block type="controls_if" id="C5vn{+KVaDcSWsWv|G6S">
                                                    <value name="IF0">
                                                      <shadow type="logic_boolean" id="LD}bnFml(L|qwY?~UiYl">
                                                        <field name="BOOL">TRUE</field>
                                                      </shadow>
                                                      <block type="logic_compare" id="B3Ou]jJKK3VX3XWh*KHN">
                                                        <field name="OP">EQ</field>
                                                        <value name="A">
                                                          <block type="variables_get" id="z2_LD$;besv}J`*$Z*6w">
                                                            <field name="VAR" id="#3N)$VZ9OAi@xazI7ESH" variabletype="">iLR</field>
                                                          </block>
                                                        </value>
                                                        <value name="B">
                                                          <block type="math_number" id="gxx|pkBvrcGvN:!P785%">
                                                            <field name="NUM">0</field>
                                                          </block>
                                                        </value>
                                                      </block>
                                                    </value>
                                                    <statement name="DO0">
                                                      <block type="digital12" id="+[zJ(7-gBR/0`jI~{Kr?">
                                                        <value name="pin">
                                                          <shadow type="math_number" id="~G*F:q~k[~AZPo3r#f,r">
                                                            <field name="NUM">22</field>
                                                          </shadow>
                                                        </value>
                                                        <value name="value">
                                                          <shadow type="math_number" id="9U~dv=3O^8vcWs42%0.A">
                                                            <field name="NUM">1</field>
                                                          </shadow>
                                                        </value>
                                                        <next>
                                                          <block type="digital12" id="-K%$l5J4TeXsO[lLSZ):">
                                                            <value name="pin">
                                                              <shadow type="math_number" id="*ikkp4B=iv=ISsJhZ8Yt">
                                                                <field name="NUM">23</field>
                                                              </shadow>
                                                            </value>
                                                            <value name="value">
                                                              <shadow type="math_number" id="{}go]z{`#-0_o*n=]w5{">
                                                                <field name="NUM">0</field>
                                                              </shadow>
                                                            </value>
                                                            <next>
                                                              <block type="digital12" id="}#x!Vq[Kmqe)NxqH0of]">
                                                                <value name="pin">
                                                                  <shadow type="math_number" id="Y5~_J{7kTYUs=ahB[h$n">
                                                                    <field name="NUM">16</field>
                                                                  </shadow>
                                                                </value>
                                                                <value name="value">
                                                                  <shadow type="math_number" id="$^VCE_`$gvrpFA*=O7vt">
                                                                    <field name="NUM">0</field>
                                                                  </shadow>
                                                                </value>
                                                                <next>
                                                                  <block type="digital12" id="![yw(+g~C*NoxUoMTC.$">
                                                                    <value name="pin">
                                                                      <shadow type="math_number" id=":,;wDc8v7k;9?(YpeIS9">
                                                                        <field name="NUM">17</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <value name="value">
                                                                      <shadow type="math_number" id="SzmS|ywukq[U^PqLWy{~">
                                                                        <field name="NUM">1</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <next>
                                                                      <block type="arduinodelay1" id="Qq1W=DMGZVTRVXC^1rCu">
                                                                        <value name="value">
                                                                          <shadow type="math_number" id="fgJdxIwS*bgc$lh8h;hg">
                                                                            <field name="NUM">100</field>
                                                                          </shadow>
                                                                          <block type="variables_get" id="($l#WLdmA9$y}lunG3,+">
                                                                            <field name="VAR" id=")9.PZLf!({9.91aDGEg#" variabletype="">rstraight</field>
                                                                          </block>
                                                                        </value>
                                                                        <next>
                                                                          <block type="digital12" id="_4CD/H+^1`bRGw@V:I,A">
                                                                            <value name="pin">
                                                                              <shadow type="math_number" id="l_jObjRcHc9.VK%_F.E`">
                                                                                <field name="NUM">22</field>
                                                                              </shadow>
                                                                            </value>
                                                                            <value name="value">
                                                                              <shadow type="math_number" id="`N9|6cCFTok}Q0iOq-iC">
                                                                                <field name="NUM">0</field>
                                                                              </shadow>
                                                                            </value>
                                                                            <next>
                                                                              <block type="digital12" id="W8$F~;b:+StuJAL6FBAh">
                                                                                <value name="pin">
                                                                                  <shadow type="math_number" id="!4`+)`[*:o=WAHMYP6U.">
                                                                                    <field name="NUM">23</field>
                                                                                  </shadow>
                                                                                </value>
                                                                                <value name="value">
                                                                                  <shadow type="math_number" id="j*3sm68[8=9hN,H%M[J0">
                                                                                    <field name="NUM">0</field>
                                                                                  </shadow>
                                                                                </value>
                                                                                <next>
                                                                                  <block type="digital12" id="xr^5.imIUA+FNPl%09Z]">
                                                                                    <value name="pin">
                                                                                      <shadow type="math_number" id="vv3!?5PelJCRF$:9Wt)c">
                                                                                        <field name="NUM">16</field>
                                                                                      </shadow>
                                                                                    </value>
                                                                                    <value name="value">
                                                                                      <shadow type="math_number" id="xj5[N[0qvo``*BhXf754">
                                                                                        <field name="NUM">0</field>
                                                                                      </shadow>
                                                                                    </value>
                                                                                    <next>
                                                                                      <block type="digital12" id="D@291YBrsu@9^?@Tusr1">
                                                                                        <value name="pin">
                                                                                          <shadow type="math_number" id="$e]k)U1u]gJDTarTJ%Jz">
                                                                                            <field name="NUM">17</field>
                                                                                          </shadow>
                                                                                        </value>
                                                                                        <value name="value">
                                                                                          <shadow type="math_number" id="8O3WHNr!U9W@SYm])}|w">
                                                                                            <field name="NUM">0</field>
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
                                                                </next>
                                                              </block>
                                                            </next>
                                                          </block>
                                                        </next>
                                                      </block>
                                                    </statement>
                                                    <next>
                                                      <block type="controls_if" id="r|j.~42{{Q_`9GtOp~mh">
                                                        <value name="IF0">
                                                          <shadow type="logic_boolean" id="LD}bnFml(L|qwY?~UiYl">
                                                            <field name="BOOL">TRUE</field>
                                                          </shadow>
                                                          <block type="logic_compare" id="D/L[0K~v2t-hU(LFv,/s">
                                                            <field name="OP">EQ</field>
                                                            <value name="A">
                                                              <block type="variables_get" id="=$D0sg-5@+WxG~-8GC5U">
                                                                <field name="VAR" id="#3N)$VZ9OAi@xazI7ESH" variabletype="">iLR</field>
                                                              </block>
                                                            </value>
                                                            <value name="B">
                                                              <block type="math_number" id=",e(Fnu!Y{1NjRoNf,*$:">
                                                                <field name="NUM">1</field>
                                                              </block>
                                                            </value>
                                                          </block>
                                                        </value>
                                                        <statement name="DO0">
                                                          <block type="digital12" id="h0vO!vTB8,BRMSwex:p3">
                                                            <value name="pin">
                                                              <shadow type="math_number" id="Bbam`pXV*[lcW]Gx4)Vr">
                                                                <field name="NUM">22</field>
                                                              </shadow>
                                                            </value>
                                                            <value name="value">
                                                              <shadow type="math_number" id="+[gKc-2:0)d3)Z#{i_*f">
                                                                <field name="NUM">0</field>
                                                              </shadow>
                                                            </value>
                                                            <next>
                                                              <block type="digital12" id="v}guq)%6R{u*UYw7d)2G">
                                                                <value name="pin">
                                                                  <shadow type="math_number" id="Ws}{Q*d)#aNwlLMO1IhX">
                                                                    <field name="NUM">23</field>
                                                                  </shadow>
                                                                </value>
                                                                <value name="value">
                                                                  <shadow type="math_number" id="z@4m?){3iB9NtV1`!;.`">
                                                                    <field name="NUM">1</field>
                                                                  </shadow>
                                                                </value>
                                                                <next>
                                                                  <block type="digital12" id="/Kz(;?;InT`PH7:[Ur]R">
                                                                    <value name="pin">
                                                                      <shadow type="math_number" id="Jf=Qd!l2k[i,I$:A/nJ0">
                                                                        <field name="NUM">16</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <value name="value">
                                                                      <shadow type="math_number" id="lz7om*)^A_xy^E1CA4?)">
                                                                        <field name="NUM">1</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <next>
                                                                      <block type="digital12" id="^FbP,11]3CqfH(XPk_K{">
                                                                        <value name="pin">
                                                                          <shadow type="math_number" id="V]%$F%)a[dqE{Tx9f#0{">
                                                                            <field name="NUM">17</field>
                                                                          </shadow>
                                                                        </value>
                                                                        <value name="value">
                                                                          <shadow type="math_number" id="DK+_6J-A1V3eAQ0Gz)PZ">
                                                                            <field name="NUM">0</field>
                                                                          </shadow>
                                                                        </value>
                                                                        <next>
                                                                          <block type="arduinodelay1" id="Dzfg!]7#f2.x^A!fAHBc">
                                                                            <value name="value">
                                                                              <shadow type="math_number" id="fgJdxIwS*bgc$lh8h;hg">
                                                                                <field name="NUM">100</field>
                                                                              </shadow>
                                                                              <block type="variables_get" id="_*t+?:ji$J_tt-qy:j=q">
                                                                                <field name="VAR" id=")9.PZLf!({9.91aDGEg#" variabletype="">rstraight</field>
                                                                              </block>
                                                                            </value>
                                                                            <next>
                                                                              <block type="digital12" id="JG,vD:Zz0;*jLUQF}2`H">
                                                                                <value name="pin">
                                                                                  <shadow type="math_number" id="Qr4]_;PCM;aIGLTK~q%F">
                                                                                    <field name="NUM">22</field>
                                                                                  </shadow>
                                                                                </value>
                                                                                <value name="value">
                                                                                  <shadow type="math_number" id="a19Fx{_VD)@!4.Qk-w8t">
                                                                                    <field name="NUM">0</field>
                                                                                  </shadow>
                                                                                </value>
                                                                                <next>
                                                                                  <block type="digital12" id="Ea|X.=M+j$[Y1|KSlc*[">
                                                                                    <value name="pin">
                                                                                      <shadow type="math_number" id="v#WilcZ_7Zb%04pG:wPR">
                                                                                        <field name="NUM">23</field>
                                                                                      </shadow>
                                                                                    </value>
                                                                                    <value name="value">
                                                                                      <shadow type="math_number" id="k9bm2]d^laEt6uik!OsS">
                                                                                        <field name="NUM">0</field>
                                                                                      </shadow>
                                                                                    </value>
                                                                                    <next>
                                                                                      <block type="digital12" id="]do3m.M_;ubW0`J9dvJ3">
                                                                                        <value name="pin">
                                                                                          <shadow type="math_number" id="bbn(qy1WiDl5j4(Qxfne">
                                                                                            <field name="NUM">16</field>
                                                                                          </shadow>
                                                                                        </value>
                                                                                        <value name="value">
                                                                                          <shadow type="math_number" id="=%V$63W4MBfb;Ig[N!tl">
                                                                                            <field name="NUM">0</field>
                                                                                          </shadow>
                                                                                        </value>
                                                                                        <next>
                                                                                          <block type="digital12" id="-Yplc?Ihms7bG}hOyA(L">
                                                                                            <value name="pin">
                                                                                              <shadow type="math_number" id="/mV|y}s)q;Vqju`xkcg*">
                                                                                                <field name="NUM">17</field>
                                                                                              </shadow>
                                                                                            </value>
                                                                                            <value name="value">
                                                                                              <shadow type="math_number" id="n;Y?8}6-nV}lEY%ZLFk|">
                                                                                                <field name="NUM">0</field>
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
                                                                    </next>
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
                                            </next>
                                          </block>
                                        </next>
                                      </block>
                                    </statement>
                                    <next>
                                      <block type="arduinodelay1" id="lmW^LI[vfG2J$kj/6yQh">
                                        <value name="value">
                                          <shadow type="math_number" id="fgJdxIwS*bgc$lh8h;hg">
                                            <field name="NUM">100</field>
                                          </shadow>
                                          <block type="math_number" id="9T=.zG?{WAQn[_lj*VG!">
                                            <field name="NUM">1</field>
                                          </block>
                                        </value>
                                      </block>
                                    </next>
                                  </block>
                                </statement>
                                <next>
                                  <block type="math_change" id="ID-^{T(]m]=Y(cc^Vzk*">
                                    <field name="VAR" id=")9.PZLf!({9.91aDGEg#" variabletype="">rstraight</field>
                                    <value name="DELTA">
                                      <shadow type="math_number" id="%+C$ru$%3^^M;13Dsi{K">
                                        <field name="NUM">1</field>
                                      </shadow>
                                      <block type="math_random_int" id="s[~9CjWqL1O%L1_E$i.~">
                                        <value name="FROM">
                                          <shadow type="math_number" id="WTKYY;S-`={zNC(Oo,s!">
                                            <field name="NUM">1</field>
                                          </shadow>
                                        </value>
                                        <value name="TO">
                                          <shadow type="math_number" id="S$GTmti=A9Rbr0D/qU6e">
                                            <field name="NUM">3</field>
                                          </shadow>
                                        </value>
                                      </block>
                                    </value>
                                    <next>
                                      <block type="digital12" id="ymkwrclJ;m]N+aVA_@}%">
                                        <value name="pin">
                                          <shadow type="math_number" id="nz%~j[IM0IBHv=Osg]0B">
                                            <field name="NUM">22</field>
                                          </shadow>
                                        </value>
                                        <value name="value">
                                          <shadow type="math_number" id="dO@-qB?t_F3icG]W;Pb@">
                                            <field name="NUM">0</field>
                                          </shadow>
                                        </value>
                                        <next>
                                          <block type="digital12" id="KGLfM^K5)DeUN7dXbD_z">
                                            <value name="pin">
                                              <shadow type="math_number" id="CjF)98TS{GVHf/y1/UUo">
                                                <field name="NUM">23</field>
                                              </shadow>
                                            </value>
                                            <value name="value">
                                              <shadow type="math_number" id="Y.xx{Q^O{be+p-Nt3-].">
                                                <field name="NUM">0</field>
                                              </shadow>
                                            </value>
                                            <next>
                                              <block type="digital12" id="[=M]W$JTXxUu}zhZnwDf">
                                                <value name="pin">
                                                  <shadow type="math_number" id="];`,,J[R=5(;:SE`ioKM">
                                                    <field name="NUM">16</field>
                                                  </shadow>
                                                </value>
                                                <value name="value">
                                                  <shadow type="math_number" id="--0{Y4i_$n-zZ}ZII`oC">
                                                    <field name="NUM">0</field>
                                                  </shadow>
                                                </value>
                                                <next>
                                                  <block type="digital12" id="-!p}BaJ,v8l^BK@%}W.F">
                                                    <value name="pin">
                                                      <shadow type="math_number" id="1q,^8`q3nY|eu+o8GA4m">
                                                        <field name="NUM">17</field>
                                                      </shadow>
                                                    </value>
                                                    <value name="value">
                                                      <shadow type="math_number" id="5jsXZdv%enBU?n@VX@yu">
                                                        <field name="NUM">0</field>
                                                      </shadow>
                                                    </value>
                                                    <next>
                                                      <block type="variables_set" id="K2TzK;m.N8y/fggbQaDq">
                                                        <field name="VALUE1">int</field>
                                                        <field name="VAR" id="-U~Eq{_wYa~trFUn/sAe" variabletype="">lR</field>
                                                        <value name="VALUE">
                                                          <block type="math_random_int" id="j/%0Yy!8=yR%qiFNJl`e">
                                                            <value name="FROM">
                                                              <shadow type="math_number" id="E:52n5?Gl|.lRf|eH+~!">
                                                                <field name="NUM">0</field>
                                                              </shadow>
                                                            </value>
                                                            <value name="TO">
                                                              <shadow type="math_number" id="!e4:`bSQ(K^}a?44O(Og">
                                                                <field name="NUM">1</field>
                                                              </shadow>
                                                            </value>
                                                          </block>
                                                        </value>
                                                        <next>
                                                          <block type="controls_if" id="ZfZc3`h8Uy|)o0MfN*|H">
                                                            <value name="IF0">
                                                              <shadow type="logic_boolean" id="LD}bnFml(L|qwY?~UiYl">
                                                                <field name="BOOL">TRUE</field>
                                                              </shadow>
                                                              <block type="logic_compare" id="/T2dG**QrNo_kY]F3A{[">
                                                                <field name="OP">EQ</field>
                                                                <value name="A">
                                                                  <block type="variables_get" id="[+08/+iWx~vJzc-^t(TF">
                                                                    <field name="VAR" id="-U~Eq{_wYa~trFUn/sAe" variabletype="">lR</field>
                                                                  </block>
                                                                </value>
                                                                <value name="B">
                                                                  <block type="math_number" id="rX:g!OCqWc%nzVG}}F.J">
                                                                    <field name="NUM">0</field>
                                                                  </block>
                                                                </value>
                                                              </block>
                                                            </value>
                                                            <statement name="DO0">
                                                              <block type="digital12" id="Gs)JWY:$Kzl.=p]!h6Ow">
                                                                <value name="pin">
                                                                  <shadow type="math_number" id="R%CF)mD]i9Z+HX`J-3Ec">
                                                                    <field name="NUM">22</field>
                                                                  </shadow>
                                                                </value>
                                                                <value name="value">
                                                                  <shadow type="math_number" id="Ire-l~?1a=(.!bkmT==G">
                                                                    <field name="NUM">1</field>
                                                                  </shadow>
                                                                </value>
                                                                <next>
                                                                  <block type="digital12" id="^rriafUMM_yJ7qiIBc,s">
                                                                    <value name="pin">
                                                                      <shadow type="math_number" id="85SX4id@*jyP[vKOpgv{">
                                                                        <field name="NUM">23</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <value name="value">
                                                                      <shadow type="math_number" id="FxN[D01@nf;;U=,lpGA.">
                                                                        <field name="NUM">0</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <next>
                                                                      <block type="digital12" id=":^f8mrIhM|9%g{,Z+?e/">
                                                                        <value name="pin">
                                                                          <shadow type="math_number" id="lp`#$M++gMXQ^@Q=!8nC">
                                                                            <field name="NUM">16</field>
                                                                          </shadow>
                                                                        </value>
                                                                        <value name="value">
                                                                          <shadow type="math_number" id="YXMt.Voxfo44OD;}WSyB">
                                                                            <field name="NUM">0</field>
                                                                          </shadow>
                                                                        </value>
                                                                        <next>
                                                                          <block type="digital12" id="l5`C.3Nh)?M4*d5W`xq#">
                                                                            <value name="pin">
                                                                              <shadow type="math_number" id="):nT$A8m_rBwe[+(up7j">
                                                                                <field name="NUM">17</field>
                                                                              </shadow>
                                                                            </value>
                                                                            <value name="value">
                                                                              <shadow type="math_number" id="c|=W:v::G[q*7XhV`0yK">
                                                                                <field name="NUM">1</field>
                                                                              </shadow>
                                                                            </value>
                                                                            <next>
                                                                              <block type="arduinodelay1" id="B1{Tf=R_7t$ARa+vV9UU">
                                                                                <value name="value">
                                                                                  <shadow type="math_number" id="fgJdxIwS*bgc$lh8h;hg">
                                                                                    <field name="NUM">100</field>
                                                                                  </shadow>
                                                                                  <block type="variables_get" id="nV/9O78+L:i_X6D7?M9?">
                                                                                    <field name="VAR" id=")9.PZLf!({9.91aDGEg#" variabletype="">rstraight</field>
                                                                                  </block>
                                                                                </value>
                                                                                <next>
                                                                                  <block type="digital12" id="By_50[-eSF`771$mUp77">
                                                                                    <value name="pin">
                                                                                      <shadow type="math_number" id="^=9m!bf3#YbWqR)OiN4Z">
                                                                                        <field name="NUM">22</field>
                                                                                      </shadow>
                                                                                    </value>
                                                                                    <value name="value">
                                                                                      <shadow type="math_number" id="qD:0.(;duA#]thqhv?Uw">
                                                                                        <field name="NUM">0</field>
                                                                                      </shadow>
                                                                                    </value>
                                                                                    <next>
                                                                                      <block type="digital12" id="Y^zHC!_]T}i!;iK-3I;V">
                                                                                        <value name="pin">
                                                                                          <shadow type="math_number" id="V.1ZXdq14u9b+fem1vl#">
                                                                                            <field name="NUM">23</field>
                                                                                          </shadow>
                                                                                        </value>
                                                                                        <value name="value">
                                                                                          <shadow type="math_number" id="7-jk/lXtp;n-ur7/QARM">
                                                                                            <field name="NUM">0</field>
                                                                                          </shadow>
                                                                                        </value>
                                                                                        <next>
                                                                                          <block type="digital12" id="Vp~mR`0,D93f_(:!o^vJ">
                                                                                            <value name="pin">
                                                                                              <shadow type="math_number" id="Z{C?3i{jGJ{+dw5gM7{g">
                                                                                                <field name="NUM">16</field>
                                                                                              </shadow>
                                                                                            </value>
                                                                                            <value name="value">
                                                                                              <shadow type="math_number" id="wqn),=xrhEx{hATuvow8">
                                                                                                <field name="NUM">0</field>
                                                                                              </shadow>
                                                                                            </value>
                                                                                            <next>
                                                                                              <block type="digital12" id="sSx$UR*Yn*K0hqweM_-g">
                                                                                                <value name="pin">
                                                                                                  <shadow type="math_number" id="ux=ftsL_YUxX9-3~If/k">
                                                                                                    <field name="NUM">17</field>
                                                                                                  </shadow>
                                                                                                </value>
                                                                                                <value name="value">
                                                                                                  <shadow type="math_number" id="JvY13t}cUV$AdYnRVNZN">
                                                                                                    <field name="NUM">0</field>
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
                                                                        </next>
                                                                      </block>
                                                                    </next>
                                                                  </block>
                                                                </next>
                                                              </block>
                                                            </statement>
                                                            <next>
                                                              <block type="controls_if" id="c9NxsDx?M8+z8hE/WurQ">
                                                                <value name="IF0">
                                                                  <shadow type="logic_boolean" id="LD}bnFml(L|qwY?~UiYl">
                                                                    <field name="BOOL">TRUE</field>
                                                                  </shadow>
                                                                  <block type="logic_compare" id="lP582`X!nwzwiR?w})jG">
                                                                    <field name="OP">EQ</field>
                                                                    <value name="A">
                                                                      <block type="variables_get" id="K:p$ERJ`*w/@dOJ%AB%?">
                                                                        <field name="VAR" id="-U~Eq{_wYa~trFUn/sAe" variabletype="">lR</field>
                                                                      </block>
                                                                    </value>
                                                                    <value name="B">
                                                                      <block type="math_number" id="n)m@7=|fI$7!RF8$~C+o">
                                                                        <field name="NUM">1</field>
                                                                      </block>
                                                                    </value>
                                                                  </block>
                                                                </value>
                                                                <statement name="DO0">
                                                                  <block type="digital12" id="s9h39:Hy75au%.VO;@?}">
                                                                    <value name="pin">
                                                                      <shadow type="math_number" id="-|v/B[]te*)xTV;VE9Si">
                                                                        <field name="NUM">22</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <value name="value">
                                                                      <shadow type="math_number" id="0q,%p8:bt-B@8_gd!6Rb">
                                                                        <field name="NUM">0</field>
                                                                      </shadow>
                                                                    </value>
                                                                    <next>
                                                                      <block type="digital12" id="^=;POG7i7AyJm2hV^^v3">
                                                                        <value name="pin">
                                                                          <shadow type="math_number" id="=j-!9pwu9{qM*/pxEO2?">
                                                                            <field name="NUM">23</field>
                                                                          </shadow>
                                                                        </value>
                                                                        <value name="value">
                                                                          <shadow type="math_number" id="T!=Jam]t1:JTI7r*H)!d">
                                                                            <field name="NUM">1</field>
                                                                          </shadow>
                                                                        </value>
                                                                        <next>
                                                                          <block type="digital12" id="S]q#-eZYCOf]Y|r!5)yV">
                                                                            <value name="pin">
                                                                              <shadow type="math_number" id=":j@+bwJpJL#z@]/bUrj6">
                                                                                <field name="NUM">16</field>
                                                                              </shadow>
                                                                            </value>
                                                                            <value name="value">
                                                                              <shadow type="math_number" id="^$4n0rL,$u@u0=zlmH^K">
                                                                                <field name="NUM">1</field>
                                                                              </shadow>
                                                                            </value>
                                                                            <next>
                                                                              <block type="digital12" id=";DeP,0@FUxK=8yJaNXcM">
                                                                                <value name="pin">
                                                                                  <shadow type="math_number" id="`f[wsdgc!XwdIFN*,}E7">
                                                                                    <field name="NUM">17</field>
                                                                                  </shadow>
                                                                                </value>
                                                                                <value name="value">
                                                                                  <shadow type="math_number" id="MwN`ef8w96Ob:FKCeaJV">
                                                                                    <field name="NUM">0</field>
                                                                                  </shadow>
                                                                                </value>
                                                                                <next>
                                                                                  <block type="arduinodelay1" id="m%.Lqm65nuk:#!5h.;;*">
                                                                                    <value name="value">
                                                                                      <shadow type="math_number" id="fgJdxIwS*bgc$lh8h;hg">
                                                                                        <field name="NUM">100</field>
                                                                                      </shadow>
                                                                                      <block type="variables_get" id="u,4@S{|%h@iW3p{8-3lm">
                                                                                        <field name="VAR" id=")9.PZLf!({9.91aDGEg#" variabletype="">rstraight</field>
                                                                                      </block>
                                                                                    </value>
                                                                                    <next>
                                                                                      <block type="digital12" id="hQF{N#:;ic1W.aq:0e5U">
                                                                                        <value name="pin">
                                                                                          <shadow type="math_number" id="m]%],wVM`5=9_CO_Nb$W">
                                                                                            <field name="NUM">22</field>
                                                                                          </shadow>
                                                                                        </value>
                                                                                        <value name="value">
                                                                                          <shadow type="math_number" id="oHTYi@%AjuGvuNmu.3n+">
                                                                                            <field name="NUM">0</field>
                                                                                          </shadow>
                                                                                        </value>
                                                                                        <next>
                                                                                          <block type="digital12" id="-*;AlbsptgP5Rf}9Un?0">
                                                                                            <value name="pin">
                                                                                              <shadow type="math_number" id="gp-1=,(#VZH!}enX,?gO">
                                                                                                <field name="NUM">23</field>
                                                                                              </shadow>
                                                                                            </value>
                                                                                            <value name="value">
                                                                                              <shadow type="math_number" id="?eIx?_bFRY`K!OrZwnP_">
                                                                                                <field name="NUM">0</field>
                                                                                              </shadow>
                                                                                            </value>
                                                                                            <next>
                                                                                              <block type="digital12" id="0A+uY8#2$`FK}W;!;,{m">
                                                                                                <value name="pin">
                                                                                                  <shadow type="math_number" id="lDylFJr%a]Gl.DDSNpJ$">
                                                                                                    <field name="NUM">16</field>
                                                                                                  </shadow>
                                                                                                </value>
                                                                                                <value name="value">
                                                                                                  <shadow type="math_number" id="(h6k_DLXk?$?bk@9wp%B">
                                                                                                    <field name="NUM">0</field>
                                                                                                  </shadow>
                                                                                                </value>
                                                                                                <next>
                                                                                                  <block type="digital12" id="040kM~`c=kOTFC%I=%g%">
                                                                                                    <value name="pin">
                                                                                                      <shadow type="math_number" id="aC}?d3m+m;,.1Bf1)J#h">
                                                                                                        <field name="NUM">17</field>
                                                                                                      </shadow>
                                                                                                    </value>
                                                                                                    <value name="value">
                                                                                                      <shadow type="math_number" id="mLD-4~F!1S@N16QPAE[o">
                                                                                                        <field name="NUM">0</field>
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
                                                                            </next>
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
            </next>
          </block>
        </next>
      </block>
    </statement>
  </block>
</xml>