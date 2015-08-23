dmg3 <- subset(propcroptotsum, !grepl("WIND", EventType, ignore.case = TRUE)&!grepl("SNOW|Blizzard", EventType, ignore.case = TRUE)&!grepl("Flood|HIGH WATER|FLD", EventType, ignore.case = TRUE)&!grepl("SNOW|Blizzard|WINTER STORM", EventType, ignore.case = TRUE)&!grepl("cold|Freez|FROST|ICE", EventType, ignore.case = TRUE)&!grepl("HIGH WAVES|Beach|Tide|SURF", EventType, ignore.case = TRUE)&!grepl("drought|DRY", EventType, ignore.case = TRUE)&!grepl("HEAT", EventType, ignore.case = TRUE)&!grepl("HAIL", EventType, ignore.case = TRUE)&!grepl("RAIN|WETNESS", EventType, ignore.case = TRUE)&!grepl("hurricane", EventType, ignore.case = TRUE)&!grepl("LIGHTNING|LIGNTNING|LIGHTING", EventType, ignore.case = TRUE)&!grepl("MUD", EventType, ignore.case = TRUE)&!grepl("THUNDERSTORM", EventType, ignore.case = TRUE)&!grepl("TORNADO|TORNDAO", EventType, ignore.case = TRUE)&!grepl("TROPICAL", EventType, ignore.case = TRUE)&!grepl("FIRE", EventType, ignore.case = TRUE)&!grepl("LANDSLIDE", EventType, ignore.case = TRUE)&!grepl("WINTER WEATHER", EventType, ignore.case = TRUE)&!grepl("Surge", EventType, ignore.case = TRUE)&!grepl("FOG", EventType, ignore.case = TRUE))

propcroptotsum["EVENT"] <- propcroptotsum

for (i in 1:nrow(propcroptotsum)) {
  if(grepl("FOG", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "FOG"
  }
  if(grepl("Surge", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "SURGE"
  }
  if(grepl("WINTER WEATHER", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "WINTER WEATHER"
  }
  if(grepl("LANDSLIDE", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "LANDSLIDE"
  }
  if(grepl("FIRE", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "FIRE"
  }
  if(grepl("TROPICAL", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "TROPICAL STORM"
  }
  if(grepl("TORNADO|TORNDAO", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "TORNADO"
  }
  if(grepl("THUNDERSTORM", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "THUNDERSTORM"
  }
  if(grepl("MUD", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "MUD"
  } 
  if(grepl("LIGHTNING|LIGNTNING|LIGHTING", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "LIGHTNING"
  } 
  
  if(grepl("hurricane", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "HURRICANE"
  } 
  if(grepl("RAIN|WETNESS", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "RAIN"
  } 
  if(grepl("HAIL", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "HAIL"
  }  
  if(grepl("HEAT", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "HEAT"
  }  
  if(grepl("drought|DRY", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "DROUGHT"
  }  
  if(grepl("HIGH WAVES|Beach|Tide|SURF", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "HIGH SURF"
  } 
  if(grepl("cold|Freez|FROST|ICE", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "COLD FREEZE"
  }
  if(grepl("SNOW|Blizzard|WINTER STORM", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "SNOW"
  }
  if(grepl("Flood|HIGH WATER|FLD", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "FLOOD"
  }
  
  if(grepl("WIND", propcroptotsum[i,'EventType'], ignore.case = TRUE)) {
    propcroptotsum[i,'EVENT']= "WIND"
  }
  
}

stormdata["EVENT"] <- stormdata["EVTYPE"]

for (i in 1:nrow(stormdata)) {
  if(grepl("FOG", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "FOG"
  }
  if(grepl("Surge", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "SURGE"
  }
  if(grepl("WINTER WEATHER", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "WINTER WEATHER"
  }
  if(grepl("LANDSLIDE", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "LANDSLIDE"
  }
  if(grepl("FIRE", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "FIRE"
  }
  if(grepl("TROPICAL", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "TROPICAL STORM"
  }
  if(grepl("TORNADO|TORNDAO", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "TORNADO"
  }
  if(grepl("THUNDERSTORM", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "THUNDERSTORM"
  }
  if(grepl("MUD", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "MUD"
  } 
  if(grepl("LIGHTNING|LIGNTNING|LIGHTING", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "LIGHTNING"
  } 
  
  if(grepl("hurricane", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "HURRICANE"
  } 
  if(grepl("RAIN|WETNESS", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "RAIN"
  } 
  if(grepl("HAIL", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "HAIL"
  }  
  if(grepl("HEAT", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "HEAT"
  }  
  if(grepl("drought|DRY", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "DROUGHT"
  }  
  if(grepl("HIGH WAVES|Beach|Tide|SURF", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "HIGH SURF"
  } 
  if(grepl("cold|Freez|FROST|ICE", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "COLD FREEZE"
  }
  if(grepl("SNOW|Blizzard|WINTER STORM", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "SNOW"
  }
  if(grepl("Flood|HIGH WATER|FLD", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "FLOOD"
  }
  
  if(grepl("WIND", stormdata[i,'EVTYPE'], ignore.case = TRUE)) {
    stormdata[i,'EVENT']= "WIND"
  }
  
}