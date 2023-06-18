<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="j4FLM~*%JOvu7Br6#//!">hour</variable>
    <variable type="" id="5-a^65;qKi+_pAFYwi{m">myTime</variable>
    <variable type="" id="Bbf+BM}y%RI#mFC1;4@;">clockTime</variable>
    <variable type="" id="|Ef9R[{BR4H(i_~/|7Lp">minute</variable>
  </variables>
  <block type="variables_set" id="8SE$_/{z5P^:Yu18eX+r" x="313" y="-412">
    <field name="VALUE1">String</field>
    <field name="VAR" id="Bbf+BM}y%RI#mFC1;4@;" variabletype="">clockTime</field>
    <value name="VALUE">
      <block type="text" id="k}6uxBlLh(EQ$|pQPx.S">
        <field name="TEXT"></field>
      </block>
    </value>
    <next>
      <block type="variables_set" id="K+VP$3Q+E/,6GWAB#-yP">
        <field name="VALUE1">String</field>
        <field name="VAR" id="5-a^65;qKi+_pAFYwi{m" variabletype="">myTime</field>
        <value name="VALUE">
          <block type="text" id="FiUgu,wJ{I1IqA|f)+7k">
            <field name="TEXT"></field>
          </block>
        </value>
      </block>
    </next>
  </block>
  <block type="mqttcallback" id="C$!`qZ89z!8X[[g5$907" x="187" y="-262">
    <statement name="NAME1">
      <block type="controls_if" id="uXc^3i[eD1sp|wTSn?H9">
        <value name="IF0">
          <shadow type="logic_boolean" id="r|{qN@pF@X?#(gt@g%hN">
            <field name="BOOL">TRUE</field>
          </shadow>
          <block type="logic_compare" id="tq9+99fB)Y)Qng,k~XH/">
            <field name="OP">EQ</field>
            <value name="A">
              <block type="mqtttopic" id="Iui=q|3uk!T#pD4Zu!O#"></block>
            </value>
            <value name="B">
              <block type="text" id="LX4Cz$5k~+ctN?kjRIy)">
                <field name="TEXT">/clockTime</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="math_change" id="fe;}|rG|{1Dr@poZ!tOA">
            <field name="VAR" id="Bbf+BM}y%RI#mFC1;4@;" variabletype="">clockTime</field>
            <value name="DELTA">
              <shadow type="math_number" id="9OqH8//|kv{K)V[CnOC@">
                <field name="NUM">1</field>
              </shadow>
              <block type="mqttmessage" id="G3SUh#fdXh1%pn@O741A"></block>
            </value>
          </block>
        </statement>
        <next>
          <block type="controls_if" id="eDktk-2NJ?1bokG$1@rl">
            <value name="IF0">
              <shadow type="logic_boolean" id="+`NDxL}Lo7{RY-dDy*j,">
                <field name="BOOL">TRUE</field>
              </shadow>
              <block type="logic_compare" id="]SRSWJ}S{NCR+aGjn5;$">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="mqtttopic" id=";rx~yAZO@`.3|dTgubq/"></block>
                </value>
                <value name="B">
                  <block type="text" id="{Pp=DtU3x=G`|6@)/`U=">
                    <field name="TEXT">/currentTime</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO0">
              <block type="math_change" id="vx}h=7N2vXr+P8Lpt*hj">
                <field name="VAR" id="5-a^65;qKi+_pAFYwi{m" variabletype="">myTime</field>
                <value name="DELTA">
                  <shadow type="math_number" id="2Di{RIg){(L0_MXZLV$/">
                    <field name="NUM">1</field>
                  </shadow>
                  <block type="mqttmessage" id="G(w2LMBVVZ93.R8XNhrQ"></block>
                </value>
              </block>
            </statement>
          </block>
        </next>
      </block>
    </statement>
  </block>
  <block type="start" id="hTnmz5o!`m*PfqCFB2mU" x="-237" y="137">
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
          <block type="mqttsetup" id="[7X5qbaMRj70o{TXbgiA">
            <value name="num1">
              <shadow type="text3" id="9=jTr$]28PEV`GK!p7~U">
                <field name="TEXT">broker.mqttdashboard.com</field>
              </shadow>
            </value>
            <value name="port">
              <shadow type="math_number" id="Kb~Nx(.2%82Do~ei9LG*">
                <field name="NUM">1883</field>
              </shadow>
            </value>
            <next>
              <block type="mqttsubscribe" id="|0D^8`ESWy6]uxp=)Gf4">
                <value name="num1">
                  <shadow type="text3" id="LXs6!{gQ-zuap`%qjzSM">
                    <field name="TEXT">/clockTime</field>
                  </shadow>
                </value>
                <next>
                  <block type="mqttsubscribe" id="eo%^A.]INxpbH3RKP;Fd">
                    <value name="num1">
                      <shadow type="text3" id=":p4g|AG0jz~PQ/SbN`2H">
                        <field name="TEXT">/currentTime</field>
                      </shadow>
                    </value>
                  </block>
                </next>
              </block>
            </next>
          </block>
        </next>
      </block>
    </statement>
    <statement name="loop">
      <block type="oled_textcursor" id="RzI?C_asN.F(_6H:OCh5">
        <value name="x">
          <shadow type="math_number" id="hJ`Qz{OV(+^2m?w/.Gy?">
            <field name="NUM">0</field>
          </shadow>
        </value>
        <value name="y">
          <shadow type="math_number" id="s4BR4m]qkE|G~fN[},HV">
            <field name="NUM">0</field>
          </shadow>
        </value>
        <next>
          <block type="oled_page" id="CnW=QNf?N12}0OTl$srn">
            <statement name="oled_statement">
              <block type="oled_textprint" id="P(jt,fnj=*9Tw*6_zunC">
                <value name="text">
                  <shadow type="text3" id="L@2`f-hgCpJ^hm?({a;u">
                    <field name="TEXT">Hello World</field>
                  </shadow>
                  <block type="text_join" id="~%2ggGx`uc%|~`j_B7ji">
                    <mutation items="2"></mutation>
                    <value name="ADD0">
                      <block type="text" id="ij(4[9)CC#OoPu{nK/F*">
                        <field name="TEXT">current time:</field>
                      </block>
                    </value>
                    <value name="ADD1">
                      <block type="variables_get" id="Z}}fob6w:.wRK*hEw:dU">
                        <field name="VAR" id="5-a^65;qKi+_pAFYwi{m" variabletype="">myTime</field>
                      </block>
                    </value>
                  </block>
                </value>
                <next>
                  <block type="oled_textprint" id="`!d$^];2l~;(]D}D8HNe">
                    <value name="text">
                      <shadow type="text3" id="R5+MknwH9;WqB![X8PqU">
                        <field name="TEXT"></field>
                      </shadow>
                    </value>
                    <next>
                      <block type="oled_textprint" id="]+7?X_`_Bnu@%^8fA5rA">
                        <value name="text">
                          <shadow type="text3" id="tbfLAfO!Rj;[YyGYrdsg">
                            <field name="TEXT">Hello World</field>
                          </shadow>
                          <block type="text_join" id="1ICMC]8jq_Hl{(:=EXN+">
                            <mutation items="2"></mutation>
                            <value name="ADD0">
                              <block type="text" id="@^[MmK}Ir_r$wq+tv)W5">
                                <field name="TEXT">clock time: </field>
                              </block>
                            </value>
                            <value name="ADD1">
                              <block type="variables_get" id="8M|Jx*uAiRLM]^vp]81:">
                                <field name="VAR" id="Bbf+BM}y%RI#mFC1;4@;" variabletype="">clockTime</field>
                              </block>
                            </value>
                          </block>
                        </value>
                      </block>
                    </next>
                  </block>
                </next>
              </block>
            </statement>
            <next>
              <block type="arduinodelay1" id="D)B^gH5[z4E]GXE,J+s}">
                <value name="value">
                  <shadow type="math_number" id="==FC2fCSOPG@[YcUNw~L">
                    <field name="NUM">1</field>
                  </shadow>
                </value>
              </block>
            </next>
          </block>
        </next>
      </block>
    </statement>
  </block>
</xml>