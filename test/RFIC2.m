<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="oE*nT,JP5/xh*Vj_*$NV">a</variable>
  </variables>
  <block type="start" id="7hm0]zK^/zi0CTN]DcDz" x="213" y="413">
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
                      <block type="esp32tone" id="!F1C^7J(HQ3pX`k[a~,t">
                        <field name="NAME">330</field>
                        <value name="num1">
                          <shadow type="math_number" id="p~ZGniyS~_TA5r6`[bDu">
                            <field name="NUM">14</field>
                          </shadow>
                        </value>
                        <value name="num">
                          <shadow type="math_number" id="n=]RdEXYs}|3N:o[4)Hy">
                            <field name="NUM">500</field>
                          </shadow>
                        </value>
                        <next>
                          <block type="esp32tone" id="K[:::/((=jN]@Dq59BPi">
                            <field name="NAME">392</field>
                            <value name="num1">
                              <shadow type="math_number" id="Ba#7}%q;Tp.[QnVU6G3J">
                                <field name="NUM">14</field>
                              </shadow>
                            </value>
                            <value name="num">
                              <shadow type="math_number" id="|sxh+hg`UYeu)D.3M_;(">
                                <field name="NUM">500</field>
                              </shadow>
                            </value>
                            <next>
                              <block type="esp32tone" id="xT)u;}M:*p5r*0P-5z%e">
                                <field name="NAME">330</field>
                                <value name="num1">
                                  <shadow type="math_number" id="a@[zM2Wy+Ktk1AiqB+`J">
                                    <field name="NUM">14</field>
                                  </shadow>
                                </value>
                                <value name="num">
                                  <shadow type="math_number" id="!rBncB@*Q596yHj3R8`I">
                                    <field name="NUM">500</field>
                                  </shadow>
                                </value>
                                <next>
                                  <block type="esp32tone" id="D6-Za}|wu[^{Pb^~z}Ig">
                                    <field name="NAME">294</field>
                                    <value name="num1">
                                      <shadow type="math_number" id="QII4;adP.He/#Hu0O;q}">
                                        <field name="NUM">14</field>
                                      </shadow>
                                    </value>
                                    <value name="num">
                                      <shadow type="math_number" id="vk]PB`4yw+nd|)/iu#Cu">
                                        <field name="NUM">500</field>
                                      </shadow>
                                    </value>
                                    <next>
                                      <block type="esp32tone" id="Y,{+j9c~,Djm0B:5Ba{8">
                                        <field name="NAME">330</field>
                                        <value name="num1">
                                          <shadow type="math_number" id="7AUjfnTJSM$CQJ*EHW)x">
                                            <field name="NUM">14</field>
                                          </shadow>
                                        </value>
                                        <value name="num">
                                          <shadow type="math_number" id="z6+43s+2|oD-sOP?2a]|">
                                            <field name="NUM">500</field>
                                          </shadow>
                                        </value>
                                        <next>
                                          <block type="esp32tone" id="V8)(I6=EXGP0!RS`1Zdp">
                                            <field name="NAME">392</field>
                                            <value name="num1">
                                              <shadow type="math_number" id="a:EmwzNq:M[-BH.E-!bu">
                                                <field name="NUM">14</field>
                                              </shadow>
                                            </value>
                                            <value name="num">
                                              <shadow type="math_number" id="+{]fzf*INA^EU;JtUf`(">
                                                <field name="NUM">500</field>
                                              </shadow>
                                            </value>
                                            <next>
                                              <block type="esp32tone" id="@bG_4cGK7tCJjl+xjLV?">
                                                <field name="NAME">330</field>
                                                <value name="num1">
                                                  <shadow type="math_number" id="C`w[t@9w(/bneBg=G-PX">
                                                    <field name="NUM">14</field>
                                                  </shadow>
                                                </value>
                                                <value name="num">
                                                  <shadow type="math_number" id="OSY81auZg3./(u/H*c|@">
                                                    <field name="NUM">500</field>
                                                  </shadow>
                                                </value>
                                                <next>
                                                  <block type="esp32tone" id="7|`xuZ$u+n~SKR(Nz`6@">
                                                    <field name="NAME">294</field>
                                                    <value name="num1">
                                                      <shadow type="math_number" id="3Nc(YHTk|wPZvb^{3K+e">
                                                        <field name="NUM">14</field>
                                                      </shadow>
                                                    </value>
                                                    <value name="num">
                                                      <shadow type="math_number" id="HoEN0:y?lH}(pXo7;s5l">
                                                        <field name="NUM">500</field>
                                                      </shadow>
                                                    </value>
                                                    <next>
                                                      <block type="esp32tone" id="cfdq%nQ?m!WSYZ2nmev!">
                                                        <field name="NAME">330</field>
                                                        <value name="num1">
                                                          <shadow type="math_number" id=",vb+c[Zss)lLhQYGE?$l">
                                                            <field name="NUM">14</field>
                                                          </shadow>
                                                        </value>
                                                        <value name="num">
                                                          <shadow type="math_number" id="x#Ojn/My]LN}n=WF/]Y5">
                                                            <field name="NUM">500</field>
                                                          </shadow>
                                                        </value>
                                                        <next>
                                                          <block type="esp32tone" id="BQ~ayAG;QO-v/`^CxK}p">
                                                            <field name="NAME">294</field>
                                                            <value name="num1">
                                                              <shadow type="math_number" id="z%?IjE^-n[j$^k2]bn,M">
                                                                <field name="NUM">14</field>
                                                              </shadow>
                                                            </value>
                                                            <value name="num">
                                                              <shadow type="math_number" id="y~])5)JTpV4qDOHKUH_m">
                                                                <field name="NUM">500</field>
                                                              </shadow>
                                                            </value>
                                                            <next>
                                                              <block type="esp32tone" id="uNWVO[pyZ%NvQUc@Q-lT">
                                                                <field name="NAME">262</field>
                                                                <value name="num1">
                                                                  <shadow type="math_number" id="}^Lg:B:7*9oW/a(R0W?z">
                                                                    <field name="NUM">14</field>
                                                                  </shadow>
                                                                </value>
                                                                <value name="num">
                                                                  <shadow type="math_number" id="_[XyI^Oq=[4x0W$;JJpH">
                                                                    <field name="NUM">500</field>
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