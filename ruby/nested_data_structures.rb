# a nested data structure for keeping track of pomodoros
log = [
  {
    date: "2016-06-20",
    time: "11:00 AM",
    tags: ["ruby", "phase0", "pairing"]},
  {
    date: "2016-06-23",
    time: "11:30 AM",
    tags: ["css", "phase0", "solo"]
    }
  ]

# first pomodoro's timestamp
p log[0][:time]

#second pomodoro's tags
p log[1][:tags]

#second pomodoro's last tag
p log[1][:tags][-1]
