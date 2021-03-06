"Resource/UI/StorePrice.res"
{
	"StorePrice"
	{
		"ControlName"	"CStorePricePanel"
		"fieldName"		"StorePrice"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"15"
		"wide"			"87"
		"tall"			"49"
		"visible"		"1"
		"enabled"		"1"
	}

	"Price"
	{
		"ControlName"	"CTFLabel"
		"fieldName"		"Price"
		"font"			"FontStorePrice"
		"textAlignment"	"east"
		"xpos"			"0"
		"ypos"			"37"
		"zpos"			"15"
		"wide"			"85"
		"tall"			"12"
		"textinsetx"	"4"
		"autoResize"	"1"
		"pinCorner"		"0"	
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%price%"
	}

	"OG_Price"
	{
		"ControlName"	"CTFLabel"
		"fieldName"		"OG_Price"
		"font"			"FontStoreOriginalPrice"
		"textAlignment"	"east"
		"xpos"			"0"
		"ypos"			"27"
		"zpos"			"0"
		"wide"			"85"
		"tall"			"12"
		"textinsetx"	"4"
		"autoResize"	"1"
		"pinCorner"		"0"	
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%og_price%"
		"fgcolor"		"117 107 94 255"
	}

	"OG_Price_CrossOut"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"OG_Price_CrossOut"
		"xpos"			"0"
		"ypos"			"32"
		"zpos"			"0"
		"wide"			"87"
		"tall"			"5"
		"visible"		"0"
		"enabled"		"1"
		"image"			"loadout_solid_line"
		"scaleImage"	"1"
	}

	"Discount"
	{
		"ControlName"	"CTFLabel"
		"fieldName"		"Discount"
		"font"			"FontStorePrice"
		"textAlignment"	"west"
		"xpos"			"0"
		"ypos"			"37"
		"zpos"			"15"
		"wide"			"87"
		"tall"			"12"
		"textinsetx"	"8"
		"autoResize"	"1"
		"pinCorner"		"0"	
		"visible"		"1"
		"enabled"		"1"
		"labelText"		"%discount%"
		"paintbackground"	"0"
		"border"		"StoreDiscountBorder"
	}

	"New"
	{
		"ControlName"	"CTFLabel"
		"fieldName"		"New"
		"font"			"FontStorePrice"
		"textAlignment"	"east"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"15"
		"wide"			"85"
		"tall"			"12"
		"textinsetx"	"8"
		"autoResize"	"1"
		"pinCorner"		"0"	
		"visible"		"0"
		"enabled"		"1"
		"labelText"		"#Store_Price_New"
		"paintbackground"	"0"
		"border"		"StoreNewBorder"
		"fgcolor"		"10 10 10 255"
	}

	"Sale"
	{
		"ControlName"	"CTFLabel"
		"fieldName"		"Sale"
		"font"			"FontStorePrice"
		"textAlignment"	"east"
		"xpos"			"0"
		"ypos"			"0"
		"zpos"			"15"
		"wide"			"85"
		"tall"			"12"
		"textinsetx"	"8"
		"autoResize"	"1"
		"pinCorner"		"0"	
		"visible"		"0"
		"enabled"		"1"
		"labelText"		"#Store_Price_Sale"
		"paintbackground"	"0"
		"border"		"StoreDiscountBorder"
	}

	"Limited"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"Limited"
		"xpos"			"0"
		"ypos"			"-6"
		"zpos"			"0"
		"wide"			"32"
		"tall"			"32"
		"visible"		"0"
		"enabled"		"1"
		"image"			"../backpack/crafting/limited_time_sticker"
		"scaleImage"	"1"
	}
}
