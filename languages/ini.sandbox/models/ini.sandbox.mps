<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6ef6779b-49b1-4f80-8250-c58063d5f513(ini.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="7f902c7d-b9de-4f86-8d2e-38710197ee79" name="ini" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="7f902c7d-b9de-4f86-8d2e-38710197ee79" name="ini">
      <concept id="5222120623388566273" name="ini.structure.File" flags="ng" index="2Nap08">
        <child id="5222120623388674182" name="content" index="2NaBIf" />
      </concept>
      <concept id="5222120623388680256" name="ini.structure.KeyValue" flags="ng" index="2Na_d9">
        <property id="5222120623388681324" name="key" index="2Na_t_" />
        <property id="5222120623388681430" name="value" index="2Na_vv" />
      </concept>
      <concept id="5222120623388676240" name="ini.structure.Comment" flags="ng" index="2NaAep">
        <property id="5222120623388677284" name="comment" index="2NaAuH" />
      </concept>
      <concept id="5222120623388678146" name="ini.structure.SectionHeader" flags="ng" index="2NaAGb">
        <property id="5222120623388679682" name="header" index="2NaAOb" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2Nap08" id="4xSGKBVl01h">
    <property role="TrG5h" value="test" />
    <node concept="2NaAep" id="4xSGKBVl6nY" role="2NaBIf">
      <property role="2NaAuH" value="This is a test file" />
    </node>
    <node concept="2NaAGb" id="4xSGKBVl9sG" role="2NaBIf">
      <property role="2NaAOb" value="Section one" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVl9sW" role="2NaBIf">
      <property role="2Na_t_" value="key" />
      <property role="2Na_vv" value="value" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVl9t6" role="2NaBIf">
      <property role="2Na_t_" value="one" />
      <property role="2Na_vv" value="1" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVl9ti" role="2NaBIf">
      <property role="2Na_t_" value="two" />
      <property role="2Na_vv" value="2" />
    </node>
    <node concept="2NaAGb" id="4xSGKBVlcFa" role="2NaBIf">
      <property role="2NaAOb" value="Section two" />
    </node>
    <node concept="2NaAep" id="4xSGKBVlcFL" role="2NaBIf">
      <property role="2NaAuH" value="This section has a comment" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVlcG3" role="2NaBIf">
      <property role="2Na_t_" value="date" />
      <property role="2Na_vv" value="2023-04-27" />
    </node>
    <node concept="2NaAep" id="4xSGKBVlcGn" role="2NaBIf">
      <property role="2NaAuH" value="That's today (when I wrote this)" />
    </node>
  </node>
  <node concept="2Nap08" id="4xSGKBVpOrq">
    <property role="TrG5h" value="imported" />
    <node concept="2NaAep" id="4xSGKBVr3kd" role="2NaBIf">
      <property role="2NaAuH" value="I wrote this in notepad" />
    </node>
    <node concept="2NaAGb" id="4xSGKBVr3ke" role="2NaBIf">
      <property role="2NaAOb" value="Letters" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVr3kf" role="2NaBIf">
      <property role="2Na_t_" value="a" />
      <property role="2Na_vv" value="ay" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVr3kg" role="2NaBIf">
      <property role="2Na_t_" value="b" />
      <property role="2Na_vv" value="bee" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVr3kh" role="2NaBIf">
      <property role="2Na_t_" value="c" />
      <property role="2Na_vv" value="see" />
    </node>
    <node concept="2NaAGb" id="4xSGKBVr3ki" role="2NaBIf">
      <property role="2NaAOb" value="Numbers" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVr3kj" role="2NaBIf">
      <property role="2Na_t_" value="1" />
      <property role="2Na_vv" value="one" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVr3kk" role="2NaBIf">
      <property role="2Na_t_" value="2" />
      <property role="2Na_vv" value="two" />
    </node>
    <node concept="2Na_d9" id="4xSGKBVr3kl" role="2NaBIf">
      <property role="2Na_t_" value="3" />
      <property role="2Na_vv" value="three" />
    </node>
  </node>
</model>

