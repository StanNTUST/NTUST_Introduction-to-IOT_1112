<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="W#w_(w|Ak0QwPz[}cdDW">Hour</variable>
    <variable type="" id="TCnRCl9W6),J^pQA?Jyh">Minute</variable>
    <variable type="" id="A=ypFXb|cV_|U8)VY8wP">Second</variable>
  </variables>
  <block type="start" id="/_Uo)W,#x%A,jy28z%12" x="588" y="112">
    <statement name="setup">
      <block type="simplewificonnectesp" id="5FZh`55hQl#y=K-y,p+{">
        <value name="ssid">
          <shadow type="text3" id="z+JhCAp}/x)08[?i/BOX">
            <field name="TEXT">root</field>
          </shadow>
        </value>
        <value name="pass">
          <shadow type="text3" id="2@xL~gl5:lIbaJR|6Dc#">
            <field name="TEXT">rootroot</field>
          </shadow>
        </value>
        <next>
          <block type="ntp_begin" id="9f?g})J1x.5Z:^|fsa9s"></block>
        </next>
      </block>
    </statement>
    <statement name="loop">
      <block type="ntp_get" id="z]Im_aK$NOJZ6Va[M8$d">
        <next>
          <block type="variables_set" id="SGI|`YhuB}HBcWG=s{w1">
            <field name="VALUE1">String</field>
            <field name="VAR" id="W#w_(w|Ak0QwPz[}cdDW" variabletype="">Hour</field>
            <value name="VALUE">
              <block type="transformer" id="cQe$H-rueQVF/k?RaDg]">
                <field name="NAME">String</field>
                <value name="value">
                  <block type="ntp_get1" id="-xz~})p-Pl`+i$8Ln-s#">
                    <field name="NAME">4</field>
                  </block>
                </value>
              </block>
            </value>
            <next>
              <block type="variables_set" id="9}67hL;]c5WvK[nn7KcY">
                <field name="VALUE1">String</field>
                <field name="VAR" id="TCnRCl9W6),J^pQA?Jyh" variabletype="">Minute</field>
                <value name="VALUE">
                  <block type="transformer" id="4W8=x|j18B]U]#S^_x^I">
                    <field name="NAME">String</field>
                    <value name="value">
                      <block type="ntp_get1" id="}ie4S+$;rJa8HSvVV(AJ">
                        <field name="NAME">5</field>
                      </block>
                    </value>
                  </block>
                </value>
                <next>
                  <block type="variables_set" id="EiqJ,ISbw_t~k1i1Y]+n">
                    <field name="VALUE1">String</field>
                    <field name="VAR" id="A=ypFXb|cV_|U8)VY8wP" variabletype="">Second</field>
                    <value name="VALUE">
                      <block type="transformer" id="LB3!MDfh(RbPP5`uX|Lq">
                        <field name="NAME">String</field>
                        <value name="value">
                          <block type="ntp_get1" id="P@CA#_/*ufRt$Ip9#E(#">
                            <field name="NAME">6</field>
                          </block>
                        </value>
                      </block>
                    </value>
                    <next>
                      <block type="serial_write1" id="g,p,=yu2JYo-LK#fz/2l">
                        <value name="value">
                          <shadow type="text" id="T4ylz1e.c;3EYnW#+4C(">
                            <field name="TEXT">Hello</field>
                          </shadow>
                          <block type="text_join" id=";O,Esz!39nU8S@dBAM#Q" inline="false">
                            <mutation items="5"></mutation>
                            <value name="ADD0">
                              <block type="variables_get" id="1_AOJxF4u{zdttz74Ef?">
                                <field name="VAR" id="W#w_(w|Ak0QwPz[}cdDW" variabletype="">Hour</field>
                              </block>
                            </value>
                            <value name="ADD1">
                              <block type="text" id="Xmb6/9OD_oKsRV0=0I[@">
                                <field name="TEXT">:</field>
                              </block>
                            </value>
                            <value name="ADD2">
                              <block type="variables_get" id="ammqz/0^JC3oYa^H]Ja6">
                                <field name="VAR" id="TCnRCl9W6),J^pQA?Jyh" variabletype="">Minute</field>
                              </block>
                            </value>
                            <value name="ADD3">
                              <block type="text" id="nXTKShkuLLGU_C|%QqbH">
                                <field name="TEXT">:</field>
                              </block>
                            </value>
                            <value name="ADD4">
                              <block type="variables_get" id="6b1t.wMJk`g8c+!xM_c3">
                                <field name="VAR" id="A=ypFXb|cV_|U8)VY8wP" variabletype="">Second</field>
                              </block>
                            </value>
                          </block>
                        </value>
                        <next>
                          <block type="arduinodelay1" id=";IcMM8g!=L8I({(N/v%`">
                            <value name="value">
                              <shadow type="math_number" id="ACnu[SXeqi8Sr2GBor@W">
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