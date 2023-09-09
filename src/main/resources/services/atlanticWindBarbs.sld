<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <NamedLayer>
    <Name>Wind Barb Style</Name>
    <UserStyle>
      <Title>Wind Barb Style: EurAtl Area</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>0</Name>
          <Title>0</Title>          
          <ogc:Filter>
            <And>
				<ogc:PropertyIsEqualTo>
				  <ogc:PropertyName>windSpeed</ogc:PropertyName>                
				  <ogc:Literal>0</ogc:Literal>
				</ogc:PropertyIsEqualTo>         
                <ogc:PropertyIsLessThanOrEqualTo>
                  <ogc:PropertyName>temperature</ogc:PropertyName>
                  <ogc:Literal>0.0</ogc:Literal>
                </ogc:PropertyIsLessThanOrEqualTo>
            </And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>circle</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#FFFFFF</CssParameter>
                        <CssParameter name="fill-opacity">0</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
            </Graphic>
          </PointSymbolizer>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>circle</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#FFFFFF</CssParameter>
                        <CssParameter name="fill-opacity">0</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">3</CssParameter>
                    </Stroke>
                </Mark>
                <Size>3</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>0</Name>
          <Title>0</Title>          
          <ogc:Filter>
            <And>
                <ogc:PropertyIsEqualTo>
				  <ogc:PropertyName>windSpeed</ogc:PropertyName>                
				  <ogc:Literal>0</ogc:Literal>
				</ogc:PropertyIsEqualTo>         
                <ogc:PropertyIsGreaterThan>
                  <ogc:PropertyName>temperature</ogc:PropertyName>
                  <ogc:Literal>0.0</ogc:Literal>
                </ogc:PropertyIsGreaterThan>
            </And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>circle</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#FFFFFF</CssParameter>
                        <CssParameter name="fill-opacity">0</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
            </Graphic>
          </PointSymbolizer>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>circle</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#FFFFFF</CssParameter>
                        <CssParameter name="fill-opacity">0</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">3</CssParameter>
                    </Stroke>
                </Mark>
                <Size>3</Size>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>1_5</Name>
          <Title>1 to 5</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>1</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>5</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 0, -42.5 10, -40 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>13.5</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>1_5</Name>
          <Title>1 to 5</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>1</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>5</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 0, -42.5 10, -40 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>13.5</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>6_10</Name>
          <Title>6 to 10</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>6</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>10</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>6_10</Name>
          <Title>6 to 10</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>6</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>10</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>                  
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>11_15</Name>
          <Title>11 to 15</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>11</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>15</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -42.5 10, -40 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>                  
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>11_15</Name>
          <Title>11 to 15</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>11</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>15</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -42.5 10, -40 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>  
                <ogc:Literal>+</ogc:Literal>                
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>16_20</Name>
          <Title>16 to 20</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>16</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>20</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>                  
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>16_20</Name>
          <Title>16 to 20</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>16</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>20</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>  
                <ogc:Literal>+</ogc:Literal>                
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>21_25</Name>
          <Title>21 to 25</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>21</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>25</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -37.5 10, -35 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>                  
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>21_25</Name>
          <Title>21 to 25</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>21</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>25</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -37.5 10, -35 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>                  
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>26_30</Name>
          <Title>26 to 30</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>26</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>30</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -40 20, -35 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>                 
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>26_30</Name>
          <Title>26 to 30</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>26</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>30</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -40 20, -35 0, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label> 
                <ogc:Literal>+</ogc:Literal>                
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>31_35</Name>
          <Title>31 to 35</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>31</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>35</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -40 20, -35 0, -30 0, -32.5 10, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>                 
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>31_35</Name>
          <Title>31 to 35</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>31</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>35</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -40 20, -35 0, -30 0, -32.5 10, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label> 
                <ogc:Literal>+</ogc:Literal>                
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>36_40</Name>
          <Title>36 to 40</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>36</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>40</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -40 20, -35 0, -30 0, -35 20, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>                
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>36_40</Name>
          <Title>36 to 40</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>36</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>40</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -40 20, -35 0, -30 0, -35 20, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>  
                <ogc:Literal>+</ogc:Literal>              
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>41_45</Name>
          <Title>41 to 45</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>41</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>45</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -27.5 10, -25 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>               
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>41_45</Name>
          <Title>41 to 45</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>41</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>45</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -50 20, -45 0, -40 0, -45 20, -40 0, -35 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -27.5 10, -25 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label> 
                <ogc:Literal>+</ogc:Literal>              
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>46_50</Name>
          <Title>46 to 50</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>46</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>50</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -25 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>              
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>46_50</Name>
          <Title>46 to 50</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>46</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>50</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -25 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label> 
                <ogc:Literal>+</ogc:Literal>             
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>51_55</Name>
          <Title>51 to 55</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>51</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>55</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -32.5 10, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>             
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>51_55</Name>
          <Title>51 to 55</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>51</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>55</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -32.5 10, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label> 
                <ogc:Literal>+</ogc:Literal>            
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>56_60</Name>
          <Title>56 to 60</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>56</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>60</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>            
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>56_60</Name>
          <Title>56 to 60</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>56</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>60</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>            
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>61_65</Name>
          <Title>61 to 65</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>61</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>65</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -27.5 10, -25 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>           
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>61_65</Name>
          <Title>61 to 65</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>61</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>65</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -27.5 10, -25 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>           
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>66_70</Name>
          <Title>66 to 70</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>66</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>70</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>          
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>66_70</Name>
          <Title>66 to 70</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>66</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>70</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>          
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>71_75</Name>
          <Title>71 to 75</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>71</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>75</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -22.5 10, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>         
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>71_75</Name>
          <Title>71 to 75</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>71</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>75</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -22.5 10, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>  
                <ogc:Literal>+</ogc:Literal>       
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>76_80</Name>
          <Title>76 to 80</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>76</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>80</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -25 20, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>        
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>76_80</Name>
          <Title>76 to 80</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>76</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>80</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -25 20, -20 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>     
                <ogc:Literal>+</ogc:Literal>   
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>81_85</Name>
          <Title>81 to 85</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>81</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>85</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -17.5 10, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>       
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>81_85</Name>
          <Title>81 to 85</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>81</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>85</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -17.5 10, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>  
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>86_90</Name>
          <Title>86 to 90</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>86</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>90</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>  
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>86_90</Name>
          <Title>86 to 90</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>86</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>90</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>  
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>91_95</Name>
          <Title>91 to 95</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>91</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>95</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -12.5 10, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label> 
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>91_95</Name>
          <Title>91 to 95</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>91</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>95</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 0, -35 20, -30 0, -25 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -12.5 10, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label> 
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>96_100</Name>
          <Title>96 to 100</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>96</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>100</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label> 
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>96_100</Name>
          <Title>96 to 100</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>96</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>100</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>101_105</Name>
          <Title>101 to 105</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>101</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>105</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -22.5 10, -20 0, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>101_105</Name>
          <Title>101 to 105</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>101</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>105</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -22.5 10, -20 0, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>106_110</Name>
          <Title>106 to 110</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>106</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>110</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>106_110</Name>
          <Title>106 to 110</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>106</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>110</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>111_115</Name>
          <Title>111 to 115</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>111</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>115</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -17.5 10, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>111_115</Name>
          <Title>111 to 115</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>111</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>115</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -17.5 10, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>116_120</Name>
          <Title>116 to 120</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>116</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>120</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>116_120</Name>
          <Title>116 to 120</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>116</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>120</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>121_125</Name>
          <Title>121 to 125</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>121</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>125</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -12.5 10, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>121_125</Name>
          <Title>121 to 125</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>121</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>125</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -12.5 10, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="fill">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		
		<Rule>
          <Name>126_130</Name>
          <Title>126 to 130</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>126</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>130</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -15 20, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>126_130</Name>
          <Title>126 to 130</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>126</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>130</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -15 20, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>131_135</Name>
          <Title>131 to 135</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>131</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>135</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -7.5 10, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>131_135</Name>
          <Title>131 to 135</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>131</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>135</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -7.5 10, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>136_140</Name>
          <Title>136 to 140</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>136</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>140</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>136_140</Name>
          <Title>136 to 140</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>136</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>140</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>141_145</Name>
          <Title>141 to 145</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>141</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>145</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0, -2.5 10, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>141_145</Name>
          <Title>141 to 145</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>141</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>145</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 0, -25 20, -20 0, -15 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0, -2.5 10, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>146_150</Name>
          <Title>146 to 150</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>146</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>150</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>146_150</Name>
          <Title>146 to 150</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>146</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>150</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>151_155</Name>
          <Title>151 to 155</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>151</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>155</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -12.5 10, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>151_155</Name>
          <Title>151 to 155</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>151</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>155</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -12.5 10, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>156_160</Name>
          <Title>156 to 160</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>156</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>160</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>156_160</Name>
          <Title>156 to 160</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>156</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>160</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>161_165</Name>
          <Title>161 to 165</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>161</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>165</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -7.5 10, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>161_165</Name>
          <Title>161 to 165</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>161</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>165</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -7.5 10, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>166_170</Name>
          <Title>166 to 170</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>166</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>170</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>166_170</Name>
          <Title>166 to 170</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>166</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>170</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>171_175</Name>
          <Title>171 to 175</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>171</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>175</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0, -2.5 10, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>171_175</Name>
          <Title>171 to 175</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>171</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>175</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0, -2.5 10, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>176_180</Name>
          <Title>176 to 180</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>176</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>180</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0, -5 20, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>176_180</Name>
          <Title>176 to 180</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>176</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>180</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0, -5 20, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>181_195</Name>
          <Title>181 to 195</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>181</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>195</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0, -5 20, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#FF0000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
                  </Displacement>
                </PointPlacement>
              </LabelPlacement>
              <Fill>
                <CssParameter name="fill">#0000000</CssParameter>
              </Fill>
              <VendorOption name="partials">true</VendorOption>
              <VendorOption name="forceLeftToRight">true</VendorOption>
          </TextSymbolizer>
        </Rule>
		<Rule>
          <Name>181_195</Name>
          <Title>181 to 195</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>181</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>195</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 0, -15 20, -10 0, -5 0, -10 20, -5 0, 0 0, -5 20, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#FF0000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
                  </Displacement>
                </PointPlacement>
              </LabelPlacement>
              <Fill>
                <CssParameter name="fill">#0000000</CssParameter>
              </Fill>
              <VendorOption name="partials">true</VendorOption>
              <VendorOption name="forceLeftToRight">true</VendorOption>
          </TextSymbolizer>
        </Rule>
		<Rule>
          <Name>196_200</Name>
          <Title>196 to 200</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>196</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>200</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 20, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>196_200</Name>
          <Title>196 to 200</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>196</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>200</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 20, -5 0, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>201_205</Name>
          <Title>201 to 205</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>201</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>205</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 20, -5 0, 0 0, -2.5 10, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>201_205</Name>
          <Title>201 to 205</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>201</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>205</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 20, -5 0, 0 0, -2.5 10, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>206_210</Name>
          <Title>206 to 210</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>206</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>210</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 20, -5 0, 0 0, -5 20, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>206_210</Name>
          <Title>206 to 210</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>206</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>
                <ogc:Literal>210</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 20, -5 0, 0 0, -5 20, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#000000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>more_than_210</Name>
          <Title>more than 210</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>210</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>              
              <ogc:PropertyIsLessThanOrEqualTo>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsLessThanOrEqualTo>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 20, -5 0, 0 0, -5 20, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#FF0000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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
		<Rule>
          <Name>more_than_210</Name>
          <Title>more than 210</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsGreaterThanOrEqualTo>
                <ogc:PropertyName>windSpeed</ogc:PropertyName>                
                <ogc:Literal>210</ogc:Literal>
              </ogc:PropertyIsGreaterThanOrEqualTo>              
              <ogc:PropertyIsGreaterThan>
                <ogc:PropertyName>temperature</ogc:PropertyName>
                <ogc:Literal>0.0</ogc:Literal>
              </ogc:PropertyIsGreaterThan>
            </ogc:And>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
                <Mark>
                    <WellKnownName>wkt://POLYGON((0 0, -45 0, -40 20, -35 0, -30 20, -25 0, -20 20, -15 0, -10 20, -5 0, 0 0, -5 20, 0 0))</WellKnownName>
                    <Fill>
                        <CssParameter name="fill">#FF0000</CssParameter>
                    </Fill>
                    <Stroke>
                        <CssParameter name="stroke">#000000</CssParameter>
                        <CssParameter name="stroke-width">2</CssParameter>
                    </Stroke>
                </Mark>
                <Size>27</Size>
                <Rotation><ogc:PropertyName>angle</ogc:PropertyName></Rotation>
            </Graphic>
          </PointSymbolizer>
          <TextSymbolizer>              
              <Label>
                <ogc:Literal>+</ogc:Literal>
                <ogc:Function name="abs">
                  <ogc:Function name="rint">
                    <ogc:PropertyName>temperature</ogc:PropertyName>
                  </ogc:Function>
                </ogc:Function>
              </Label>
              <Font>
                <CssParameter name="font-family">Arial</CssParameter>
                <CssParameter name="font-size">26</CssParameter>
                <CssParameter name="font-style">normal</CssParameter>
              </Font>
              <LabelPlacement>
                <PointPlacement>
                  <AnchorPoint>
                    <AnchorPointX>0</AnchorPointX>
                    <AnchorPointY>0</AnchorPointY>
                  </AnchorPoint>
                  <Displacement>
                    <DisplacementX>0.5</DisplacementX>
                    <DisplacementY>0.5</DisplacementY>
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