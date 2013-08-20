<?php
// -------------------------------------------------------------------
// Nederlandse vertaling voor Event Calendar
// -------------------------------------------------------------------

i18n::include_locale_file('event_calendar', 'en_US');

global $lang;

if(array_key_exists('nl_NL', $lang) && is_array($lang['nl_NL'])) {
	$lang['nl_NL'] = array_merge($lang['en_US'], $lang['nl_NL']);
} else {
	$lang['nl_NL'] = $lang['en_US'];
}

/** Date Templating **/

// e.g. 4 oktober, 2009
$lang['nl_NL']['Calendar']['OneDay'] = 
	'%{sDayNumShort}. %{sMonShort}, %{sYearFull}';

// e.g. 4-6 oktober, 2009
$lang['nl_NL']['Calendar']['SameMonthSameYear'] = 
	'%{sDayNumShort}. %{sDayNumShort} - %{sMonShort}, %{eYearFull}';

// e.g. 4 okt - 6 Nov, 2009
$lang['nl_NL']['Calendar']['DiffMonthSameYear'] = 
	'%{sDayNumShort}. %{sMonShort} - %{sDayNumShort}. %{sMonShort}, %{eYearFull}';

// e.g. 30 Dec, 2008 - 2 Jan, 2009
$lang['nl_NL']['Calendar']['DiffMonthDiffYear'] = 
	'%{sDayNumShort}. %{sMonShort}, %{sYearFull} - %{eDayNumShort} %{eMonShort}, %{eYearFull}';


// "Headers" control the display when a date range is given to the calendar through the URL.
$lang['nl_NL']['Calendar']['OneDayHeader'] =
	'%{sDayNumShort} %{sMonFull}, %{sYearFull}';

$lang['nl_NL']['Calendar']['MonthHeader'] =
	'%{sMonFull}, %{sYearFull}';

$lang['nl_NL']['Calendar']['YearHeader'] =
	'%{sYearFull}';	
	
/** Language **/


// Output for class or file: Calendar
$lang['nl_NL']['Calendar']['NUMBEROFEVENTS'] = 
	'Default aantal events.';
$lang['nl_NL']['Calendar']['DEFAULTDATEHEADER'] = 
	'Default datum hoofding (wordt getoond wanneer geen datumbereik geselecteerd is)';
$lang['nl_NL']['Calendar']['NUMBERFUTUREDATES'] = 
	'Aantal toekomstige data die getoond worden voor herhalende events';
$lang['nl_NL']['Calendar']['UPCOMINGEVENTSFOR'] = 
	'Toekomstige events voor %s';
$lang['nl_NL']['Calendar']['FILTER'] = 
	'Filter';

// Output for class or file: CalendarDateTime
$lang['nl_NL']['CalendarDateTime']['INVALIDFORMAT'] = 
	'Foutieve datumformat. Moet "dmy" of "mdy" zijn';

// Output for class or file: CalendarEvent
$lang['nl_NL']['CalendarEvent']['REPEATEVENT'] = 
	'Herhaal dit event';
$lang['nl_NL']['CalendarEvent']['DESCRIBEINTERVAL'] = 
	'Geeft interval wanneer dit event doorgaat.';
$lang['nl_NL']['CalendarEvent']['EVERY'] = 
	'Elke ';
$lang['nl_NL']['CalendarEvent']['DAYS'] = 
	' dag(en)';
$lang['nl_NL']['CalendarEvent']['WEEKS'] = 
	' weken';
$lang['nl_NL']['CalendarEvent']['ONFOLLOWINGDAYS'] = 
	'Op de volgende dag(en)...';
$lang['nl_NL']['CalendarEvent']['MONTHS'] = 
	' maand(en)';
$lang['nl_NL']['CalendarEvent']['ONTHESEDATES'] = 
	'Op deze datum(s)...';
$lang['nl_NL']['CalendarEvent']['ONTHE'] = 
	'Op de...';
$lang['nl_NL']['CalendarEvent']['OFTHEMONTH'] = 
	' van de maand.';
$lang['nl_NL']['CalendarEvent']['ANYEXCEPTIONS'] = 
	'Uitzondering op dit patroon? Voeg hieronder de data toe.';
$lang['nl_NL']['CalendarEvent']['DATE'] = 
	'Datum';
$lang['nl_NL']['CalendarEvent']['RSSFEED'] = 
	'RSS Feed van deze kalender';

// Output for class or file: Calendar.ss
$lang['nl_NL']['Calendar.ss']['BROWSECALENDAR'] = 
	'Doorblader de kalender';
$lang['nl_NL']['Calendar.ss']['USECALENDAR'] = 
	'Gebruik de onderstaande kalender om door de datums te navigeren.';
$lang['nl_NL']['Calendar.ss']['SUBSCRIBE'] = 
	'Abonneer op de kalender';
$lang['nl_NL']['Calendar.ss']['ALLDAY'] = 
	'De hele dag';
$lang['nl_NL']['Calendar.ss']['TIME'] = 
	'Uur';
$lang['nl_NL']['Calendar.ss']['MORE'] = 
	'meer...';
$lang['nl_NL']['Calendar.ss']['SEEALSO'] = 
	'Zie ook';
$lang['nl_NL']['Calendar.ss']['ADD'] = 
	'Voeg to aan kalender';
$lang['nl_NL']['Calendar.ss']['NOEVENTS'] = 
	'Er zijn geen events';

// Output for class or file: CalendarEvent.ss
$lang['nl_NL']['CalendarEvent.ss']['BROWSECALENDAR'] = 
	'Doorblader de kalender';
$lang['nl_NL']['CalendarEvent.ss']['USECALENDAR'] = 
	'Gebruik de onderstaande kalender om door de datums te navigeren.';
$lang['nl_NL']['CalendarEvent.ss']['FILTERCALENDAR'] = 
	'Filter kalender';
$lang['nl_NL']['CalendarEvent.ss']['BACKTO'] = 
	'Terug naar';
$lang['nl_NL']['CalendarEvent.ss']['SUBSCRIBE'] = 
	'Abonneer op de kalender';
$lang['nl_NL']['CalendarEvent.ss']['ADDITIONALDATES'] = 
	'Extra datums;

$lang['nl_NL']['CalendarWidget']['LOCALEFILE'] = 'date_nl.js';
