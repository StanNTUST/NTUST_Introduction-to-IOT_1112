<xml xmlns="http://www.w3.org/1999/xhtml">
  <variables>
    <variable type="" id="j4FLM~*%JOvu7Br6#//!">hour</variable>
    <variable type="" id="5-a^65;qKi+_pAFYwi{m">time</variable>
  </variables>
  <block type="mqttcallback" id="C$!`qZ89z!8X[[g5$907" x="812" y="-412">
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
                <field name="TEXT">/baganono</field>
              </block>
            </value>
          </block>
        </value>
        <statement name="DO0">
          <block type="controls_if" id="7HAWuxn1I$R*3m^Q#QFw">
            <value name="IF0">
              <shadow type="logic_boolean" id="j`2a:Am8o*Jop60dCwBw">
                <field name="BOOL">TRUE</field>
              </shadow>
              <block type="logic_compare" id="~Qspee!:p/_Ly(O5$Ay0">
                <field name="OP">EQ</field>
                <value name="A">
                  <block type="mqttmessage" id="d{U/=$0i@zJDfvSHb943"></block>
                </value>
                <value name="B">
                  <block type="text" id="svQ.l};RWfpD~u}68p=2">
                    <field name="TEXT">開燈</field>
                  </block>
                </value>
              </block>
            </value>
            <statement name="DO0">
              <block type="digital12" id="u;881E0Ga^k8]{)s$s60">
                <value name="pin">
                  <shadow type="math_number" id="Ugpxs1b]5Q_19_c]2gYw">
                    <field name="NUM">27</field>
                  </shadow>
                </value>
                <value name="value">
                  <shadow type="math_number" id=")EWci@GjdORTla0+DjU%">
                    <field name="NUM">1</field>
                  </shadow>
                </value>
              </block>
            </statement>
            <next>
              <block type="controls_if" id=")+kkK;/Oayz~#z!U=*Xw">
                <value name="IF0">
                  <shadow type="logic_boolean" id="j`2a:Am8o*Jop60dCwBw">
                    <field name="BOOL">TRUE</field>
                  </shadow>
                  <block type="logic_compare" id="u3Fw@7|g`HM}5gFU,nN}">
                    <field name="OP">EQ</field>
                    <value name="A">
                      <block type="mqttmessage" id="9x^5u#l^#8FsE$svLs20"></block>
                    </value>
                    <value name="B">
                      <block type="text" id=",v3H:.)s4f8o(B#}V}QC">
                        <field name="TEXT">關燈</field>
                      </block>
                    </value>
                  </block>
                </value>
                <statement name="DO0">
                  <block type="digital12" id="t)_{|L,BWywMe4:5,wie">
                    <value name="pin">
                      <shadow type="math_number" id=",De`C@/2e+qDU.E#lYz.">
                        <field name="NUM">27</field>
                      </shadow>
                    </value>
                    <value name="value">
                      <shadow type="math_number" id="e{Eo::16eu@Nh1CzXI{y">
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
    </statement>
  </block>
  <block type="start" id="hTnmz5o!`m*PfqCFB2mU" x="288" y="63">
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
          <block type="ntp_begin" id="#7CgPACr4r.w^POHy$30">
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
                        <field name="TEXT">/myCar</field>
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
      <block type="ntp_get" id="z_q,Hr;9h|a@aO/7=wHz">
        <next>
          <block type="variables_set" id="K+VP$3Q+E/,6GWAB#-yP">
            <field name="VALUE1">String</field>
            <field name="VAR" id="5-a^65;qKi+_pAFYwi{m" variabletype="">time</field>
            <value name="VALUE">
              <block type="text_join" id="nwDR*)Jj2KyaF?01Txpg">
                <mutation items="2"></mutation>
                <value name="ADD0">
                  <block type="transformer" id="3iRLb[;A[6fbUa?rs6`Y">
                    <field name="NAME">String</field>
                    <value name="value">
                      <block type="ntp_get1" id="^FZvNUGwol3fdiB6+c$L">
                        <field name="NAME">4</field>
                      </block>
                    </value>
                  </block>
                </value>
                <value name="ADD1">
                  <block type="transformer" id="qKOlN_S{p+mPhaQ2?o{f">
                    <field name="NAME">String</field>
                    <value name="value">
                      <block type="ntp_get1" id="+Py%oq^V.$a8ceDl$~8_">
                        <field name="NAME">5</field>
                      </block>
                    </value>
                  </block>
                </value>
              </block>
            </value>
            <next>
              <block type="mqttpublish" id="4j9Tu);9N0o5-7YcfYQ{">
                <value name="num1">
                  <shadow type="text3" id="D?p^UzRV^A@d@wl[0862">
                    <field name="TEXT">/myCar</field>
                  </shadow>
                </value>
                <value name="num2">
                  <shadow type="text3" id="8G{-4`/U2tm-1QOCPrvA">
                    <field name="TEXT">message</field>
                  </shadow>
                  <block type="variables_get" id="zNUKMDKKZv/6;Fx2@X=O">
                    <field name="VAR" id="5-a^65;qKi+_pAFYwi{m" variabletype="">time</field>
                  </block>
                </value>
                <next>
                  <block type="arduinodelay1" id="D)B^gH5[z4E]GXE,J+s}">
                    <value name="value">
                      <shadow type="math_number" id="==FC2fCSOPG@[YcUNw~L">
                        <field name="NUM">3</field>
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
  </block>
</xml>