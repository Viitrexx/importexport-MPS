<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1a6463e9-4df5-4cbf-b3a8-2f2695e76f62(ini.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="4xSGKBVkic1">
    <property role="EcuMT" value="5222120623388566273" />
    <property role="TrG5h" value="File" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyj" id="4xSGKBVkGy6" role="1TKVEi">
      <property role="IQ2ns" value="5222120623388674182" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4xSGKBVkGNd" resolve="BaseContent" />
    </node>
    <node concept="PrWs8" id="4xSGKBVkGnU" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="4xSGKBVkGNd">
    <property role="EcuMT" value="5222120623388675277" />
    <property role="TrG5h" value="BaseContent" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
  </node>
  <node concept="1TIwiD" id="4xSGKBVkH2g">
    <property role="EcuMT" value="5222120623388676240" />
    <property role="TrG5h" value="Comment" />
    <ref role="1TJDcQ" node="4xSGKBVkGNd" resolve="BaseContent" />
    <node concept="1TJgyi" id="4xSGKBVkHi$" role="1TKVEl">
      <property role="IQ2nx" value="5222120623388677284" />
      <property role="TrG5h" value="comment" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="4xSGKBVkHw2">
    <property role="EcuMT" value="5222120623388678146" />
    <property role="TrG5h" value="SectionHeader" />
    <ref role="1TJDcQ" node="4xSGKBVkGNd" resolve="BaseContent" />
    <node concept="1TJgyi" id="4xSGKBVkHS2" role="1TKVEl">
      <property role="IQ2nx" value="5222120623388679682" />
      <property role="TrG5h" value="header" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="4xSGKBVkI10">
    <property role="EcuMT" value="5222120623388680256" />
    <property role="TrG5h" value="KeyValue" />
    <ref role="1TJDcQ" node="4xSGKBVkGNd" resolve="BaseContent" />
    <node concept="1TJgyi" id="4xSGKBVkIhG" role="1TKVEl">
      <property role="IQ2nx" value="5222120623388681324" />
      <property role="TrG5h" value="key" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4xSGKBVkIjm" role="1TKVEl">
      <property role="IQ2nx" value="5222120623388681430" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>

