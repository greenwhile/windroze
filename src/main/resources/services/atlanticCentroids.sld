<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>Attribute-based point</Name>
    <UserStyle>
      <Title>GeoServer SLD Cook Book: Attribute-based point</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>centroids</Name>
          <Title>centroids</Title>
          <ogc:PropertyName>name</ogc:PropertyName>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>circle</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>                        
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke> 
                </Mark>
                <Size>13</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>                              
                <ogc:PropertyName>name</ogc:PropertyName>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">33</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
                <CssParameter name="font-weight">bold</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>6.0</DisplacementX>
                    <DisplacementY>6.0</DisplacementY>
                  </Displacement>
                </PointPlacement>
              </LabelPlacement>
              <Fill>
                <CssParameter name="fill">#000000</CssParameter>
              </Fill>
              <VendorOption name="partials">true</VendorOption>
              <VendorOption name="forceLeftToRight">true</VendorOption>
          </TextSymbolizer> 
        </Rule>   
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>