<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- 타이틀 -->
<c:import url="/WEB-INF/views/common/title-meta.jsp"/>
<!-- 헤드 스크립트 -->
<c:import url="/WEB-INF/views/common/head-script.jsp"/>
	<link rel="stylesheet" href="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.css" />
	<link rel="stylesheet" href="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.css">
	<link rel="stylesheet" href="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.css" />
	<script src="https://uicdn.toast.com/calendar/latest/toastui-calendar.min.js"></script>
	<script src="https://uicdn.toast.com/tui.time-picker/latest/tui-time-picker.js"></script>
	<script src="https://uicdn.toast.com/tui.date-picker/latest/tui-date-picker.js"></script>

</head>
<body data-sidebar="dark" data-layout-mode="light">
<!-- 내비게이션바, 사이드바 등등 -->
<c:import url="/WEB-INF/views/common/layout.jsp"/>

<div class="main-content">
	<div class="page-content">
		<div class="container-fluid">

<c:import url="/WEB-INF/views/common/page-title.jsp"/>

<!-- 여기서부터 내용 작성 -->

			

										<div id="calendar" style="height: 600px;"></div>

							
					<!-- end row -->

	 	<!-- container-fluid -->			
		</div>
	<!-- page-content -->		
	</div>
<!-- 푸터(자바스크립트 로딩) -->
<c:import url="/WEB-INF/views/common/footer.jsp"/>


</div> <!-- main-content -->

		
<script type="text/javascript">
const Calendar = tui.Calendar;

const container = document.getElementById('calendar');

const options = {
  defaultView: 'month',
  timezone: {
    zones: [
      {
        timezoneName: 'Asia/Seoul',
        displayLabel: 'Seoul',
      },
    ],
  },
  calendars: [
    {
      id: 'cal1',
      name: '개인',
      backgroundColor: '#03bd9e',
    },
    {
      id: 'cal2',
      name: '직장',
      backgroundColor: '#00a9ff',
    },
  ],
};

const calendar = new Calendar(container, options);

calendar.createEvents([
  {
    id: '1',
    calendarId: 'cal1',
    title: 'timed event',
    body: 'TOAST UI Calendar',
    start: '2023-10-11T10:00:00',
    end: '2023-10-11T11:00:00',
    location: 'Meeting Room A',
    attendees: ['A', 'B', 'C'],
    category: 'time',
    state: 'Free',
    isReadOnly: true,
    color: '#fff',
    backgroundColor: '#ccc',
    customStyle: {
      fontStyle: 'italic',
      fontSize: '15px',
    },
  }, // EventObject
]);

const timedEvent = calendar.getEvent('1', 'cal1'); // EventObject
calendar.on('clickEvent', ({ event }) => {
  console.log(event); // EventObject
});
calendar.createEvents([
	  {
	    id: 'event1',
	    calendarId: 'cal2',
	    title: '주간 회의',
	    start: '2023-10-17T09:00:00',
	    end: '2023-10-17T10:00:00',
	  },
	  {
	    id: 'event2',
	    calendarId: 'cal1',
	    title: '점심 약속',
	    start: '2023-10-18T12:00:00',
	    end: '2023-10-18T13:00:00',
	  },
	  {
	    id: 'event3',
	    calendarId: 'cal2',
	    title: '휴가',
	    start: '2023-10-18',
	    end: '2023-10-20',
	    isAllday: true,
	    category: 'allday',
	  },
	]);

calendar.setOptions({
	  useFormPopup: true,
	  useDetailPopup: true,
	});
	
calendar.render();

//일정 편집 이벤트
calendar.on('beforeUpdateSchedule', scheduleData => {
	  const {schedule, changes} = scheduleData;
	  a = schedule, b = scheduleData;
	  console.log("편집" + a + " , " + b);
	  console.log("편집" + scheduleData);
	  calendar.updateSchedule(schedule.id, schedule.calendarId, changes);
});

//일정 삭제 이벤트
calendar.on('beforeDeleteSchedule', scheduleData => {
	  const {schedule, start, end} = scheduleData;

	  schedule.start = start;
	  schedule.end = end;
	  calendar.deleteSchedule(schedule.id, schedule.calendarId);
	});	
</script>
		

</body>
</html>

