<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="K8fpVSI[R]%*Zq3L$7OS">index</variable>
    <variable type="" id="Sa!:c^!d#h76E{uxhxKI">item</variable>
  </variables>
  <block type="start" id="D?0%,UNq)qfnr]`U)mfU" x="362" y="287">
    <statement name="setup">
      <block type="ws2812begin" id="CQ+{9QH8,Z*T#9nFWBm6">
        <value name="pin">
          <shadow type="math_number" id="[zzoJzeARqB0{29?j/X~">
            <field name="NUM">26</field>
          </shadow>
        </value>
        <value name="number">
          <shadow type="math_number" id="E}%mugKM;5OT3gp#MDs?">
            <field name="NUM">16</field>
          </shadow>
        </value>
        <next>
          <block type="ws2812setbright" id="?Sq9N7FU$@%cokQexwb_">
            <value name="NAME">
              <shadow type="math_number" id="-7y,JKj@fzg:RV6Qp=lc">
                <field name="NUM">100</field>
              </shadow>
            </value>
          </block>
        </next>
      </block>
    </statement>
    <statement name="loop">
      <block type="controls_for" id="PZ3VkP^47P`H7|0%SvWz">
        <value name="VAR">
          <shadow type="variables_get" id="vz?2/`)+-IJM]+4%2*|q">
            <field name="VAR" id="K8fpVSI[R]%*Zq3L$7OS" variabletype="">index</field>
          </shadow>
        </value>
        <value name="FROM">
          <shadow type="math_number" id="asF:ttwv6HSp[Tw2}vCL">
            <field name="NUM">0</field>
          </shadow>
        </value>
        <value name="TO">
          <shadow type="math_number" id="hc!0TL{O_nP#$_r*/`(_">
            <field name="NUM">16</field>
          </shadow>
        </value>
        <value name="BY">
          <shadow type="math_number" id="6:6h4PodD)o2DsH@%774">
            <field name="NUM">1</field>
          </shadow>
        </value>
        <statement name="DO">
          <block type="ws2812setcolor" id=".=O;aG[AxBni88f.}2J1">
            <value name="num">
              <shadow type="math_number" id="vpRZ3jF*AE|GoPgq]PBP">
                <field name="NUM">0</field>
              </shadow>
              <block type="variables_get" id="{@SyuEERB1RcbtW.1x|2">
                <field name="VAR" id="K8fpVSI[R]%*Zq3L$7OS" variabletype="">index</field>
              </block>
            </value>
            <value name="r">
              <shadow type="math_number" id="/Y~uxeCVJN48M?loc~+-">
                <field name="NUM">100</field>
              </shadow>
            </value>
            <value name="g">
              <shadow type="math_number" id="9ahz_.~:ZSZ=DVc^;q=?">
                <field name="NUM">0</field>
              </shadow>
            </value>
            <value name="b">
              <shadow type="math_number" id="+amW9q0V!t4zs_S47fMD">
                <field name="NUM">0</field>
              </shadow>
            </value>
            <next>
              <block type="ws2812show" id="d;lkahkZYEbOi4(bI.4*">
                <next>
                  <block type="arduinodelay" id="E-9K?(=}J8Q$`yk{Qy/y">
                    <value name="value">
                      <shadow type="math_number" id="#zA#sh5C;rZ~(hc$ki$e">
                        <field name="NUM">200</field>
                      </shadow>
                    </value>
                  </block>
                </next>
              </block>
            </next>
          </block>
        </statement>
        <next>
          <block type="controls_for" id="|WjoUhv$jv2jpzQJ3sdU">
            <value name="VAR">
              <shadow type="variables_get" id="#(H+Uwxvc.%8,SXp;Upk">
                <field name="VAR" id="K8fpVSI[R]%*Zq3L$7OS" variabletype="">index</field>
              </shadow>
            </value>
            <value name="FROM">
              <shadow type="math_number" id="rJ6Ig33w9L0TV}|=+.?M">
                <field name="NUM">0</field>
              </shadow>
            </value>
            <value name="TO">
              <shadow type="math_number" id="a*qU,)nJW,376R}@LC!J">
                <field name="NUM">16</field>
              </shadow>
            </value>
            <value name="BY">
              <shadow type="math_number" id="A]Yv`w$NKoCLyn_y[q-G">
                <field name="NUM">1</field>
              </shadow>
            </value>
            <statement name="DO">
              <block type="ws2812setcolor" id="c*%4Ec:nd{,2aP#ki3sv">
                <value name="num">
                  <shadow type="math_number" id="vpRZ3jF*AE|GoPgq]PBP">
                    <field name="NUM">0</field>
                  </shadow>
                  <block type="variables_get" id="KGx5hx(L[aydvVCc|7*5">
                    <field name="VAR" id="K8fpVSI[R]%*Zq3L$7OS" variabletype="">index</field>
                  </block>
                </value>
                <value name="r">
                  <shadow type="math_number" id="JIGd[:KGgjs$3-6GDQ7L">
                    <field name="NUM">100</field>
                  </shadow>
                </value>
                <value name="g">
                  <shadow type="math_number" id="4bHj`Trz3XDCZ_8C$qR:">
                    <field name="NUM">100</field>
                  </shadow>
                </value>
                <value name="b">
                  <shadow type="math_number" id="O7CUtNY~cU@,#Tp+{P`(">
                    <field name="NUM">100</field>
                  </shadow>
                </value>
                <next>
                  <block type="ws2812show" id="XY}4P?:3e5imbDy@jT0U">
                    <next>
                      <block type="arduinodelay" id="lR6k_kAyzJ2wcVUE(72T">
                        <value name="value">
                          <shadow type="math_number" id="}0I!x}@H9BH*Y!E*[-kX">
                            <field name="NUM">200</field>
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
    </statement>
  </block>
</xml>