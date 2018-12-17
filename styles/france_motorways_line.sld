<?xml version="1.0" encoding="UTF-8"?><!--File Generated by symbo.xsl from Excel VCR Symbology StyleSheet--><!--Geometry Type LINE--><sld:StyledLayerDescriptor version="1.0.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" xmlns:sld="http://www.opengis.net/sld">
  <sld:NamedLayer>
    <sld:Name>france_motorways_line
     Style
    </sld:Name>
    <sld:UserStyle>
      <sld:Name>france_motorways_line
      Style
     </sld:Name>
      <sld:Title/>
      <sld:FeatureTypeStyle>
        <sld:Name>france_motorways_line
       Style
      </sld:Name>
        <sld:Rule>
          <sld:Name>motorway Background</sld:Name>
          <sld:Title>motorway Background</sld:Title>
          <ogc:Filter>
<ogc:Or>
                    <ogc:PropertyIsEqualTo>
                                        <ogc:PropertyName>highway</ogc:PropertyName>
                                        <ogc:Literal>motorway_link</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                    <ogc:PropertyIsEqualTo>
                                        <ogc:PropertyName>highway</ogc:PropertyName>
                                        <ogc:Literal>motorway</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
</ogc:Or>
          </ogc:Filter>
          <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <sld:Stroke>
              <sld:CssParameter name="stroke">#b3475d</sld:CssParameter>
              <sld:CssParameter name="stroke-width">12</sld:CssParameter>
              <sld:CssParameter name="stroke-linecap">round</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
     </sld:FeatureTypeStyle>
      <sld:FeatureTypeStyle>
   
        <sld:Rule>
          <sld:Name>Motorway</sld:Name>
          <sld:Title>Motorway</sld:Title>
          <ogc:Filter>
<ogc:Or>
                    <ogc:PropertyIsEqualTo>
                                        <ogc:PropertyName>highway</ogc:PropertyName>
                                        <ogc:Literal>motorway_link</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
                    <ogc:PropertyIsEqualTo>
                                        <ogc:PropertyName>highway</ogc:PropertyName>
                                        <ogc:Literal>motorway</ogc:Literal>
                    </ogc:PropertyIsEqualTo>
</ogc:Or>
          </ogc:Filter>
          <sld:LineSymbolizer uom="http://www.opengeospatial.org/se/units/metre">
            <sld:Stroke>
              <sld:CssParameter name="stroke">#e892a2</sld:CssParameter>
              <sld:CssParameter name="stroke-width">9</sld:CssParameter>
              <sld:CssParameter name="stroke-linecap">round</sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Motorway Road Label</sld:Name>
          <sld:Title>Motorway Road Label</sld:Title>
          <ogc:Filter>
<ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>highway</ogc:PropertyName>
                    <ogc:Literal>motorway</ogc:Literal>
</ogc:PropertyIsEqualTo>
          </ogc:Filter>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Motorway Road Label TextSymbolizer
    </sld:Name>
          <sld:Title>Motorway Road Label TextSymbolizer
    </sld:Title>
          <ogc:Filter>
<ogc:PropertyIsEqualTo>
                    <ogc:PropertyName>highway</ogc:PropertyName>
                    <ogc:Literal>motorway</ogc:Literal>
</ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:MaxScaleDenominator>5000000.0</sld:MaxScaleDenominator>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>ref</ogc:PropertyName>
            </sld:Label>
            <sld:Font>
              <sld:CssParameter name="font-family">Arial</sld:CssParameter>
              <sld:CssParameter name="font-size">11</sld:CssParameter>
              <sld:CssParameter name="font-style">normal </sld:CssParameter>
              <sld:CssParameter name="font-weight">bold</sld:CssParameter>
            </sld:Font>
            <sld:LabelPlacement>
              <sld:PointPlacement>
                <sld:AnchorPoint>
                  <sld:AnchorPointX>0.5</sld:AnchorPointX>
                  <sld:AnchorPointY>0.5</sld:AnchorPointY>
                </sld:AnchorPoint>
              </sld:PointPlacement>
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#b36147</sld:CssParameter>
            </sld:Fill>
            <sld:Graphic>
              <sld:Mark>
                <sld:WellKnownName>square</sld:WellKnownName>
                <sld:Fill>
                  <sld:CssParameter name="fill">#e892a2</sld:CssParameter>
                </sld:Fill>
                <sld:Stroke>
                  <sld:CssParameter name="stroke">#b36147</sld:CssParameter>
                </sld:Stroke>
              </sld:Mark>
            </sld:Graphic>
            <sld:VendorOption name="graphic-resize">stretch</sld:VendorOption>
            <sld:VendorOption name="graphic-margin">2</sld:VendorOption>
            <sld:VendorOption name="repeat">150</sld:VendorOption>
            <sld:VendorOption name="group">yes</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>