<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables></variables>
  <block type="start" id="]kho:TI5ToDk4r!tdv/b" x="112" y="62">
    <statement name="loop">
      <block type="digital12" id="K)o:~A+1=5SQ[2b4H~3s">
        <value name="pin">
          <shadow type="math_number" id="$1.VT@dv(8!!uX3`},gF">
            <field name="NUM">22</field>
          </shadow>
        </value>
        <value name="value">
          <shadow type="math_number" id="5!ys8F3{_ZhN7TsrxoR(">
            <field name="NUM">1</field>
          </shadow>
        </value>
        <next>
          <block type="digital12" id="i5b1ex~N-/wj.n7,,#*f">
            <value name="pin">
              <shadow type="math_number" id="=uec^*V$}jGu|C]DN1x6">
                <field name="NUM">23</field>
              </shadow>
            </value>
            <value name="value">
              <shadow type="math_number" id="/X+qGhs1Jgk6;pNj+b*2">
                <field name="NUM">0</field>
              </shadow>
            </value>
            <next>
              <block type="digital12" id="eyGIovZk-:([g(`.kO]8">
                <value name="pin">
                  <shadow type="math_number" id="tIilF}z*9dGK1(5oMSX=">
                    <field name="NUM">25</field>
                  </shadow>
                </value>
                <value name="value">
                  <shadow type="math_number" id="}:}C##E,iFtvwg5R:IyD">
                    <field name="NUM">1</field>
                  </shadow>
                </value>
                <next>
                  <block type="digital12" id="+#}b;BuX{6gHGM/QPvcO">
                    <value name="pin">
                      <shadow type="math_number" id="Cca$;B@FxTMm(6pCzdM+">
                        <field name="NUM">26</field>
                      </shadow>
                    </value>
                    <value name="value">
                      <shadow type="math_number" id="ymhUJ7_;5(B}kgPUt{l(">
                        <field name="NUM">0</field>
                      </shadow>
                    </value>
                    <next>
                      <block type="controls_if" id="`.@X~EQ,R(u)`F*.m=Yw">
                        <value name="IF0">
                          <shadow type="logic_boolean" id="0wQ%iptE={MB|`{`AquD">
                            <field name="BOOL">TRUE</field>
                          </shadow>
                          <block type="logic_compare" id="8yPS-dLkH;EKTl%;ZoqV">
                            <field name="OP">LT</field>
                            <value name="A">
                              <block type="aultrasound" id="iA17(H*@que1$)!inmi~">
                                <value name="pin">
                                  <shadow type="math_number" id="[Y=}7j4,Vk%|K,tt/Fp/">
                                    <field name="NUM">12</field>
                                  </shadow>
                                </value>
                                <value name="pin1">
                                  <shadow type="math_number" id="bmwu3R2rt!U+htf_NnKU">
                                    <field name="NUM">14</field>
                                  </shadow>
                                </value>
                              </block>
                            </value>
                            <value name="B">
                              <block type="math_number" id="7o^B7j:8EwDa7T/~t$@e">
                                <field name="NUM">20</field>
                              </block>
                            </value>
                          </block>
                        </value>
                        <statement name="DO0">
                          <block type="serial_write1" id="6{]:0zV.l.Jk=4|,]``A">
                            <value name="value">
                              <shadow type="text" id="MzY$G3S6Fgb6AvBb%#a^">
                                <field name="TEXT">Hello</field>
                              </shadow>
                              <block type="aultrasound" id="(R`6dfD@$ydbYy5d;+w-">
                                <value name="pin">
                                  <shadow type="math_number" id="l=zKew(3i2xT;P%uX*DX">
                                    <field name="NUM">12</field>
                                  </shadow>
                                </value>
                                <value name="pin1">
                                  <shadow type="math_number" id="qkh3E[;q66Mrd@*c.fq2">
                                    <field name="NUM">14</field>
                                  </shadow>
                                </value>
                              </block>
                            </value>
                            <next>
                              <block type="digital12" id="6`S;s+?.*qH*+OkF%*9G">
                                <value name="pin">
                                  <shadow type="math_number" id="}lN1{z3%Q-nA,/)3eRuQ">
                                    <field name="NUM">22</field>
                                  </shadow>
                                </value>
                                <value name="value">
                                  <shadow type="math_number" id="47oSk..RI$P(smwK+,.v">
                                    <field name="NUM">0</field>
                                  </shadow>
                                </value>
                                <next>
                                  <block type="digital12" id="5B,]/,6#cbzJ,}v_t(Bf">
                                    <value name="pin">
                                      <shadow type="math_number" id="h5YI{Soa1Gr#5E*8Y^k2">
                                        <field name="NUM">23</field>
                                      </shadow>
                                    </value>
                                    <value name="value">
                                      <shadow type="math_number" id="9!~k4vtgjbfmn4I6`5!]">
                                        <field name="NUM">0</field>
                                      </shadow>
                                    </value>
                                    <next>
                                      <block type="digital12" id=")y:T/FUTx}tah6]^`7xu">
                                        <value name="pin">
                                          <shadow type="math_number" id="GvRE!c~_,;x;:iK1nHx!">
                                            <field name="NUM">25</field>
                                          </shadow>
                                        </value>
                                        <value name="value">
                                          <shadow type="math_number" id="+|!7vpIYtb97^czuFW|H">
                                            <field name="NUM">0</field>
                                          </shadow>
                                        </value>
                                        <next>
                                          <block type="digital12" id=")!|N.{.dq4K{uKmkTS=y">
                                            <value name="pin">
                                              <shadow type="math_number" id="M2(}Dk$u;/So31e:%VpL">
                                                <field name="NUM">26</field>
                                              </shadow>
                                            </value>
                                            <value name="value">
                                              <shadow type="math_number" id="n.Ec!Vs]k*;-nfqB00H.">
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
                        </statement>
                        <next>
                          <block type="arduinodelay1" id="Z3e7DrU@4I*Z|Fni75Zv">
                            <value name="value">
                              <shadow type="math_number" id="vJu8kq0Pk:bW%B2HR`-[">
                                <field name="NUM">0.5</field>
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