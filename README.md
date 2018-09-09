# samplecocoapod
CalendarView framework written in siwft for mac os

#usage

## Initialize the Calendar View

```
  let calendarView = CalendarView()
```

## Add Calendar to the view hierarchy
```
  addChildViewController(calendarView)
  calendarView.view.frame = containerView.frame
  view.addSubview(calendarView.view)
```

## Set the calendar properties
```
  calendarView.counts = generageCounts()
  calendarView.selectedDate = Date()
```
