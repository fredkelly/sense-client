# sense-client
Quick and dirty Ruby client for the Hello Sense sleep tracker.

## Ussage
### Logging in:
```ruby
client = Sense::Client.new
client.login MY_USERNAME, MY_PASSWORD
```
### Room conditions
```ruby
client.room
=> {"temperature"=>
  {"value"=>18.53,
   "message"=>"The temperature is **just right**.",
   "ideal_conditions"=>
    "People tend to sleep best when temperature is between **15°C** and **20°C**.",
   "condition"=>"IDEAL",
   "last_updated_utc"=>1494705420000,
   "unit"=>"c"},
 "humidity"=>
  {"value"=>41.526333,
   "message"=>"The humidity is **just right**.",
   "ideal_conditions"=>
    "People tend to sleep best when humidity is between **30%** and **60%**.",
   "condition"=>"IDEAL",
   "last_updated_utc"=>1494705420000,
   "unit"=>"%"},
 "light"=>
  {"value"=>0.91552734,
   "message"=>"The light level is **just right**.",
   "ideal_conditions"=>
    "For ideal sleep, your bedroom should be as dark as possible, which is below **2lux**.",
   "condition"=>"IDEAL",
   "last_updated_utc"=>1494705420000,
   "unit"=>"lux"},
 "sound"=>
  {"value"=>35.0,
   "message"=>"The noise level is **just right**.",
   "ideal_conditions"=>
    "For ideal sleep, your bedroom should be as quiet as possible, which is usually below **40dB**.",
   "condition"=>"IDEAL",
   "last_updated_utc"=>1494705420000,
   "unit"=>"dB"},
 "particulates"=>
  {"value"=>54.477455,
   "message"=>"The air quality is **just right**.",
   "ideal_conditions"=>
    "For the best sleep, the air in your bedroom should be as clean as possible. Ideally, it should be below **80µg/m³**.",
   "condition"=>"IDEAL",
   "last_updated_utc"=>1494705420000,
   "unit"=>"AQI"}}
```
### Timeline
```ruby
client.timeline Date.new(2017,5,12)
=>{"score"=>69,
 "score_condition"=>"WARNING",
 "message"=>
  "You were asleep for **6.1 hours**, and sleeping soundly for 5.7 hours.",
 "date"=>"2017-05-12",
 "sleep_periods"=>["NIGHT"],
 "events"=>
  [{"timestamp"=>1494634620000,
    "timezone_offset"=>3600000,
    "duration_millis"=>60000,
    "message"=>"You went to bed.",
    "sleep_depth"=>0,
    "sleep_state"=>"AWAKE",
    "event_type"=>"GOT_IN_BED",
    "sleep_period"=>"NIGHT",
    "valid_actions"=>["ADJUST_TIME", "VERIFY", "INCORRECT"]},
    # ...
   {"timestamp"=>1494664800000,
    "timezone_offset"=>3600000,
    "duration_millis"=>60000,
    "message"=>"You got out of bed.",
    "sleep_depth"=>0,
    "sleep_state"=>"AWAKE",
    "event_type"=>"GOT_OUT_OF_BED",
    "sleep_period"=>"NIGHT",
    "valid_actions"=>["ADJUST_TIME", "VERIFY", "INCORRECT"]}],
 "metrics"=>
  [{"name"=>"total_sleep",
    "value"=>368,
    "unit"=>"MINUTES",
    "condition"=>"IDEAL"},
   {"name"=>"sound_sleep",
    "value"=>211,
    "unit"=>"MINUTES",
    "condition"=>"IDEAL"},
   {"name"=>"time_to_sleep",
    "value"=>5,
    "unit"=>"MINUTES",
    "condition"=>"IDEAL"},
   {"name"=>"times_awake",
    "value"=>1,
    "unit"=>"QUANTITY",
    "condition"=>"IDEAL"},
   {"name"=>"fell_asleep",
    "value"=>1494634920000,
    "unit"=>"TIMESTAMP",
    "condition"=>"IDEAL"},
   {"name"=>"woke_up",
    "value"=>1494657000000,
    "unit"=>"TIMESTAMP",
    "condition"=>"IDEAL"},
   {"name"=>"temperature",
    "value"=>nil,
    "unit"=>"CONDITION",
    "condition"=>"IDEAL"},
   {"name"=>"humidity",
    "value"=>nil,
    "unit"=>"CONDITION",
    "condition"=>"IDEAL"},
   {"name"=>"particulates",
    "value"=>nil,
    "unit"=>"CONDITION",
    "condition"=>"IDEAL"},
   {"name"=>"light", "value"=>nil, "unit"=>"CONDITION", "condition"=>"IDEAL"},
   {"name"=>"sound", "value"=>nil, "unit"=>"CONDITION", "condition"=>"IDEAL"}],
 "locked_down"=>true}
```
