require 'minitest/autorun'
require_relative '../lib/spoj_parser'

class SpojParserTest < MiniTest::Unit::TestCase
  def test_no_problem_exists
    refute SpojParser.new(NO_PROBLEM_HTML).problem_exists?
  end

  def test_problem_exists
    assert SpojParser.new(EMPTY_PROBLEM_HTML).problem_exists?
    assert SpojParser.new(PROBLEM_HTML).problem_exists?
  end

  def test_get_languages
    languages = SpojParser.new(PROBLEM_LIST_HTML).languages
    assert languages.include?(['ADA 95', 'ADA'])
    assert languages.include?(['Pascal', 'PAS fpc'])
    assert languages.include?(['Perl 6', 'PERL 6'])
  end

  def test_problem_solved
    refute SpojParser.new(EMPTY_PROBLEM_HTML).problem_solved?
    assert SpojParser.new(PROBLEM_HTML).problem_solved?
  end

  PROBLEM_LIST_HTML = <<'EOF'
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>

<title>Sphere Online Judge (SPOJ)  - Problems</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2" id="metatag">
<META NAME="Keywords" CONTENT="programming, language, algorithm, spoj, contest, contester, Java, C#, Pascal, C, C++, python, ruby, caml, ocaml, perl, haskell, lisp, prolog, fortran, assembler, asembler, functional, online, judge, problem, problemset, ACM">

<link href="//www.spoj.com/gfx/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="/rss/" rel="alternate" type="application/rss+xml" title="RSS Feed">
<link href="//www.spoj.com/themes/common.css" rel="stylesheet" type="text/css" id="theme">
<link href="/style.css" rel="stylesheet" type="text/css" id="theme">
<link href="//www.spoj.com/themes/tooltips.css" rel="stylesheet" type="text/css" id="theme">
<script type='text/javascript' src='//www.spoj.com/gfx/jquery.js'></script>
<script type="text/javascript" src="//www.spoj.com/gfx/jquery.timers.js"></script>
<script type="text/javascript" src="//www.spoj.com/gfx/jquery.cookie.js"></script> 
<!--
<meta property="og:description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
<meta name="description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
-->
<style type="text/css">
<!--
.maintable {width: 1055;} 
-->
</style>
<script type="text/javascript" language="javascript">
<!--
function UnCryptMailto(s) {
	var n=0;
	var r="";
	for(var i=0;i<s.length;i++) {		
		n=s.charCodeAt(i); 
		if (n>=8364) {n = 128;}
		r += String.fromCharCode(n+(2));	
	}
	return r;
}
function linkTo_UnCryptMailto(s)	{
	location.href=UnCryptMailto(s);
}
// -->
</script>

<script type="text/javascript">
function recordOutboundLink(link, category, action) {
  try {
    var pageTracker=_gat._getTracker("UA-XXXXX-X");
    pageTracker._trackEvent(category, action);
    setTimeout('document.location = "' + link.href + '"', 100)
  }catch(err){}
}
</script>

    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shCore.js"></script>
	<script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushCpp.js"></script>
	<script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushCSharp.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushJava.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushPhp.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushPython.js"></script>
	<link type="text/css" rel="stylesheet" href="/gfx/SyntaxHighlighter/styles/shCore.css"/>
	<link type="text/css" rel="stylesheet" href="/gfx/SyntaxHighlighter/styles/shThemeDefault.css"/>
	
	<script type="text/javascript">
		SyntaxHighlighter.all();
	</script>
	

		<meta property="og:image" content="http://www.spoj.com/gfx/spoj-fb.jpg"/>
	<meta property="og:description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
	<meta name="description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
		<meta property="og:site_name" content="spoj.com"/>

</head>
<body>
<center>



<table cellpadding="10" cellspacing="0" class="maintable" id="maintable">
<tr>
    <td colspan="2" class="header">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
		<td class="headerleft"/>
		<td class="headercenter">
<h1><img alt="Sphere Online Judge" title="Sphere Online Judge" src="/gfx/sphere-spoj-small.png" border=0 style="margin-top:-4px;margin-bottom:-4px"></h1>
		</td>
		<td class="headerright"/>
	</tr>
	</table>
    </td>
</tr>
<tr><td class="menu" width="92" valign="top">

	
<div class="section">
	
<form name="login"  action="https://www.spoj.com/problems/classical/" method="post" 
onsubmit="if(0&&document.login.ssl.checked) document.login.action='https://www.spoj.com/problems/classical/'" style="margin-bottom: 18px"> 
User: <input name="login_user" type="text" style="width: 85px;" class="form"><BR>
Password: <input name="password" type="password" style="width: 85px;" class="form"><BR>
<div style="font-size: 10px; ">
<script language="javascript" type="text/javascript">
<!--
    //document.write('<input type="checkbox" name="ssl" id="ssl" /><label for="ssl">secure</label><br/>');
//-->
</script>
<div title="Keep me signed in for today">
<input type="checkbox" name="autologin" value="1" id="autologin" /><label for="autologin">for today</label>
</div>
<!--Keep me signed in for today-->
</div>
<input name="submit" type="submit" value="Log In" class="button" style="width: 85px; margin-bottom: 10px;">

</form>

<script type="text/javascript">
$(document).ready(function(){
	if( $.cookie('ssl') == '1' ){
		$("#ssl").attr('checked', true);
	}
	$("#ssl").change(function(){
		if($(this).is(':checked')){
			$.cookie('ssl', '1');
		} else {
			$.cookie('ssl', '0');
		}
	});
});
</script>

</div>
<div class="menucmd"><a href="/register">register</a><br><a href="/tutorials">tutorials</a><br><br><a href="/status">status</a><br><a href="/submit">submit</a><br><a href="/problems/classical/">problems</a><br><div class="submenucmd"><a href="/problems/classical">classical</a><br><a href="/problems/challenge">challenge</a><br><a href="/problems/partial">partial</a><br><a href="/problems/tutorial">tutorial</a><br><a href="/problems/riddle">riddle</a><br></div><a href="/search">search</a><br><br><a href="/">news</a><br><a href="/contests">contests</a><br><a href="/ranks/">ranks</a><br><br><a href="/forum">forum</a><br><a href="/tools">tools</a><br><a href="/clusters">clusters</a><br><a href="/credits">credits</a><br><hr></div><a href="/problems/classical/"></a><br>


	<div class="time">
Server time:</div>
<div class="time">
2014-04-28
<br>
<b>09 : 57 : 09</b>
</div>

</td><td style="width: 748px; padding:0px;" valign="top" class="content0">
        <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
                <td style="padding:0px;" colspan="2"><center>
                                
                </center></td>
        </tr>
        <tr>
                <td class="content" width="99%" style="padding: 10px">
<!-- google_ad_section_start -->
<table class="navigation" width="100%">
<tr><td class="navigationcenter">
<small>
All<a href="/problems/classical/all/lang=ADA" title="ADA 95">ADA</a>
<a href="/problems/classical/all/lang=DOC" title="Any document">DOC</a>
<a href="/problems/classical/all/lang=ASM" title="Assembler">ASM</a>
<a href="/problems/classical/all/lang=AWK" title="Awk">AWK</a>
<a href="/problems/classical/all/lang=BASH" title="Bash">BASH</a>
<a href="/problems/classical/all/lang=BF" title="Brainf**k">BF</a>
<a href="/problems/classical/all/lang=C" title="C">C</a>
<a href="/problems/classical/all/lang=CS" title="C#">C#</a>
<a href="/problems/classical/all/lang=CPP%204.3.2" title="C++">C++ 4.3.2</a>
<a href="/problems/classical/all/lang=CPP%204.0.0-8" title="C++">C++ 4.0.0-8</a>
<a href="/problems/classical/all/lang=C99%20strict" title="C99 strict">C99 strict</a>
<a href="/problems/classical/all/lang=CLPS" title="Clips">CLPS</a>
<a href="/problems/classical/all/lang=CLOJ" title="Clojure">CLOJ</a>
<a href="/problems/classical/all/lang=LISP%20sbcl" title="Common Lisp">LISP sbcl</a>
<a href="/problems/classical/all/lang=LISP%20clisp" title="Common Lisp">LISP clisp</a>
<a href="/problems/classical/all/lang=D" title="D">D</a>
<a href="/problems/classical/all/lang=ERL" title="Erlang">ERL</a>
<a href="/problems/classical/all/lang=FS" title="F#">F#</a>
<a href="/problems/classical/all/lang=FORT" title="Fortran 95">FORT</a>
<a href="/problems/classical/all/lang=GO" title="Go">GO</a>
<a href="/problems/classical/all/lang=HASK" title="Haskell">HASK</a>
<a href="/problems/classical/all/lang=ICON" title="Icon">ICON</a>
<a href="/problems/classical/all/lang=ICK" title="Intercal">ICK</a>
<a href="/problems/classical/all/lang=JAR" title="JAR">JAR</a>
<a href="/problems/classical/all/lang=JAVA" title="Java">JAVA</a>
<a href="/problems/classical/all/lang=JS" title="JavaScript">JS</a>
<a href="/problems/classical/all/lang=LUA" title="Lua">LUA</a>
<a href="/problems/classical/all/lang=NEM" title="Nemerle">NEM</a>
<a href="/problems/classical/all/lang=NICE" title="Nice">NICE</a>
<a href="/problems/classical/all/lang=NODEJS" title="Node.js">NODEJS</a>
<a href="/problems/classical/all/lang=CAML" title="Ocaml">CAML</a>
<a href="/problems/classical/all/lang=PAS%20fpc" title="Pascal">PAS fpc</a>
<a href="/problems/classical/all/lang=PAS%20gpc" title="Pascal">PAS gpc</a>
<a href="/problems/classical/all/lang=PDF" title="PDF">PDF</a>
<a href="/problems/classical/all/lang=PERL" title="Perl">PERL</a>
<a href="/problems/classical/all/lang=PERL%206" title="Perl 6">PERL 6</a>
<a href="/problems/classical/all/lang=PHP" title="PHP">PHP</a>
<a href="/problems/classical/all/lang=PIKE" title="Pike">PIKE</a>
<a href="/problems/classical/all/lang=PS" title="PostScript">PS</a>
<a href="/problems/classical/all/lang=PRLG" title="Prolog">PRLG</a>
<a href="/problems/classical/all/lang=PYTH%202.7" title="Python">PYTH 2.7</a>
<a href="/problems/classical/all/lang=PYTH%203.2.3" title="Python 3">PYTH 3.2.3</a>
<a href="/problems/classical/all/lang=PYTH%203.2.3%20n" title="Python 3 nbc">PYTH 3.2.3 n</a>
<a href="/problems/classical/all/lang=RUBY" title="Ruby">RUBY</a>
<a href="/problems/classical/all/lang=SCALA" title="Scala">SCALA</a>
<a href="/problems/classical/all/lang=SCM%20guile" title="Scheme">SCM guile</a>
<a href="/problems/classical/all/lang=SCM%20qobi" title="Scheme">SCM qobi</a>
<a href="/problems/classical/all/lang=SED" title="Sed">SED</a>
<a href="/problems/classical/all/lang=ST" title="Smalltalk">ST</a>
<a href="/problems/classical/all/lang=TCL" title="Tcl">TCL</a>
TECS
<a href="/problems/classical/all/lang=TEXT" title="Text">TEXT</a>
<a href="/problems/classical/all/lang=WSPC" title="Whitespace">WSPC</a>
</small>
</td></tr>
</table>
<!-- google_ad_section_end -->

<H3>list of classical problems </H3>

<table class="navigation" width="99%">
<tr><td align="left" width="27%">
<i>Previous</i></td><td class="navigationcenter" width="4%">&nbsp;1</td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=50" class="pager_link">&nbsp;2</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=100" class="pager_link">&nbsp;3</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=150" class="pager_link">&nbsp;4</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=200" class="pager_link">&nbsp;5</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=250" class="pager_link">&nbsp;6</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=300" class="pager_link">&nbsp;7</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=350" class="pager_link">&nbsp;8</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=400" class="pager_link">&nbsp;9</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=450" class="pager_link">&nbsp;10</a></td> 
<td class="navigationcenter" width="4%"><a href="/problems/classical/sort=0,start=500" class="pager_link">&nbsp;11</a></td> 
<td align="right" width="25%">
<a href="/problems/classical/sort=0,start=50" class="pager_link">Next</a> <a href="/problems/classical/sort=0,start=2950" class="pager_link">&gt;</a></td></table>
<script type="text/javascript"><!--
google_ad_client = "ca-pub-4453360425583535";
/* Spoj - baner gĂłrny */
google_ad_slot = "5796055248";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script><a rel="nofollow" href="https://www.digitalocean.com/?refcode=c59674ea4847" class="freelancer_728" style="display: none;"><img src="/gfx/digitalocean-horizontal-eps.png" width=410 height=109 border=0></a>

<table class="problems" width="100%">
<tr class="headerrow">
<th width="6%" class="headerrowleft"><a href="?sort=5" title="Problem ID. Click here to sort.">ID</a></th>
<th width="60%"><a href="?sort=2" title="Problem name. Click here to sort. Click on the name of a problem to read its description.">NAME</a></th>
<th width="11%"><a href="?sort=1" title="Problem code. Click here to sort. If a link in this column is inactive for some problem, solutions cannot be submitted.">CODE</a></th>
<th width="9%"><a href="?sort=6" title="The number of users who have solved a problem. Click here to sort.">USERS</a></th>
<th width="5%" class="headerrowright"><a href="?sort=7" title="The percentage of all solutions to a problem, which were accepted. This is some indicator of the difficulty of the problem. Click here to sort.">ACC&nbsp;%</a></th>
</tr>

<tr class="problemrow">
<td>1</td>
<td align="left">&nbsp;
<a href="/problems/TEST/">&nbsp;<b>Life, the Universe, and Everything</b></a></td>
<td><a href="/submit/TEST" title="Submit a solution to this problem.">
TEST</a></td>
<td><a href="/ranks/TEST" title="Value 0 points. See the best solutions.">52250</a></td>
<td><a href="/status/TEST" title="See all submitted solutions to this problem.">34.50</a></td>
</tr>
<tr class="problemrow">
<td>2</td>
<td align="left">&nbsp;
<a href="/problems/PRIME1/">&nbsp;<b>Prime Generator</b></a></td>
<td><a href="/submit/PRIME1" title="Submit a solution to this problem.">
PRIME1</a></td>
<td><a href="/ranks/PRIME1" title="Value 0.01 points. See the best solutions.">13077</a></td>
<td><a href="/status/PRIME1" title="See all submitted solutions to this problem.">12.17</a></td>
</tr>
<tr class="problemrow">
<td>3</td>
<td align="left">&nbsp;
<a href="/problems/SBSTR1/">&nbsp;<b>Substring Check (Bug Funny)</b></a></td>
<td><a href="/submit/SBSTR1" title="Submit a solution to this problem.">
SBSTR1</a></td>
<td><a href="/ranks/SBSTR1" title="Value 0.17 points. See the best solutions.">419</a></td>
<td><a href="/status/SBSTR1" title="See all submitted solutions to this problem.">10.91</a></td>
</tr>
<tr class="problemrow">
<td>4</td>
<td align="left">&nbsp;
<a href="/problems/ONP/">&nbsp;<b>Transform the Expression</b></a></td>
<td><a href="/submit/ONP" title="Submit a solution to this problem.">
ONP</a></td>
<td><a href="/ranks/ONP" title="Value 0.01 points. See the best solutions.">11453</a></td>
<td><a href="/status/ONP" title="See all submitted solutions to this problem.">50.62</a></td>
</tr>
<tr class="problemrow">
<td>5</td>
<td align="left">&nbsp;
<a href="/problems/PALIN/">&nbsp;<b>The Next Palindrome</b></a></td>
<td><a href="/submit/PALIN" title="Submit a solution to this problem.">
PALIN</a></td>
<td><a href="/ranks/PALIN" title="Value 0.01 points. See the best solutions.">6765</a></td>
<td><a href="/status/PALIN" title="See all submitted solutions to this problem.">13.20</a></td>
</tr>
<tr class="problemrow">
<td>6</td>
<td align="left">&nbsp;
<a href="/problems/ARITH/">&nbsp;<b>Simple Arithmetics</b></a></td>
<td><a href="/submit/ARITH" title="Submit a solution to this problem.">
ARITH</a></td>
<td><a href="/ranks/ARITH" title="Value 0.06 points. See the best solutions.">1386</a></td>
<td><a href="/status/ARITH" title="See all submitted solutions to this problem.">13.01</a></td>
</tr>
<tr class="problemrow">
<td>7</td>
<td align="left">&nbsp;
<a href="/problems/BULK/">&nbsp;<b>The Bulk!</b></a></td>
<td><a href="/submit/BULK" title="Submit a solution to this problem.">
BULK</a></td>
<td><a href="/ranks/BULK" title="Value 0.27 points. See the best solutions.">255</a></td>
<td><a href="/status/BULK" title="See all submitted solutions to this problem.">27.17</a></td>
</tr>
<tr class="problemrow">
<td>8</td>
<td align="left">&nbsp;
<a href="/problems/CMPLS/">&nbsp;<b>Complete the Sequence!</b></a></td>
<td><a href="/submit/CMPLS" title="Submit a solution to this problem.">
CMPLS</a></td>
<td><a href="/ranks/CMPLS" title="Value 0.06 points. See the best solutions.">1304</a></td>
<td><a href="/status/CMPLS" title="See all submitted solutions to this problem.">34.12</a></td>
</tr>
<tr class="problemrow">
<td>9</td>
<td align="left">&nbsp;
<a href="/problems/DIRVS/">&nbsp;<b>Direct Visibility</b></a></td>
<td><a href="/submit/DIRVS" title="Submit a solution to this problem.">
DIRVS</a></td>
<td><a href="/ranks/DIRVS" title="Value 0.37 points. See the best solutions.">178</a></td>
<td><a href="/status/DIRVS" title="See all submitted solutions to this problem.">18.21</a></td>
</tr>
<tr class="problemrow">
<td>10</td>
<td align="left">&nbsp;
<a href="/problems/CMEXPR/">&nbsp;<b>Complicated Expressions</b></a></td>
<td><a href="/submit/CMEXPR" title="Submit a solution to this problem.">
CMEXPR</a></td>
<td><a href="/ranks/CMEXPR" title="Value 0.13 points. See the best solutions.">555</a></td>
<td><a href="/status/CMEXPR" title="See all submitted solutions to this problem.">28.18</a></td>
</tr>
<tr class="problemrow">
<td>11</td>
<td align="left">&nbsp;
<a href="/problems/FCTRL/">&nbsp;<b>Factorial</b></a></td>
<td><a href="/submit/FCTRL" title="Submit a solution to this problem.">
FCTRL</a></td>
<td><a href="/ranks/FCTRL" title="Value 0 points. See the best solutions.">17150</a></td>
<td><a href="/status/FCTRL" title="See all submitted solutions to this problem.">43.78</a></td>
</tr>
<tr class="problemrow">
<td>12</td>
<td align="left">&nbsp;
<a href="/problems/MMIND/">&nbsp;<b>The Game of Master-Mind</b></a></td>
<td><a href="/submit/MMIND" title="Submit a solution to this problem.">
MMIND</a></td>
<td><a href="/ranks/MMIND" title="Value 0.39 points. See the best solutions.">162</a></td>
<td><a href="/status/MMIND" title="See all submitted solutions to this problem.">45.96</a></td>
</tr>
<tr class="problemrow">
<td>13</td>
<td align="left">&nbsp;
<a href="/problems/HOTLINE/">&nbsp;<b>Hotline</b></a></td>
<td><a href="/submit/HOTLINE" title="Submit a solution to this problem.">
HOTLINE</a></td>
<td><a href="/ranks/HOTLINE" title="Value 0.43 points. See the best solutions.">147</a></td>
<td><a href="/status/HOTLINE" title="See all submitted solutions to this problem.">32.59</a></td>
</tr>
<tr class="problemrow">
<td>14</td>
<td align="left">&nbsp;
<a href="/problems/IKEYB/">&nbsp;<b>I-Keyboard</b></a></td>
<td><a href="/submit/IKEYB" title="Submit a solution to this problem.">
IKEYB</a></td>
<td><a href="/ranks/IKEYB" title="Value 0.13 points. See the best solutions.">595</a></td>
<td><a href="/status/IKEYB" title="See all submitted solutions to this problem.">36.69</a></td>
</tr>
<tr class="problemrow">
<td>15</td>
<td align="left">&nbsp;
<a href="/problems/SHPATH/">&nbsp;<b>The Shortest Path</b></a></td>
<td><a href="/submit/SHPATH" title="Submit a solution to this problem.">
SHPATH</a></td>
<td><a href="/ranks/SHPATH" title="Value 0.05 points. See the best solutions.">1421</a></td>
<td><a href="/status/SHPATH" title="See all submitted solutions to this problem.">16.40</a></td>
</tr>
<tr class="problemrow">
<td>16</td>
<td align="left">&nbsp;
<a href="/problems/TETRA/">&nbsp;<b>Sphere in a tetrahedron</b></a></td>
<td><a href="/submit/TETRA" title="Submit a solution to this problem.">
TETRA</a></td>
<td><a href="/ranks/TETRA" title="Value 0.06 points. See the best solutions.">1311</a></td>
<td><a href="/status/TETRA" title="See all submitted solutions to this problem.">58.13</a></td>
</tr>
<tr class="problemrow">
<td>17</td>
<td align="left">&nbsp;
<a href="/problems/CRYPTO1/">&nbsp;<b>The Bytelandian Cryptographer (Act I)</b></a></td>
<td><a href="/submit/CRYPTO1" title="Submit a solution to this problem.">
CRYPTO1</a></td>
<td><a href="/ranks/CRYPTO1" title="Value 0.14 points. See the best solutions.">528</a></td>
<td><a href="/status/CRYPTO1" title="See all submitted solutions to this problem.">32.50</a></td>
</tr>
<tr class="problemrow">
<td>18</td>
<td align="left">&nbsp;
<a href="/problems/CRYPTO2/">&nbsp;<b>The Bytelandian Cryptographer (Act II)</b></a></td>
<td><a href="/submit/CRYPTO2" title="Submit a solution to this problem.">
CRYPTO2</a></td>
<td><a href="/ranks/CRYPTO2" title="Value 0.13 points. See the best solutions.">593</a></td>
<td><a href="/status/CRYPTO2" title="See all submitted solutions to this problem.">42.23</a></td>
</tr>
<tr class="problemrow">
<td>19</td>
<td align="left">&nbsp;
<a href="/problems/CRYPTO3/">&nbsp;<b>The Bytelandian Cryptographer (Act III)</b></a></td>
<td><a href="/submit/CRYPTO3" title="Submit a solution to this problem.">
CRYPTO3</a></td>
<td><a href="/ranks/CRYPTO3" title="Value 0.55 points. See the best solutions.">105</a></td>
<td><a href="/status/CRYPTO3" title="See all submitted solutions to this problem.">42.65</a></td>
</tr>
<tr class="problemrow">
<td>20</td>
<td align="left">&nbsp;
<a href="/problems/CRYPTO4/">&nbsp;<b>The Bytelandian Cryptographer (Act IV)</b></a></td>
<td><a href="/submit/CRYPTO4" title="Submit a solution to this problem.">
CRYPTO4</a></td>
<td><a href="/ranks/CRYPTO4" title="Value 1.13 points. See the best solutions.">30</a></td>
<td><a href="/status/CRYPTO4" title="See all submitted solutions to this problem.">8.12</a></td>
</tr>
<tr class="problemrow">
<td>22</td>
<td align="left">&nbsp;
<a href="/problems/TRICENTR/">&nbsp;<b>Triangle From Centroid</b></a></td>
<td><a href="/submit/TRICENTR" title="Submit a solution to this problem.">
TRICENTR</a></td>
<td><a href="/ranks/TRICENTR" title="Value 0.08 points. See the best solutions.">931</a></td>
<td><a href="/status/TRICENTR" title="See all submitted solutions to this problem.">40.71</a></td>
</tr>
<tr class="problemrow">
<td>23</td>
<td align="left">&nbsp;
<a href="/problems/PIR/">&nbsp;<b>Pyramids</b></a></td>
<td><a href="/submit/PIR" title="Submit a solution to this problem.">
PIR</a></td>
<td><a href="/ranks/PIR" title="Value 0.03 points. See the best solutions.">2320</a></td>
<td><a href="/status/PIR" title="See all submitted solutions to this problem.">36.05</a></td>
</tr>
<tr class="problemrow">
<td>24</td>
<td align="left">&nbsp;
<a href="/problems/FCTRL2/">&nbsp;<b>Small factorials</b></a></td>
<td><a href="/submit/FCTRL2" title="Submit a solution to this problem.">
FCTRL2</a></td>
<td><a href="/ranks/FCTRL2" title="Value 0.01 points. See the best solutions.">13767</a></td>
<td><a href="/status/FCTRL2" title="See all submitted solutions to this problem.">30.36</a></td>
</tr>
<tr class="problemrow">
<td>25</td>
<td align="left">&nbsp;
<a href="/problems/POUR1/">&nbsp;<b>Pouring water</b></a></td>
<td><a href="/submit/POUR1" title="Submit a solution to this problem.">
POUR1</a></td>
<td><a href="/ranks/POUR1" title="Value 0.05 points. See the best solutions.">1625</a></td>
<td><a href="/status/POUR1" title="See all submitted solutions to this problem.">19.07</a></td>
</tr>
<tr class="problemrow">
<td>26</td>
<td align="left">&nbsp;
<a href="/problems/BSHEEP/">&nbsp;<b>Build the Fence</b></a></td>
<td><a href="/submit/BSHEEP" title="Submit a solution to this problem.">
BSHEEP</a></td>
<td><a href="/ranks/BSHEEP" title="Value 0.1 points. See the best solutions.">790</a></td>
<td><a href="/status/BSHEEP" title="See all submitted solutions to this problem.">29.23</a></td>
</tr>
<tr class="problemrow">
<td>27</td>
<td align="left">&nbsp;
<a href="/problems/SBANK/">&nbsp;<b>Sorting Bank Accounts</b></a></td>
<td><a href="/submit/SBANK" title="Submit a solution to this problem.">
SBANK</a></td>
<td><a href="/ranks/SBANK" title="Value 0.03 points. See the best solutions.">2344</a></td>
<td><a href="/status/SBANK" title="See all submitted solutions to this problem.">26.90</a></td>
</tr>
<tr class="problemrow">
<td>28</td>
<td align="left">&nbsp;
<a href="/problems/HMRO/">&nbsp;<b>Help the Military Recruitment Office!</b></a></td>
<td><a href="/submit/HMRO" title="Submit a solution to this problem.">
HMRO</a></td>
<td><a href="/ranks/HMRO" title="Value 0.22 points. See the best solutions.">324</a></td>
<td><a href="/status/HMRO" title="See all submitted solutions to this problem.">13.28</a></td>
</tr>
<tr class="problemrow">
<td>29</td>
<td align="left">&nbsp;
<a href="/problems/HASHIT/">&nbsp;<b>Hash it!</b></a></td>
<td><a href="/submit/HASHIT" title="Submit a solution to this problem.">
HASHIT</a></td>
<td><a href="/ranks/HASHIT" title="Value 0.06 points. See the best solutions.">1291</a></td>
<td><a href="/status/HASHIT" title="See all submitted solutions to this problem.">22.36</a></td>
</tr>
<tr class="problemrow">
<td>30</td>
<td align="left">&nbsp;
<a href="/problems/BLINNET/">&nbsp;<b>Bytelandian Blingors Network</b></a></td>
<td><a href="/submit/BLINNET" title="Submit a solution to this problem.">
BLINNET</a></td>
<td><a href="/ranks/BLINNET" title="Value 0.06 points. See the best solutions.">1252</a></td>
<td><a href="/status/BLINNET" title="See all submitted solutions to this problem.">32.31</a></td>
</tr>
<tr class="problemrow">
<td>31</td>
<td align="left">&nbsp;
<a href="/problems/MUL/">&nbsp;<b>Fast Multiplication</b></a></td>
<td><a href="/submit/MUL" title="Submit a solution to this problem.">
MUL</a></td>
<td><a href="/ranks/MUL" title="Value 0.09 points. See the best solutions.">855</a></td>
<td><a href="/status/MUL" title="See all submitted solutions to this problem.">11.54</a></td>
</tr>
<tr class="problemrow">
<td>32</td>
<td align="left">&nbsp;
<a href="/problems/NHAY/">&nbsp;<b>A Needle in the Haystack</b></a></td>
<td><a href="/submit/NHAY" title="Submit a solution to this problem.">
NHAY</a></td>
<td><a href="/ranks/NHAY" title="Value 0.03 points. See the best solutions.">2276</a></td>
<td><a href="/status/NHAY" title="See all submitted solutions to this problem.">31.74</a></td>
</tr>
<tr class="problemrow">
<td>33</td>
<td align="left">&nbsp;
<a href="/problems/TRIP/">&nbsp;<b>Trip</b></a></td>
<td><a href="/submit/TRIP" title="Submit a solution to this problem.">
TRIP</a></td>
<td><a href="/ranks/TRIP" title="Value 0.12 points. See the best solutions.">628</a></td>
<td><a href="/status/TRIP" title="See all submitted solutions to this problem.">18.85</a></td>
</tr>
<tr class="problemrow">
<td>34</td>
<td align="left">&nbsp;
<a href="/problems/RUNAWAY/">&nbsp;<b>Run Away</b></a></td>
<td><a href="/submit/RUNAWAY" title="Submit a solution to this problem.">
RUNAWAY</a></td>
<td><a href="/ranks/RUNAWAY" title="Value 0.34 points. See the best solutions.">192</a></td>
<td><a href="/status/RUNAWAY" title="See all submitted solutions to this problem.">32.68</a></td>
</tr>
<tr class="problemrow">
<td>35</td>
<td align="left">&nbsp;
<a href="/problems/EQBOX/">&nbsp;<b>Equipment Box</b></a></td>
<td><a href="/submit/EQBOX" title="Submit a solution to this problem.">
EQBOX</a></td>
<td><a href="/ranks/EQBOX" title="Value 0.12 points. See the best solutions.">621</a></td>
<td><a href="/status/EQBOX" title="See all submitted solutions to this problem.">14.33</a></td>
</tr>
<tr class="problemrow">
<td>36</td>
<td align="left">&nbsp;
<a href="/problems/CODE1/">&nbsp;<b>Secret Code</b></a></td>
<td><a href="/submit/CODE1" title="Submit a solution to this problem.">
CODE1</a></td>
<td><a href="/ranks/CODE1" title="Value 0.41 points. See the best solutions.">156</a></td>
<td><a href="/status/CODE1" title="See all submitted solutions to this problem.">28.16</a></td>
</tr>
<tr class="problemrow">
<td>37</td>
<td align="left">&nbsp;
<a href="/problems/PROPKEY/">&nbsp;<b>The Proper Key</b></a></td>
<td><a href="/submit/PROPKEY" title="Submit a solution to this problem.">
PROPKEY</a></td>
<td><a href="/ranks/PROPKEY" title="Value 0.48 points. See the best solutions.">127</a></td>
<td><a href="/status/PROPKEY" title="See all submitted solutions to this problem.">23.59</a></td>
</tr>
<tr class="problemrow">
<td>38</td>
<td align="left">&nbsp;
<a href="/problems/LABYR1/">&nbsp;<b>Labyrinth</b></a></td>
<td><a href="/submit/LABYR1" title="Submit a solution to this problem.">
LABYR1</a></td>
<td><a href="/ranks/LABYR1" title="Value 0.05 points. See the best solutions.">1716</a></td>
<td><a href="/status/LABYR1" title="See all submitted solutions to this problem.">23.88</a></td>
</tr>
<tr class="problemrow">
<td>39</td>
<td align="left">&nbsp;
<a href="/problems/PIGBANK/">&nbsp;<b>Piggy-Bank</b></a></td>
<td><a href="/submit/PIGBANK" title="Submit a solution to this problem.">
PIGBANK</a></td>
<td><a href="/ranks/PIGBANK" title="Value 0.03 points. See the best solutions.">2779</a></td>
<td><a href="/status/PIGBANK" title="See all submitted solutions to this problem.">32.72</a></td>
</tr>
<tr class="problemrow">
<td>40</td>
<td align="left">&nbsp;
<a href="/problems/STONE/">&nbsp;<b>Lifting the Stone</b></a></td>
<td><a href="/submit/STONE" title="Submit a solution to this problem.">
STONE</a></td>
<td><a href="/ranks/STONE" title="Value 0.08 points. See the best solutions.">920</a></td>
<td><a href="/status/STONE" title="See all submitted solutions to this problem.">21.23</a></td>
</tr>
<tr class="problemrow">
<td>41</td>
<td align="left">&nbsp;
<a href="/problems/WORDS1/">&nbsp;<b>Play on Words</b></a></td>
<td><a href="/submit/WORDS1" title="Submit a solution to this problem.">
WORDS1</a></td>
<td><a href="/ranks/WORDS1" title="Value 0.05 points. See the best solutions.">1563</a></td>
<td><a href="/status/WORDS1" title="See all submitted solutions to this problem.">18.40</a></td>
</tr>
<tr class="problemrow">
<td>42</td>
<td align="left">&nbsp;
<a href="/problems/ADDREV/">&nbsp;<b>Adding Reversed Numbers</b></a></td>
<td><a href="/submit/ADDREV" title="Submit a solution to this problem.">
ADDREV</a></td>
<td><a href="/ranks/ADDREV" title="Value 0 points. See the best solutions.">20604</a></td>
<td><a href="/status/ADDREV" title="See all submitted solutions to this problem.">48.33</a></td>
</tr>
<tr class="problemrow">
<td>43</td>
<td align="left">&nbsp;
<a href="/problems/BOOKS1/">&nbsp;<b>Copying Books</b></a></td>
<td><a href="/submit/BOOKS1" title="Submit a solution to this problem.">
BOOKS1</a></td>
<td><a href="/ranks/BOOKS1" title="Value 0.08 points. See the best solutions.">925</a></td>
<td><a href="/status/BOOKS1" title="See all submitted solutions to this problem.">25.90</a></td>
</tr>
<tr class="problemrow">
<td>44</td>
<td align="left">&nbsp;
<a href="/problems/SCYPHER/">&nbsp;<b>Substitution Cipher</b></a></td>
<td><a href="/submit/SCYPHER" title="Submit a solution to this problem.">
SCYPHER</a></td>
<td><a href="/ranks/SCYPHER" title="Value 0.26 points. See the best solutions.">264</a></td>
<td><a href="/status/SCYPHER" title="See all submitted solutions to this problem.">16.07</a></td>
</tr>
<tr class="problemrow">
<td>45</td>
<td align="left">&nbsp;
<a href="/problems/COMMEDIA/">&nbsp;<b>Commedia dell Arte</b></a></td>
<td><a href="/submit/COMMEDIA" title="Submit a solution to this problem.">
COMMEDIA</a></td>
<td><a href="/ranks/COMMEDIA" title="Value 0.4 points. See the best solutions.">161</a></td>
<td><a href="/status/COMMEDIA" title="See all submitted solutions to this problem.">44.49</a></td>
</tr>
<tr class="problemrow">
<td>47</td>
<td align="left">&nbsp;
<a href="/problems/SCRAPER/">&nbsp;<b>Skyscraper Floors</b></a></td>
<td><a href="/submit/SCRAPER" title="Submit a solution to this problem.">
SCRAPER</a></td>
<td><a href="/ranks/SCRAPER" title="Value 0.29 points. See the best solutions.">234</a></td>
<td><a href="/status/SCRAPER" title="See all submitted solutions to this problem.">15.44</a></td>
</tr>
<tr class="problemrow">
<td>48</td>
<td align="left">&nbsp;
<a href="/problems/BEADS/">&nbsp;<b>Glass Beads</b></a></td>
<td><a href="/submit/BEADS" title="Submit a solution to this problem.">
BEADS</a></td>
<td><a href="/ranks/BEADS" title="Value 0.05 points. See the best solutions.">1723</a></td>
<td><a href="/status/BEADS" title="See all submitted solutions to this problem.">40.25</a></td>
</tr>
<tr class="problemrow">
<td>49</td>
<td align="left">&nbsp;
<a href="/problems/HAREFOX/">&nbsp;<b>Hares and Foxes</b></a></td>
<td><a href="/submit/HAREFOX" title="Submit a solution to this problem.">
HAREFOX</a></td>
<td><a href="/ranks/HAREFOX" title="Value 0.61 points. See the best solutions.">91</a></td>
<td><a href="/status/HAREFOX" title="See all submitted solutions to this problem.">15.18</a></td>
</tr>
<tr class="problemrow">
<td>50</td>
<td align="left">&nbsp;
<a href="/problems/INCARDS/">&nbsp;<b>Invitation Cards</b></a></td>
<td><a href="/submit/INCARDS" title="Submit a solution to this problem.">
INCARDS</a></td>
<td><a href="/ranks/INCARDS" title="Value 0.13 points. See the best solutions.">553</a></td>
<td><a href="/status/INCARDS" title="See all submitted solutions to this problem.">38.03</a></td>
</tr>
<tr class="problemrow">
<td>51</td>
<td align="left">&nbsp;
<a href="/problems/TOUR/">&nbsp;<b>Fake tournament</b></a></td>
<td><a href="/submit/TOUR" title="Submit a solution to this problem.">
TOUR</a></td>
<td><a href="/ranks/TOUR" title="Value 0.12 points. See the best solutions.">606</a></td>
<td><a href="/status/TOUR" title="See all submitted solutions to this problem.">21.30</a></td>
</tr>
<tr class="problemrow">
<td>54</td>
<td align="left">&nbsp;
<a href="/problems/JULKA/">&nbsp;<b>Julka</b></a></td>
<td><a href="/submit/JULKA" title="Submit a solution to this problem.">
JULKA</a></td>
<td><a href="/ranks/JULKA" title="Value 0.01 points. See the best solutions.">7508</a></td>
<td><a href="/status/JULKA" title="See all submitted solutions to this problem.">28.81</a></td>
</tr>
</table>

<script type="text/javascript"><!--
google_ad_client = "ca-pub-4453360425583535";
/* Spoj - baner gĂłrny */
google_ad_slot = "5796055248";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>

<form name="fch" class="form" style="margin-top:12px; margin-bottom:8px" action="" method="post">
<table width="100%">
<tr>
    <td align=left>
	<b>Document type:</b>
	<input type="radio" name="pspdf" value="/" onClick="appendLink(this.value)"  checked >html
	<input type="radio" name="pspdf" value=".ps" onClick="appendLink(this.value)"  >ps
	<input type="radio" name="pspdf" value=".pdf" onClick="appendLink(this.value)"  >pdf
	<noscript><input class="button" value="change" type="submit"></noscript>
    </td>
    <td align="right">
	<b><a href="/problems/classical" id="booklet">booklet</a></b>
    </td>
</tr>
</table>
</form>



 <script language="javascript" type="text/javascript">
<!--  
function appendLink(target)
{
    for(a = 0; a < document.links.length; a++)
	if (document.links[a].href.match(/^.*\/problems(\/[A-Z0-9_]+\/?)(\.[a-z]+)?$/) || document.links[a].id=='booklet')
	{
	    document.links[a].href = document.links[a].href.replace(/\.[a-z]+$/, "").replace(/\/$/, "")+target;
	    if (target.match(/^\/$/) && document.links[a].id=='booklet')
		document.links[a].style.visibility = 'hidden';
	    else document.links[a].style.visibility = 'visible';
	}
    document.cookie='pspdf='+target+'; path=/;';
}

appendLink('/');

//--></script> 
        </td>
<tr>
        <td style="padding:0px" colspan="2"><center>
                
</center></td>
</tr>
</table>
</td>


<td width="200" class="ad-r__"><div><script type="text/javascript"><!--
google_ad_client = "ca-pub-4453360425583535";
/* Spoj - wiezowiec */
google_ad_slot = "2703472077";
google_ad_width = 160;
google_ad_height = 600;
//-->
</script>
<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script><div>
<style>
.ad-r__{
        vertical-align: top;
}
.ad-r__ > div.fixed{
        top: 10px;
        position: fixed;
}
</style>
<script type="text/javascript">
$(function(){
        $(window).scroll(function() {
                if($(this).scrollTop() > 100) {
                        $(".ad-r__>div").addClass('fixed');
                } else {
                        $(".ad-r__>div").removeClass('fixed');
                }
        });
	if ($('.ad-r__>div').height() == 0){
		//console.log('adblocker');
		_gaq.push(['_trackEvent', 'ads', 'adblock']);
		$(".freelancer_728").show();
		//$(".ad-r__").append('<script type="text/javascript"><!--amazon_ad_tag = "httpsphereres-20"; amazon_ad_width = "160"; amazon_ad_height = "600"; amazon_ad_border = "hide"; amazon_ad_discount = "remove"; amazon_color_background = "EEEEEE";//--><'+'/script><script type="text/javascript" src="http://ir-na.amazon-adsystem.com/s/ads.js"><'+'/script>');
	}
});
</script>
</td>


</tr>

<tr>
<td colspan="2" class="footer">
<div class="a-footer"></div>
<script language="javascript" type="text/javascript">
<!--
function swapSheet(sheet, caller) {
    document.getElementById('theme').href=sheet;
    document.cookie="css_0="+sheet+"; path=/;";
    caller.href="#bottom";
}

function setWidth(w, caller) {
    document.getElementById('maintable').style.width=w;
    document.cookie="res="+w+"; path=/;";
    caller.href="#bottom";
}



//-->

</script>
        <table width="100%">
    <tr>
	<td align="left" width=10% class="cfooter">
	<a href="/info/">About SPOJ</a>
	</td>
	<td align="center" class="cfooter">
	    width:
	    <a href="/?rsl=855px"  onClick="setWidth('855px', this)">900</a>
	    <a href="/?rsl=980px"  onClick="setWidth('980px', this)">1024</a>
	    <a href="/?rsl=100%" onClick="setWidth('100%', this)">Full</a>
	    &nbsp;&nbsp;
	    theme:
	    <a href="/?css=/themes/skin1.css" onClick="swapSheet('/themes/skin1.css', this)">olive</a>
	    <a href="/?css=/themes/skin2.css" onClick="swapSheet('/themes/skin2.css', this)">banana</a>
	    <a href="/?css=/themes/skin3.css" onClick="swapSheet('/themes/skin3.css', this)">plum</a>
	    <a href="/?css=/themes/hspl.css" onClick="swapSheet('/themes/hspl.css', this)">hspl</a>
	</td>
		<td align="center" class="cfooter">
		 <span title="The discussion channel of the Sphere Online Judge community.">
		 <a href="irc://irc.freenode.net/spoj"><b>#spoj</b> at freenode</a>
		 </span>
	</td>
		<td width=10% class="cfooter" style="text-align:right">
		<a href="/rss/" ><img src="/gfx/rss10x10.gif" border=0>&nbsp;RSS</a>&nbsp;
	</div>
	</td>
    </tr>
    </table>
    </tr></table>
</center>
<div class="a-header"></div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pl_PL/all.js#xfbml=1&appId=321676846207";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!--<div id="fb-root"></div>
<script src="//connect.facebook.net/en_US/all.js#xfbml=1"></script>-->


<div style="font-size:10px; margin-top:4px; color: rgb(85,80,95); text-align: center">
	&copy; Spoj.com. All Rights Reserved. Spoj uses <a href="http://sphere-engine.com" style="color:black">Sphere Engine</a>&trade; &copy; by <a href="http://sphere-research.com" style="color:black">Sphere Research Labs</a>.
</div>

<script type="text/javascript">
  var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-10507872-1']);
    _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                      })();
                      </script>
                      
<script type="text/javascript" src="http://recruitcoders.com/w4loader.js"></script>
</body>
</html>
EOF

  EMPTY_PROBLEM_HTML = <<'EOF'
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>

<title>Sphere Online Judge (SPOJ)</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2" id="metatag">
<META NAME="Keywords" CONTENT="programming, language, algorithm, spoj, contest, contester, Java, C#, Pascal, C, C++, python, ruby, caml, ocaml, perl, haskell, lisp, prolog, fortran, assembler, asembler, functional, online, judge, problem, problemset, ACM">

<link href="//www.spoj.com/gfx/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="/rss/" rel="alternate" type="application/rss+xml" title="RSS Feed">
<link href="//www.spoj.com/themes/common.css" rel="stylesheet" type="text/css" id="theme">
<link href="/style.css" rel="stylesheet" type="text/css" id="theme">
<link href="//www.spoj.com/themes/tooltips.css" rel="stylesheet" type="text/css" id="theme">
<script type='text/javascript' src='//www.spoj.com/gfx/jquery.js'></script>
<script type="text/javascript" src="//www.spoj.com/gfx/jquery.timers.js"></script>
<script type="text/javascript" src="//www.spoj.com/gfx/jquery.cookie.js"></script> 
<!--
<meta property="og:description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
<meta name="description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
-->
<style type="text/css">
<!--
.maintable {width: 1055;} 
-->
</style>
<script type="text/javascript" language="javascript">
<!--
function UnCryptMailto(s) {
	var n=0;
	var r="";
	for(var i=0;i<s.length;i++) {		
		n=s.charCodeAt(i); 
		if (n>=8364) {n = 128;}
		r += String.fromCharCode(n+(2));	
	}
	return r;
}
function linkTo_UnCryptMailto(s)	{
	location.href=UnCryptMailto(s);
}
// -->
</script>

<script type="text/javascript">
function recordOutboundLink(link, category, action) {
  try {
    var pageTracker=_gat._getTracker("UA-XXXXX-X");
    pageTracker._trackEvent(category, action);
    setTimeout('document.location = "' + link.href + '"', 100)
  }catch(err){}
}
</script>

    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shCore.js"></script>
	<script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushCpp.js"></script>
	<script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushCSharp.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushJava.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushPhp.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushPython.js"></script>
	<link type="text/css" rel="stylesheet" href="/gfx/SyntaxHighlighter/styles/shCore.css"/>
	<link type="text/css" rel="stylesheet" href="/gfx/SyntaxHighlighter/styles/shThemeDefault.css"/>
	
	<script type="text/javascript">
		SyntaxHighlighter.all();
	</script>
	

		<meta property="og:image" content="http://www.spoj.com/gfx/spoj-fb.jpg"/>
	<meta property="og:description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
	<meta name="description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
		<meta property="og:site_name" content="spoj.com"/>

</head>
<body>
<center>



<table cellpadding="10" cellspacing="0" class="maintable" id="maintable">
<tr>
    <td colspan="2" class="header">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
		<td class="headerleft"/>
		<td class="headercenter">
<h1><img alt="Sphere Online Judge" title="Sphere Online Judge" src="/gfx/sphere-spoj-small.png" border=0 style="margin-top:-4px;margin-bottom:-4px"></h1>
		</td>
		<td class="headerright"/>
	</tr>
	</table>
    </td>
</tr>
<tr><td class="menu" width="92" valign="top">

	
<div class="section">
	
<form name="login"  action="https://www.spoj.com/ranks/PRIME/lang=PS" method="post" 
onsubmit="if(0&&document.login.ssl.checked) document.login.action='https://www.spoj.com/ranks/PRIME/lang=PS'" style="margin-bottom: 18px"> 
User: <input name="login_user" type="text" style="width: 85px;" class="form"><BR>
Password: <input name="password" type="password" style="width: 85px;" class="form"><BR>
<div style="font-size: 10px; ">
<script language="javascript" type="text/javascript">
<!--
    //document.write('<input type="checkbox" name="ssl" id="ssl" /><label for="ssl">secure</label><br/>');
//-->
</script>
<div title="Keep me signed in for today">
<input type="checkbox" name="autologin" value="1" id="autologin" /><label for="autologin">for today</label>
</div>
<!--Keep me signed in for today-->
</div>
<input name="submit" type="submit" value="Log In" class="button" style="width: 85px; margin-bottom: 10px;">

</form>

<script type="text/javascript">
$(document).ready(function(){
	if( $.cookie('ssl') == '1' ){
		$("#ssl").attr('checked', true);
	}
	$("#ssl").change(function(){
		if($(this).is(':checked')){
			$.cookie('ssl', '1');
		} else {
			$.cookie('ssl', '0');
		}
	});
});
</script>

</div>
<div class="menucmd"><a href="/register">register</a><br><a href="/tutorials">tutorials</a><br><br><a href="/status">status</a><br><a href="/submit">submit</a><br><a href="/problems/classical/">problems</a><br><a href="/search">search</a><br><br><a href="/">news</a><br><a href="/contests">contests</a><br><a href="/ranks/">ranks</a><br><br><a href="/forum">forum</a><br><a href="/tools">tools</a><br><a href="/clusters">clusters</a><br><a href="/credits">credits</a><br><hr></div><a href="/problems/classical/"></a><br>


	<div class="time">
Server time:</div>
<div class="time">
2014-04-28
<br>
<b>12 : 30 : 51</b>
</div>

</td><td style="width: 748px; padding:0px;" valign="top" class="content0">
        <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
                <td style="padding:0px;" colspan="2"><center>
                                
                </center></td>
        </tr>
        <tr>
                <td class="content" width="99%" style="padding: 10px">
<script type="text/javascript" src="/gfx/jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript" src="//ideone.com/api/1.1/service.js"></script>

<script type='text/javascript' src='/gfx/jquery.bgiframe.js'></script>
<script type='text/javascript' src='/gfx/jquery.tooltip.js'></script>
<script type='text/javascript' src='/gfx/jquery.cxhelp.js'></script>


<div class="cxitem" id="h_private">
<div class="cxtitle">Private submission</div>
<div>Private submission won't be visible to other users and <br/>won't be taken into consideration in ranks.</div>
</div>

<div class="cxitem" id="h_disqualified">
<div class="cxtitle">Disqualify submission</div>
<div>Your submission will be disqualified. Operation <br/>is not reversible.</div>
</div>

<div class="cxitem" id="h_hidden">
<div class="cxtitle">Hidden submission</div>
<div> </div>
</div>

<div class="cxitem" id="h_public">
<div class="cxtitle">Public submission</div>
<div>
<i>Click here to view source code.</i><br/></br>
Source code of every submission to this problem <br/> in this contest is public.</div>
</div>

<div class="cxitem" id="h_execute">
<div class="cxtitle">Help</div>
<div>
</div>
</div>

<h3><a href="/problems/PRIME">Factorial factorisation</a> statistics &amp; best solutions</h3>
<!-- google_ad_section_start(weight=ignore) -->
<table class="problems" width="100%" border="1">
<tr class="headerrow">
<td class="headerrowleft">Users accepted</td>
<td>Submissions</td>
<td>Accepted</td>
<td>Wrong Answer</td>
<td>Compile Error</td>
<td>Runtime Error</td>
<td class="headerrowright">Time Limit Exceeded</td>
</tr>
<tr class="lightrow">
<td>14</td>
<td>148</td>
<td>22</td>
<td>45</td>
<td>17</td>
<td>27</td>
<td>37</td>
</tr>
</table>
<!-- google_ad_section_end -->

<br>

<!-- google_ad_section_start -->
<table class="navigation" width="99%">
<tr><td class="navigationcenter">
<small>
<a href="/ranks/PRIME">All</a>
<a href="/ranks/PRIME/lang=CPP%204.3.2" title="C++">C++ 4.3.2</a>
<a href="/ranks/PRIME/lang=CPP%204.0.0-8" title="C++">C++ 4.0.0-8</a>
<a href="/ranks/PRIME/lang=JAR" title="JAR">JAR</a>
<a href="/ranks/PRIME/lang=JAVA" title="Java">JAVA</a>
<a href="/ranks/PRIME/lang=NODEJS" title="Node.js">NODEJS</a>
<a href="/ranks/PRIME/lang=PAS%20fpc" title="Pascal">PAS fpc</a>
<a href="/ranks/PRIME/lang=PAS%20gpc" title="Pascal">PAS gpc</a>
<a href="/ranks/PRIME/lang=PIKE" title="Pike">PIKE</a>
<a href="/ranks/PRIME/lang=PYTH%203.2.3%20n" title="Python 3 nbc">PYTH 3.2.3 n</a>
</small>
</td></tr>
</table>
<!-- google_ad_section_end -->



<script language="JavaScript">
<!--
$(document).ready(function(){
        $('.pager_link__fake').bind('click', function(me){
		var href=$(this).attr('href');
                $('.content').animate({opacity: 0.5},1);
                $.ajax({
                        type: "GET",
                        url: href+",ajax=1",
                        //cache: false,
                        //dataType: 'json',
                        contentType: "application/x-www-form-urlencoded;charset=ISO-8859-2",
                        success: function(data){
                                $('.content').html(data);
                                $('.content').animate({opacity: 1.0},1);
                        },
                        error: function(err){
                                $('.content').animate({opacity: 0.75},1);
                        }
                });
                return false;
        });
});
-->
</script>

<script type="text/javascript"><!--
google_ad_client = "ca-pub-4453360425583535";
/* Spoj - baner gĂłrny */
google_ad_slot = "5796055248";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script><a rel="nofollow" href="https://www.digitalocean.com/?refcode=c59674ea4847" class="freelancer_728" style="display: none;"><img src="/gfx/digitalocean-horizontal-eps.png" width=410 height=109 border=0></a>

<form method="post">
<table class="problems" width="100%">
<tr class="headerrow">
<th width="7%" class="headerrowleft">RANK</th>
<th width="12%">
DATE</th>
<th width="20%">USER</th><th width="16%">RESULT</th>
<th width="6%">TIME</th>
<th width="6%">MEM</th>
<th width="8%" class="headerrowright">LANG</th>
</tr>
<input type="hidden" id="max_id" value="" />
</table>
</form>

<input type="hidden" id="debug" value="0"/>

<script language="JavaScript">
<!--
		var loader = "<img src='/gfx/loader.gif'/>";
        var screen_width = 1;
        var screen_height = 1;
        var win_width = 1;
        var win_height = 1;
        var win_left = 1;
        var win_top = 1;
        var tmp = "";
		function load(){
                a = new Array();
                for(var i = 0; i<9; i++){
                        var results = $('.statusres[status='+i+'][manual=0]').each(function(i, el){
                                var zz = $(el).attr('id').substring(10);
                                a.push( zz );
                                $('#statustime_'+zz).html(loader);
                        });
                };
                if( a.length > 0 ){
                $.ajax({
                        type: "POST",
                        url: "/status/ajax=1,ajaxdiff=1",
                        data: "ids="+a.join(','),
                        dataType: 'json',
                        success: function(data){
                                for(var i = 0; i<data.length; i++){
                                        $("#statusres_" + data[i].id).attr('status', data[i].status);
                                        $("#statusres_" + data[i].id).html(data[i].status_description);
                                        $("#statustime_" + data[i].id).html(data[i].time);
                                        $("#statusch_" + data[i].id).html(data[i].chk_id);
                                        if( data[i].status >= 9 ){
                                                $("#statusres_" + data[i].id).parent('tr').attr('class', 'kol');
                                                $("#statusmem_" + data[i].id).html(data[i].mem);
                                        }
                                        if( data[i].status == 15 ){
                                                $("#statusres_" + data[i].id).parent('tr').attr('class', 'kol3');
                                        }
                                        if( data[i].status < 9 ){
                                                $("#statusres_" + data[i].id).html( $("#statusres_" + data[i].id).html());
                                                $("#statustime_" + data[i].id).html( loader );
                                        }
                                        $("#statusres_" + data[i].id).parent().attr('class', data[i].color);
                                }
								setTimeout(load, 4000);
                        },
                        error: function(err,a,b){
							if( $("#debug").attr("value") == 1 ){
								alert(err);
								alert(a);
								alert(b);
								tmp = err;
							};
                        }
                });
                }
        }

$(document).ready(function(){
        function reload_window_dim(){
			screen_width = $(window).width() - 10;
			screen_height = $(window).height() - 10;
			win_width = screen_width * 4 / 5;
			win_height = screen_height * 4 / 5;
			win_left = screen_width / 10;
			win_top = screen_height / 10;
		}
		reload_window_dim();

        load();
    
        $.ui.dialog.defaults.bgiframe = true;
	
		function source_code_execute(){
			$("#op_window_sourcecode_link").unbind("click");
			$("#op_window_sourcecode_link").bind("click", function(){
				$('#op_window_mjudge').hide();
				$('#op_window_sourcecode').show();
				var url = $('#url').attr('value');
				loadCode(url, "op_window_sourcecode", false);
				return false;
			});
		}
		function plain_text_execute(){
			$("#op_window_plaintext_link").unbind("click");
			$("#op_window_plaintext_link").bind("click", function(){
				$('#op_window_mjudge').hide();
				$('#op_window_sourcecode').show();
				var url = $('#url').attr('value');
				url = url.replace('src', 'src\/plain');
				loadCode(url, "op_window_sourcecode", true);
				return false;
			});
		}
		function copy_to_submit_execute(){
			$("#op_window_copy_to_submit_link").unbind("click");
			$("#op_window_copy_to_submit_link").bind("click", function(){
				var id = $('#solutionid').attr('value');
				var pcode = $('#pcode').attr('value');
				window.location.href = "/submit/"+pcode+"/?id="+id;
			});
		}
		function manual_rejudge_execute(){
			$("#op_window_mjudge_link").unbind("click");
			$("#op_window_mjudge_link").bind("click", function(){
				$('#op_window_mjudge').show();
				$('#op_window_sourcecode').hide();
				return false;
			});
		}
		
		function createWindow(){
			reload_window_dim();
			$("#op_window").dialog({
				//bgiframe: true,
				autoOpen: false,
				height: win_height,
				width: win_width,
				modal: true,
				buttons: {
					Close: function() {
						$(this).dialog('close');
						//$(this).dialog('destroy');
					}
				}
			});
			$(".ui-dialog .ui-dialog-titlebar").append("<a class=\"ui-dialog-titlebar-resize ui-corner-all\" href=\"\"><span class=\"ui-icon ui-icon-newwin\" unselectable=\"on\" style=\"-moz-user-select: none;\">resize</span></a>");
			$(".ui-dialog .ui-dialog-titlebar .ui-icon-newwin").bind("click", function(){
				reload_window_dim();
				if( ! $(".ui-dialog").attr("max") ){
					$('#op_window').parents('.ui-dialog:first').animate({ width: screen_width, height: screen_height, left: 0, top: 0 });
					$('#op_window').animate({ width: screen_width, height: screen_height-100 });
					$(".ui-dialog").attr("max", "1");
				} else {
					$('#op_window').parents('.ui-dialog:first').animate({ width: win_width, height: win_height, left: win_left, top: win_top });
					$("#op_window").animate({ width: win_width, height: (win_height - 100) });
					$(".ui-dialog").attr("max", "");
				}
				return false;
			});
			source_code_execute();
			plain_text_execute();
			manual_rejudge_execute();
			copy_to_submit_execute();
		};
		
		createWindow(); 
		
		
		function loadCode(url,objectid,pre){
			$("#"+objectid).html(loader);
			if( ! url ) return;
			$.ajax({
				type: "POST",
				url: url,
				cache: false,
				data: "post=1",
				success: function(data){
					if( ! pre ){
						$("#"+objectid).html(data);
					} else {
						$("#"+objectid).html("<pre>" + data + "</pre>");
					}
				},
				error: function(){
					$("#"+objectid).html("error ;(");	
				}
			});
		}
		
		
					
			$(".op_window").bind("click", function(){
				reload_window_dim();
				$('#solutionid').attr('value', ( $(this).attr('sid') ) );
				$('#pcode').attr('value', ( $(this).attr('pcode') ) );
				$('#op_window').dialog('open');
				$('#op_window').dialog('enable');
				//$('.ui-dialog').css('display', 'block');
				$(".ui-dialog").attr("max", "");
				var url = "/files/src/" + $(this).attr('sid') + "/";
				$('#url').attr('value', url);
				loadCode(url, "op_window_sourcecode", false);
				$("#op_window_sourcecode_link").click();
				return false;
			});
			
				
		
		
		$(".ideone-run").click(function(){
			var $this = $(this);
			$.ajax({
                	type: "post",
                	url: "/files/src/plain/"+$(this).attr('sid')+"/",
                	cache: false,
                	dataType: 'html',
                	success: function(data){
                		ideone_submit(data, $this.attr('lang'), '', $this.attr('note'), true, true);
                	}
                });
            return false;
		});
		
	});
-->
</script>


	<div id="op_window" title="<a href='#' id='op_window_sourcecode_link'>Source code</a> | <a href='#' id='op_window_plaintext_link'>Plain text</a> | <a href='#' id='op_window_copy_to_submit_link'><b>Copy to submit</b></a>">
		<input type="hidden" class="url" value="" id="url"/>
		<div id="op_window_sourcecode">
		code...
		</div>
		<input type="hidden" class="solutionid" id="solutionid"/>
		<input type="hidden" class="pcode" id="pcode"/>
	</div>
        </td>
<tr>
        <td style="padding:0px" colspan="2"><center>
                
</center></td>
</tr>
</table>
</td>


<td width="200" class="ad-r__"><div><script type="text/javascript"><!--
google_ad_client = "ca-pub-4453360425583535";
/* Spoj - wiezowiec */
google_ad_slot = "2703472077";
google_ad_width = 160;
google_ad_height = 600;
//-->
</script>
<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script><div>
<style>
.ad-r__{
        vertical-align: top;
}
.ad-r__ > div.fixed{
        top: 10px;
        position: fixed;
}
</style>
<script type="text/javascript">
$(function(){
        $(window).scroll(function() {
                if($(this).scrollTop() > 100) {
                        $(".ad-r__>div").addClass('fixed');
                } else {
                        $(".ad-r__>div").removeClass('fixed');
                }
        });
	if ($('.ad-r__>div').height() == 0){
		//console.log('adblocker');
		_gaq.push(['_trackEvent', 'ads', 'adblock']);
		$(".freelancer_728").show();
		//$(".ad-r__").append('<script type="text/javascript"><!--amazon_ad_tag = "httpsphereres-20"; amazon_ad_width = "160"; amazon_ad_height = "600"; amazon_ad_border = "hide"; amazon_ad_discount = "remove"; amazon_color_background = "EEEEEE";//--><'+'/script><script type="text/javascript" src="http://ir-na.amazon-adsystem.com/s/ads.js"><'+'/script>');
	}
});
</script>
</td>


</tr>

<tr>
<td colspan="2" class="footer">
<div class="a-footer"></div>
<script language="javascript" type="text/javascript">
<!--
function swapSheet(sheet, caller) {
    document.getElementById('theme').href=sheet;
    document.cookie="css_0="+sheet+"; path=/;";
    caller.href="#bottom";
}

function setWidth(w, caller) {
    document.getElementById('maintable').style.width=w;
    document.cookie="res="+w+"; path=/;";
    caller.href="#bottom";
}



//-->

</script>
        <table width="100%">
    <tr>
	<td align="left" width=10% class="cfooter">
	<a href="/info/">About SPOJ</a>
	</td>
	<td align="center" class="cfooter">
	    width:
	    <a href="/?rsl=855px"  onClick="setWidth('855px', this)">900</a>
	    <a href="/?rsl=980px"  onClick="setWidth('980px', this)">1024</a>
	    <a href="/?rsl=100%" onClick="setWidth('100%', this)">Full</a>
	    &nbsp;&nbsp;
	    theme:
	    <a href="/?css=/themes/skin1.css" onClick="swapSheet('/themes/skin1.css', this)">olive</a>
	    <a href="/?css=/themes/skin2.css" onClick="swapSheet('/themes/skin2.css', this)">banana</a>
	    <a href="/?css=/themes/skin3.css" onClick="swapSheet('/themes/skin3.css', this)">plum</a>
	    <a href="/?css=/themes/hspl.css" onClick="swapSheet('/themes/hspl.css', this)">hspl</a>
	</td>
		<td align="center" class="cfooter">
		 <span title="The discussion channel of the Sphere Online Judge community.">
		 <a href="irc://irc.freenode.net/spoj"><b>#spoj</b> at freenode</a>
		 </span>
	</td>
		<td width=10% class="cfooter" style="text-align:right">
		<a href="/rss/" ><img src="/gfx/rss10x10.gif" border=0>&nbsp;RSS</a>&nbsp;
	</div>
	</td>
    </tr>
    </table>
    </tr></table>
</center>
<div class="a-header"></div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pl_PL/all.js#xfbml=1&appId=321676846207";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!--<div id="fb-root"></div>
<script src="//connect.facebook.net/en_US/all.js#xfbml=1"></script>-->


<div style="font-size:10px; margin-top:4px; color: rgb(85,80,95); text-align: center">
	&copy; Spoj.com. All Rights Reserved. Spoj uses <a href="http://sphere-engine.com" style="color:black">Sphere Engine</a>&trade; &copy; by <a href="http://sphere-research.com" style="color:black">Sphere Research Labs</a>.
</div>

<script type="text/javascript">
  var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-10507872-1']);
    _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                      })();
                      </script>
                      
<script type="text/javascript" src="http://recruitcoders.com/w4loader.js"></script>
</body>
</html>
EOF


  NO_PROBLEM_HTML = <<'EOF'
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>

<title>Sphere Online Judge (SPOJ)</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2" id="metatag">
<META NAME="Keywords" CONTENT="programming, language, algorithm, spoj, contest, contester, Java, C#, Pascal, C, C++, python, ruby, caml, ocaml, perl, haskell, lisp, prolog, fortran, assembler, asembler, functional, online, judge, problem, problemset, ACM">

<link href="//www.spoj.com/gfx/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="/rss/" rel="alternate" type="application/rss+xml" title="RSS Feed">
<link href="//www.spoj.com/themes/common.css" rel="stylesheet" type="text/css" id="theme">
<link href="/style.css" rel="stylesheet" type="text/css" id="theme">
<link href="//www.spoj.com/themes/tooltips.css" rel="stylesheet" type="text/css" id="theme">
<script type='text/javascript' src='//www.spoj.com/gfx/jquery.js'></script>
<script type="text/javascript" src="//www.spoj.com/gfx/jquery.timers.js"></script>
<script type="text/javascript" src="//www.spoj.com/gfx/jquery.cookie.js"></script> 
<!--
<meta property="og:description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
<meta name="description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
-->
<style type="text/css">
<!--
.maintable {width: 1055;} 
-->
</style>
<script type="text/javascript" language="javascript">
<!--
function UnCryptMailto(s) {
	var n=0;
	var r="";
	for(var i=0;i<s.length;i++) {		
		n=s.charCodeAt(i); 
		if (n>=8364) {n = 128;}
		r += String.fromCharCode(n+(2));	
	}
	return r;
}
function linkTo_UnCryptMailto(s)	{
	location.href=UnCryptMailto(s);
}
// -->
</script>

<script type="text/javascript">
function recordOutboundLink(link, category, action) {
  try {
    var pageTracker=_gat._getTracker("UA-XXXXX-X");
    pageTracker._trackEvent(category, action);
    setTimeout('document.location = "' + link.href + '"', 100)
  }catch(err){}
}
</script>

    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shCore.js"></script>
	<script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushCpp.js"></script>
	<script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushCSharp.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushJava.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushPhp.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushPython.js"></script>
	<link type="text/css" rel="stylesheet" href="/gfx/SyntaxHighlighter/styles/shCore.css"/>
	<link type="text/css" rel="stylesheet" href="/gfx/SyntaxHighlighter/styles/shThemeDefault.css"/>
	
	<script type="text/javascript">
		SyntaxHighlighter.all();
	</script>
	

		<meta property="og:image" content="http://www.spoj.com/gfx/spoj-fb.jpg"/>
	<meta property="og:description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
	<meta name="description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
		<meta property="og:site_name" content="spoj.com"/>

</head>
<body>
<center>



<table cellpadding="10" cellspacing="0" class="maintable" id="maintable">
<tr>
    <td colspan="2" class="header">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
		<td class="headerleft"/>
		<td class="headercenter">
<h1><img alt="Sphere Online Judge" title="Sphere Online Judge" src="/gfx/sphere-spoj-small.png" border=0 style="margin-top:-4px;margin-bottom:-4px"></h1>
		</td>
		<td class="headerright"/>
	</tr>
	</table>
    </td>
</tr>
<tr><td class="menu" width="92" valign="top">

	
<div class="section">
	
<form name="login"  action="https://www.spoj.com/ranks/XDFH/lang=SCM%20qobi" method="post" 
onsubmit="if(0&&document.login.ssl.checked) document.login.action='https://www.spoj.com/ranks/XDFH/lang=SCM%20qobi'" style="margin-bottom: 18px"> 
User: <input name="login_user" type="text" style="width: 85px;" class="form"><BR>
Password: <input name="password" type="password" style="width: 85px;" class="form"><BR>
<div style="font-size: 10px; ">
<script language="javascript" type="text/javascript">
<!--
    //document.write('<input type="checkbox" name="ssl" id="ssl" /><label for="ssl">secure</label><br/>');
//-->
</script>
<div title="Keep me signed in for today">
<input type="checkbox" name="autologin" value="1" id="autologin" /><label for="autologin">for today</label>
</div>
<!--Keep me signed in for today-->
</div>
<input name="submit" type="submit" value="Log In" class="button" style="width: 85px; margin-bottom: 10px;">

</form>

<script type="text/javascript">
$(document).ready(function(){
	if( $.cookie('ssl') == '1' ){
		$("#ssl").attr('checked', true);
	}
	$("#ssl").change(function(){
		if($(this).is(':checked')){
			$.cookie('ssl', '1');
		} else {
			$.cookie('ssl', '0');
		}
	});
});
</script>

</div>
<div class="menucmd"><a href="/register">register</a><br><a href="/tutorials">tutorials</a><br><br><a href="/status">status</a><br><a href="/submit">submit</a><br><a href="/problems/classical/sort=0,start=0">problems</a><br><a href="/search">search</a><br><br><a href="/">news</a><br><a href="/contests">contests</a><br><a href="/ranks/">ranks</a><br><br><a href="/forum">forum</a><br><a href="/tools">tools</a><br><a href="/clusters">clusters</a><br><a href="/credits">credits</a><br><hr></div><a href="/problems/classical/sort=0,start=0"></a><br>


	<div class="time">
Server time:</div>
<div class="time">
2014-04-28
<br>
<b>09 : 15 : 25</b>
</div>

</td><td style="width: 748px; padding:0px;" valign="top" class="content0">
        <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
                <td style="padding:0px;" colspan="2"><center>
                                
                </center></td>
        </tr>
        <tr>
                <td class="content" width="99%" style="padding: 10px">
	
		
		Wrong problem id!
	


        </td>
<tr>
        <td style="padding:0px" colspan="2"><center>
                
</center></td>
</tr>
</table>
</td>


<td width="200" class="ad-r__"><div><script type="text/javascript"><!--
google_ad_client = "ca-pub-4453360425583535";
/* Spoj - wiezowiec */
google_ad_slot = "2703472077";
google_ad_width = 160;
google_ad_height = 600;
//-->
</script>
<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script><div>
<style>
.ad-r__{
        vertical-align: top;
}
.ad-r__ > div.fixed{
        top: 10px;
        position: fixed;
}
</style>
<script type="text/javascript">
$(function(){
        $(window).scroll(function() {
                if($(this).scrollTop() > 100) {
                        $(".ad-r__>div").addClass('fixed');
                } else {
                        $(".ad-r__>div").removeClass('fixed');
                }
        });
	if ($('.ad-r__>div').height() == 0){
		//console.log('adblocker');
		_gaq.push(['_trackEvent', 'ads', 'adblock']);
		$(".freelancer_728").show();
		//$(".ad-r__").append('<script type="text/javascript"><!--amazon_ad_tag = "httpsphereres-20"; amazon_ad_width = "160"; amazon_ad_height = "600"; amazon_ad_border = "hide"; amazon_ad_discount = "remove"; amazon_color_background = "EEEEEE";//--><'+'/script><script type="text/javascript" src="http://ir-na.amazon-adsystem.com/s/ads.js"><'+'/script>');
	}
});
</script>
</td>


</tr>

<tr>
<td colspan="2" class="footer">
<div class="a-footer"></div>
<script language="javascript" type="text/javascript">
<!--
function swapSheet(sheet, caller) {
    document.getElementById('theme').href=sheet;
    document.cookie="css_0="+sheet+"; path=/;";
    caller.href="#bottom";
}

function setWidth(w, caller) {
    document.getElementById('maintable').style.width=w;
    document.cookie="res="+w+"; path=/;";
    caller.href="#bottom";
}



//-->

</script>
        <table width="100%">
    <tr>
	<td align="left" width=10% class="cfooter">
	<a href="/info/">About SPOJ</a>
	</td>
	<td align="center" class="cfooter">
	    width:
	    <a href="/?rsl=855px"  onClick="setWidth('855px', this)">900</a>
	    <a href="/?rsl=980px"  onClick="setWidth('980px', this)">1024</a>
	    <a href="/?rsl=100%" onClick="setWidth('100%', this)">Full</a>
	    &nbsp;&nbsp;
	    theme:
	    <a href="/?css=/themes/skin1.css" onClick="swapSheet('/themes/skin1.css', this)">olive</a>
	    <a href="/?css=/themes/skin2.css" onClick="swapSheet('/themes/skin2.css', this)">banana</a>
	    <a href="/?css=/themes/skin3.css" onClick="swapSheet('/themes/skin3.css', this)">plum</a>
	    <a href="/?css=/themes/hspl.css" onClick="swapSheet('/themes/hspl.css', this)">hspl</a>
	</td>
		<td align="center" class="cfooter">
		 <span title="The discussion channel of the Sphere Online Judge community.">
		 <a href="irc://irc.freenode.net/spoj"><b>#spoj</b> at freenode</a>
		 </span>
	</td>
		<td width=10% class="cfooter" style="text-align:right">
		<a href="/rss/" ><img src="/gfx/rss10x10.gif" border=0>&nbsp;RSS</a>&nbsp;
	</div>
	</td>
    </tr>
    </table>
    </tr></table>
</center>
<div class="a-header"></div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pl_PL/all.js#xfbml=1&appId=321676846207";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!--<div id="fb-root"></div>
<script src="//connect.facebook.net/en_US/all.js#xfbml=1"></script>-->


<div style="font-size:10px; margin-top:4px; color: rgb(85,80,95); text-align: center">
	&copy; Spoj.com. All Rights Reserved. Spoj uses <a href="http://sphere-engine.com" style="color:black">Sphere Engine</a>&trade; &copy; by <a href="http://sphere-research.com" style="color:black">Sphere Research Labs</a>.
</div>

<script type="text/javascript">
  var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-10507872-1']);
    _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                      })();
                      </script>
                      
<script type="text/javascript" src="http://recruitcoders.com/w4loader.js"></script>
</body>
</html>
EOF

  PROBLEM_HTML = <<'EOF'
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>

<title>Sphere Online Judge (SPOJ)</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-2" id="metatag">
<META NAME="Keywords" CONTENT="programming, language, algorithm, spoj, contest, contester, Java, C#, Pascal, C, C++, python, ruby, caml, ocaml, perl, haskell, lisp, prolog, fortran, assembler, asembler, functional, online, judge, problem, problemset, ACM">

<link href="//www.spoj.com/gfx/favicon.png" rel="shortcut icon" type="image/x-icon">
<link href="/rss/" rel="alternate" type="application/rss+xml" title="RSS Feed">
<link href="//www.spoj.com/themes/common.css" rel="stylesheet" type="text/css" id="theme">
<link href="/style.css" rel="stylesheet" type="text/css" id="theme">
<link href="//www.spoj.com/themes/tooltips.css" rel="stylesheet" type="text/css" id="theme">
<script type='text/javascript' src='//www.spoj.com/gfx/jquery.js'></script>
<script type="text/javascript" src="//www.spoj.com/gfx/jquery.timers.js"></script>
<script type="text/javascript" src="//www.spoj.com/gfx/jquery.cookie.js"></script> 
<!--
<meta property="og:description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
<meta name="description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
-->
<style type="text/css">
<!--
.maintable {width: 1055;} 
-->
</style>
<script type="text/javascript" language="javascript">
<!--
function UnCryptMailto(s) {
	var n=0;
	var r="";
	for(var i=0;i<s.length;i++) {		
		n=s.charCodeAt(i); 
		if (n>=8364) {n = 128;}
		r += String.fromCharCode(n+(2));	
	}
	return r;
}
function linkTo_UnCryptMailto(s)	{
	location.href=UnCryptMailto(s);
}
// -->
</script>

<script type="text/javascript">
function recordOutboundLink(link, category, action) {
  try {
    var pageTracker=_gat._getTracker("UA-XXXXX-X");
    pageTracker._trackEvent(category, action);
    setTimeout('document.location = "' + link.href + '"', 100)
  }catch(err){}
}
</script>

    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shCore.js"></script>
	<script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushCpp.js"></script>
	<script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushCSharp.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushJava.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushPhp.js"></script>
    <script type="text/javascript" src="/gfx/SyntaxHighlighter/scripts/shBrushPython.js"></script>
	<link type="text/css" rel="stylesheet" href="/gfx/SyntaxHighlighter/styles/shCore.css"/>
	<link type="text/css" rel="stylesheet" href="/gfx/SyntaxHighlighter/styles/shThemeDefault.css"/>
	
	<script type="text/javascript">
		SyntaxHighlighter.all();
	</script>
	

		<meta property="og:image" content="http://www.spoj.com/gfx/spoj-fb.jpg"/>
	<meta property="og:description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
	<meta name="description" content="SPOJ (Sphere Online Judge) is an online judge system with over 100,000 registered users and over 10000 problems. The solution to problems can be submitted in over 40 languages including C, C++, Java, Python, C#, Go, Haskell, Ocaml, and F#. SPOJ has a rapidly growing problem set/tasks available for practice 24 hours/day, including many original tasks prepared by the community of expert problem setters associated with the project."/>
		<meta property="og:site_name" content="spoj.com"/>

</head>
<body>
<center>



<table cellpadding="10" cellspacing="0" class="maintable" id="maintable">
<tr>
    <td colspan="2" class="header">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
		<td class="headerleft"/>
		<td class="headercenter">
<h1><img alt="Sphere Online Judge" title="Sphere Online Judge" src="/gfx/sphere-spoj-small.png" border=0 style="margin-top:-4px;margin-bottom:-4px"></h1>
		</td>
		<td class="headerright"/>
	</tr>
	</table>
    </td>
</tr>
<tr><td class="menu" width="92" valign="top">

	
<div class="section">
	
<form name="login"  action="https://www.spoj.com/ranks/ARITH/lang=HASK" method="post" 
onsubmit="if(0&&document.login.ssl.checked) document.login.action='https://www.spoj.com/ranks/ARITH/lang=HASK'" style="margin-bottom: 18px"> 
User: <input name="login_user" type="text" style="width: 85px;" class="form"><BR>
Password: <input name="password" type="password" style="width: 85px;" class="form"><BR>
<div style="font-size: 10px; ">
<script language="javascript" type="text/javascript">
<!--
    //document.write('<input type="checkbox" name="ssl" id="ssl" /><label for="ssl">secure</label><br/>');
//-->
</script>
<div title="Keep me signed in for today">
<input type="checkbox" name="autologin" value="1" id="autologin" /><label for="autologin">for today</label>
</div>
<!--Keep me signed in for today-->
</div>
<input name="submit" type="submit" value="Log In" class="button" style="width: 85px; margin-bottom: 10px;">

</form>

<script type="text/javascript">
$(document).ready(function(){
	if( $.cookie('ssl') == '1' ){
		$("#ssl").attr('checked', true);
	}
	$("#ssl").change(function(){
		if($(this).is(':checked')){
			$.cookie('ssl', '1');
		} else {
			$.cookie('ssl', '0');
		}
	});
});
</script>

</div>
<div class="menucmd"><a href="/register">register</a><br><a href="/tutorials">tutorials</a><br><br><a href="/status">status</a><br><a href="/submit">submit</a><br><a href="/problems/classical/sort=0,start=0">problems</a><br><a href="/search">search</a><br><br><a href="/">news</a><br><a href="/contests">contests</a><br><a href="/ranks/">ranks</a><br><br><a href="/forum">forum</a><br><a href="/tools">tools</a><br><a href="/clusters">clusters</a><br><a href="/credits">credits</a><br><hr></div><a href="/problems/classical/sort=0,start=0"></a><br>


	<div class="time">
Server time:</div>
<div class="time">
2014-04-28
<br>
<b>09 : 08 : 48</b>
</div>

</td><td style="width: 748px; padding:0px;" valign="top" class="content0">
        <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
                <td style="padding:0px;" colspan="2"><center>
                                
                </center></td>
        </tr>
        <tr>
                <td class="content" width="99%" style="padding: 10px">
<script type="text/javascript" src="/gfx/jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript" src="//ideone.com/api/1.1/service.js"></script>

<script type='text/javascript' src='/gfx/jquery.bgiframe.js'></script>
<script type='text/javascript' src='/gfx/jquery.tooltip.js'></script>
<script type='text/javascript' src='/gfx/jquery.cxhelp.js'></script>


<div class="cxitem" id="h_private">
<div class="cxtitle">Private submission</div>
<div>Private submission won't be visible to other users and <br/>won't be taken into consideration in ranks.</div>
</div>

<div class="cxitem" id="h_disqualified">
<div class="cxtitle">Disqualify submission</div>
<div>Your submission will be disqualified. Operation <br/>is not reversible.</div>
</div>

<div class="cxitem" id="h_hidden">
<div class="cxtitle">Hidden submission</div>
<div> </div>
</div>

<div class="cxitem" id="h_public">
<div class="cxtitle">Public submission</div>
<div>
<i>Click here to view source code.</i><br/></br>
Source code of every submission to this problem <br/> in this contest is public.</div>
</div>

<div class="cxitem" id="h_execute">
<div class="cxtitle">Help</div>
<div>
</div>
</div>

<h3><a href="/problems/ARITH">Simple Arithmetics</a> statistics &amp; best solutions</h3>
<!-- google_ad_section_start(weight=ignore) -->
<table class="problems" width="100%" border="1">
<tr class="headerrow">
<td class="headerrowleft">Users accepted</td>
<td>Submissions</td>
<td>Accepted</td>
<td>Wrong Answer</td>
<td>Compile Error</td>
<td>Runtime Error</td>
<td class="headerrowright">Time Limit Exceeded</td>
</tr>
<tr class="lightrow">
<td>1386</td>
<td>14484</td>
<td>1885</td>
<td>7447</td>
<td>2096</td>
<td>1697</td>
<td>1350</td>
</tr>
</table>
<!-- google_ad_section_end -->

<br>

<!-- google_ad_section_start -->
<table class="navigation" width="99%">
<tr><td class="navigationcenter">
<small>
<a href="/ranks/ARITH">All</a>
<a href="/ranks/ARITH/lang=ADA" title="ADA 95">ADA</a>
<a href="/ranks/ARITH/lang=ASM" title="Assembler">ASM</a>
<a href="/ranks/ARITH/lang=AWK" title="Awk">AWK</a>
<a href="/ranks/ARITH/lang=BASH" title="Bash">BASH</a>
<a href="/ranks/ARITH/lang=BF" title="Brainf**k">BF</a>
<a href="/ranks/ARITH/lang=C" title="C">C</a>
<a href="/ranks/ARITH/lang=CS" title="C#">C#</a>
<a href="/ranks/ARITH/lang=CPP%204.3.2" title="C++">C++ 4.3.2</a>
<a href="/ranks/ARITH/lang=CPP%204.0.0-8" title="C++">C++ 4.0.0-8</a>
<a href="/ranks/ARITH/lang=C99%20strict" title="C99 strict">C99 strict</a>
<a href="/ranks/ARITH/lang=CLPS" title="Clips">CLPS</a>
<a href="/ranks/ARITH/lang=CLOJ" title="Clojure">CLOJ</a>
<a href="/ranks/ARITH/lang=LISP%20sbcl" title="Common Lisp">LISP sbcl</a>
<a href="/ranks/ARITH/lang=LISP%20clisp" title="Common Lisp">LISP clisp</a>
<a href="/ranks/ARITH/lang=D" title="D">D</a>
<a href="/ranks/ARITH/lang=ERL" title="Erlang">ERL</a>
<a href="/ranks/ARITH/lang=FS" title="F#">F#</a>
<a href="/ranks/ARITH/lang=FORT" title="Fortran 95">FORT</a>
<a href="/ranks/ARITH/lang=GO" title="Go">GO</a>
HASK
<a href="/ranks/ARITH/lang=ICON" title="Icon">ICON</a>
<a href="/ranks/ARITH/lang=ICK" title="Intercal">ICK</a>
<a href="/ranks/ARITH/lang=JAR" title="JAR">JAR</a>
<a href="/ranks/ARITH/lang=JAVA" title="Java">JAVA</a>
<a href="/ranks/ARITH/lang=JS" title="JavaScript">JS</a>
<a href="/ranks/ARITH/lang=LUA" title="Lua">LUA</a>
<a href="/ranks/ARITH/lang=NEM" title="Nemerle">NEM</a>
<a href="/ranks/ARITH/lang=NICE" title="Nice">NICE</a>
<a href="/ranks/ARITH/lang=CAML" title="Ocaml">CAML</a>
<a href="/ranks/ARITH/lang=PAS%20fpc" title="Pascal">PAS fpc</a>
<a href="/ranks/ARITH/lang=PAS%20gpc" title="Pascal">PAS gpc</a>
<a href="/ranks/ARITH/lang=PERL" title="Perl">PERL</a>
<a href="/ranks/ARITH/lang=PHP" title="PHP">PHP</a>
<a href="/ranks/ARITH/lang=PIKE" title="Pike">PIKE</a>
<a href="/ranks/ARITH/lang=PRLG" title="Prolog">PRLG</a>
<a href="/ranks/ARITH/lang=PYTH%202.7" title="Python">PYTH 2.7</a>
<a href="/ranks/ARITH/lang=PYTH%203.2.3" title="Python 3">PYTH 3.2.3</a>
<a href="/ranks/ARITH/lang=PYTH%203.2.3%20n" title="Python 3 nbc">PYTH 3.2.3 n</a>
<a href="/ranks/ARITH/lang=RUBY" title="Ruby">RUBY</a>
<a href="/ranks/ARITH/lang=SCALA" title="Scala">SCALA</a>
<a href="/ranks/ARITH/lang=SCM%20guile" title="Scheme">SCM guile</a>
<a href="/ranks/ARITH/lang=SCM%20qobi" title="Scheme">SCM qobi</a>
<a href="/ranks/ARITH/lang=SED" title="Sed">SED</a>
<a href="/ranks/ARITH/lang=ST" title="Smalltalk">ST</a>
<a href="/ranks/ARITH/lang=TCL" title="Tcl">TCL</a>
<a href="/ranks/ARITH/lang=" title="TECS">TECS</a>
<a href="/ranks/ARITH/lang=TEXT" title="Text">TEXT</a>
<a href="/ranks/ARITH/lang=WSPC" title="Whitespace">WSPC</a>
</small>
</td></tr>
</table>
<!-- google_ad_section_end -->


<table class="navigation" width="99%">
<tr><td align="left" width="27%">
<i>Previous</i></td><td class="navigationcenter" width="25%">&nbsp;1</td> 
<td class="navigationcenter" width="25%"><a href="/ranks/ARITH/lang=HASK,start=20" class="pager_link">&nbsp;2</a></td> 
<td align="right" width="25%">
<a href="/ranks/ARITH/lang=HASK,start=20" class="pager_link">Next</a> <a href="/ranks/ARITH/lang=HASK,start=20" class="pager_link">&gt;</a></td></table>
<script language="JavaScript">
<!--
$(document).ready(function(){
        $('.pager_link__fake').bind('click', function(me){
		var href=$(this).attr('href');
                $('.content').animate({opacity: 0.5},1);
                $.ajax({
                        type: "GET",
                        url: href+",ajax=1",
                        //cache: false,
                        //dataType: 'json',
                        contentType: "application/x-www-form-urlencoded;charset=ISO-8859-2",
                        success: function(data){
                                $('.content').html(data);
                                $('.content').animate({opacity: 1.0},1);
                        },
                        error: function(err){
                                $('.content').animate({opacity: 0.75},1);
                        }
                });
                return false;
        });
});
-->
</script>

<script type="text/javascript"><!--
google_ad_client = "ca-pub-4453360425583535";
/* Spoj - baner gĂłrny */
google_ad_slot = "5796055248";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script><a rel="nofollow" href="https://www.digitalocean.com/?refcode=c59674ea4847" class="freelancer_728" style="display: none;"><img src="/gfx/digitalocean-horizontal-eps.png" width=410 height=109 border=0></a>

<form method="post">
<table class="problems" width="100%">
<tr class="headerrow">
<th width="7%" class="headerrowleft">RANK</th>
<th width="12%">
DATE</th>
<th width="20%">USER</th><th width="16%">RESULT</th>
<th width="6%">TIME</th>
<th width="6%">MEM</th>
<th width="8%" class="headerrowright">LANG</th>
</tr>
<input type="hidden" id="max_id" value="4723979" />
<tr class="kol1"><td class="statustext">
1</td>


<td class="status_sm">

2011-02-23 10:52:23
</td>

<td><a href="/users/edushka/" title="edushka">Eduard</a></td><td class="statusres" id="statusres_4723979" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_4723979"><!-- google_ad_section_start(weight=ignore) -->
		0.83	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_4723979">
		

    	3.5M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
2</td>


<td class="status_sm">

2011-06-11 16:28:35
</td>

<td><a href="/users/qwrc/" title="qwrc">Andrey</a></td><td class="statusres" id="statusres_5229338" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_5229338"><!-- google_ad_section_start(weight=ignore) -->
		0.83	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_5229338">
		

    	3.6M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
3</td>


<td class="status_sm">

2009-11-02 09:00:57
</td>

<td><a href="/users/alexv/" title="alexv">Alexander</a></td><td class="statusres" id="statusres_2915370" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_2915370"><!-- google_ad_section_start(weight=ignore) -->
		0.88	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_2915370">
		

    	3.5M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
4</td>


<td class="status_sm">

2013-10-07 23:35:20
</td>

<td><a href="/users/perry2of5/" title="perry2of5">Tim Perry</a></td><td class="statusres" id="statusres_10201333" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_10201333"><!-- google_ad_section_start(weight=ignore) -->
		0.95	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_10201333">
		

    	3.5M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
5</td>


<td class="status_sm">

2008-12-15 08:28:25
</td>

<td><a href="/users/nash__/" title="nash__">_nash_</a></td><td class="statusres" id="statusres_1965335" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_1965335"><!-- google_ad_section_start(weight=ignore) -->
		0.96	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_1965335">
		

    	3.6M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
6</td>


<td class="status_sm">

2010-03-04 00:03:53
</td>

<td><a href="/users/carliros/" title="carliros">gcarlos</a></td><td class="statusres" id="statusres_3327379" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_3327379"><!-- google_ad_section_start(weight=ignore) -->
		1.12	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_3327379">
		

    	4.6M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
7</td>


<td class="status_sm">

2007-07-09 20:44:56
</td>

<td><a href="/users/deewiant/" title="deewiant">Deewiant</a></td><td class="statusres" id="statusres_944516" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_944516"><!-- google_ad_section_start(weight=ignore) -->
		1.23	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_944516">
		

    	3.6M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
8</td>


<td class="status_sm">

2010-09-28 21:20:40
</td>

<td><a href="/users/rycee/" title="rycee">rycee</a></td><td class="statusres" id="statusres_4095883" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_4095883"><!-- google_ad_section_start(weight=ignore) -->
		1.24	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_4095883">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
9</td>


<td class="status_sm">

2010-02-02 23:10:13
</td>

<td><a href="/users/dylanpl/" title="dylanpl">Adrian Dyliński</a></td><td class="statusres" id="statusres_3234891" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_3234891"><!-- google_ad_section_start(weight=ignore) -->
		1.43	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_3234891">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
10</td>


<td class="status_sm">

2004-06-26 21:25:27
</td>

<td><a href="/users/igloo/" title="igloo">Ian Lynagh</a></td><td class="statusres" id="statusres_2802" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_2802"><!-- google_ad_section_start(weight=ignore) -->
		1.45	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_2802">
		

    	4.2M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
11</td>


<td class="status_sm">

2012-04-13 00:30:22
</td>

<td><a href="/users/gabster/" title="gabster">Zachary Fakename</a></td><td class="statusres" id="statusres_6832713" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_6832713"><!-- google_ad_section_start(weight=ignore) -->
		1.49	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_6832713">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
12</td>


<td class="status_sm">

2011-04-05 14:48:01
</td>

<td><a href="/users/has9/" title="has9">Andrey</a></td><td class="statusres" id="statusres_4917841" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_4917841"><!-- google_ad_section_start(weight=ignore) -->
		1.77	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_4917841">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
13</td>


<td class="status_sm">

2010-08-25 22:22:50
</td>

<td><a href="/users/peutri/" title="peutri">Peutri</a></td><td class="statusres" id="statusres_3963318" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_3963318"><!-- google_ad_section_start(weight=ignore) -->
		1.95	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_3963318">
		

    	4.6M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
14</td>


<td class="status_sm">

2010-03-09 14:49:52
</td>

<td><a href="/users/savonarola/" title="savonarola">Ilya Averyanov</a></td><td class="statusres" id="statusres_3348811" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_3348811"><!-- google_ad_section_start(weight=ignore) -->
		2.03	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_3348811">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
15</td>


<td class="status_sm">

2013-12-02 03:56:37
</td>

<td><a href="/users/gphilip/" title="gphilip">G Philip</a></td><td class="statusres" id="statusres_10574337" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_10574337"><!-- google_ad_section_start(weight=ignore) -->
		2.07	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_10574337">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
16</td>


<td class="status_sm">

2011-03-15 00:27:02
</td>

<td><a href="/users/darlingman1970/" title="darlingman1970">Chris Nash</a></td><td class="statusres" id="statusres_4812636" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_4812636"><!-- google_ad_section_start(weight=ignore) -->
		2.34	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_4812636">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
17</td>


<td class="status_sm">

2008-03-05 07:34:10
</td>

<td><a href="/users/trh/" title="trh">Toby Hutton</a></td><td class="statusres" id="statusres_1343487" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_1343487"><!-- google_ad_section_start(weight=ignore) -->
		2.38	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_1343487">
		

    	4.6M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
18</td>


<td class="status_sm">

2010-07-11 19:08:44
</td>

<td><a href="/users/tempestadept/" title="tempestadept">Konstantin Likhomanov</a></td><td class="statusres" id="statusres_3814472" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_3814472"><!-- google_ad_section_start(weight=ignore) -->
		2.53	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_3814472">
		

    	4.6M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
19</td>


<td class="status_sm">

2009-10-23 03:53:44
</td>

<td><a href="/users/jochu/" title="jochu">jc</a></td><td class="statusres" id="statusres_2877105" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_2877105"><!-- google_ad_section_start(weight=ignore) -->
		2.54	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_2877105">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

<tr class="kol1"><td class="statustext">
20</td>


<td class="status_sm">

2013-04-12 00:46:58
</td>

<td><a href="/users/fedelebron/" title="fedelebron">Federico Lebrón</a></td><td class="statusres" id="statusres_9086981" status="15" manual="0">



			accepted	



	

</td>
<td class="statustext" id="statustime_9086981"><!-- google_ad_section_start(weight=ignore) -->
		2.70	<!-- google_ad_section_end --></td>
<td class="statustext" id="statusmem_9086981">
		

    	4.7M
    	</td>
<td class="slang">
	<p>HASK</p></td>
</tr>

</table>
</form>

<input type="hidden" id="debug" value="0"/>

<script language="JavaScript">
<!--
		var loader = "<img src='/gfx/loader.gif'/>";
        var screen_width = 1;
        var screen_height = 1;
        var win_width = 1;
        var win_height = 1;
        var win_left = 1;
        var win_top = 1;
        var tmp = "";
		function load(){
                a = new Array();
                for(var i = 0; i<9; i++){
                        var results = $('.statusres[status='+i+'][manual=0]').each(function(i, el){
                                var zz = $(el).attr('id').substring(10);
                                a.push( zz );
                                $('#statustime_'+zz).html(loader);
                        });
                };
                if( a.length > 0 ){
                $.ajax({
                        type: "POST",
                        url: "/status/ajax=1,ajaxdiff=1",
                        data: "ids="+a.join(','),
                        dataType: 'json',
                        success: function(data){
                                for(var i = 0; i<data.length; i++){
                                        $("#statusres_" + data[i].id).attr('status', data[i].status);
                                        $("#statusres_" + data[i].id).html(data[i].status_description);
                                        $("#statustime_" + data[i].id).html(data[i].time);
                                        $("#statusch_" + data[i].id).html(data[i].chk_id);
                                        if( data[i].status >= 9 ){
                                                $("#statusres_" + data[i].id).parent('tr').attr('class', 'kol');
                                                $("#statusmem_" + data[i].id).html(data[i].mem);
                                        }
                                        if( data[i].status == 15 ){
                                                $("#statusres_" + data[i].id).parent('tr').attr('class', 'kol3');
                                        }
                                        if( data[i].status < 9 ){
                                                $("#statusres_" + data[i].id).html( $("#statusres_" + data[i].id).html());
                                                $("#statustime_" + data[i].id).html( loader );
                                        }
                                        $("#statusres_" + data[i].id).parent().attr('class', data[i].color);
                                }
								setTimeout(load, 4000);
                        },
                        error: function(err,a,b){
							if( $("#debug").attr("value") == 1 ){
								alert(err);
								alert(a);
								alert(b);
								tmp = err;
							};
                        }
                });
                }
        }

$(document).ready(function(){
        function reload_window_dim(){
			screen_width = $(window).width() - 10;
			screen_height = $(window).height() - 10;
			win_width = screen_width * 4 / 5;
			win_height = screen_height * 4 / 5;
			win_left = screen_width / 10;
			win_top = screen_height / 10;
		}
		reload_window_dim();

        load();
    
        $.ui.dialog.defaults.bgiframe = true;
	
		function source_code_execute(){
			$("#op_window_sourcecode_link").unbind("click");
			$("#op_window_sourcecode_link").bind("click", function(){
				$('#op_window_mjudge').hide();
				$('#op_window_sourcecode').show();
				var url = $('#url').attr('value');
				loadCode(url, "op_window_sourcecode", false);
				return false;
			});
		}
		function plain_text_execute(){
			$("#op_window_plaintext_link").unbind("click");
			$("#op_window_plaintext_link").bind("click", function(){
				$('#op_window_mjudge').hide();
				$('#op_window_sourcecode').show();
				var url = $('#url').attr('value');
				url = url.replace('src', 'src\/plain');
				loadCode(url, "op_window_sourcecode", true);
				return false;
			});
		}
		function copy_to_submit_execute(){
			$("#op_window_copy_to_submit_link").unbind("click");
			$("#op_window_copy_to_submit_link").bind("click", function(){
				var id = $('#solutionid').attr('value');
				var pcode = $('#pcode').attr('value');
				window.location.href = "/submit/"+pcode+"/?id="+id;
			});
		}
		function manual_rejudge_execute(){
			$("#op_window_mjudge_link").unbind("click");
			$("#op_window_mjudge_link").bind("click", function(){
				$('#op_window_mjudge').show();
				$('#op_window_sourcecode').hide();
				return false;
			});
		}
		
		function createWindow(){
			reload_window_dim();
			$("#op_window").dialog({
				//bgiframe: true,
				autoOpen: false,
				height: win_height,
				width: win_width,
				modal: true,
				buttons: {
					Close: function() {
						$(this).dialog('close');
						//$(this).dialog('destroy');
					}
				}
			});
			$(".ui-dialog .ui-dialog-titlebar").append("<a class=\"ui-dialog-titlebar-resize ui-corner-all\" href=\"\"><span class=\"ui-icon ui-icon-newwin\" unselectable=\"on\" style=\"-moz-user-select: none;\">resize</span></a>");
			$(".ui-dialog .ui-dialog-titlebar .ui-icon-newwin").bind("click", function(){
				reload_window_dim();
				if( ! $(".ui-dialog").attr("max") ){
					$('#op_window').parents('.ui-dialog:first').animate({ width: screen_width, height: screen_height, left: 0, top: 0 });
					$('#op_window').animate({ width: screen_width, height: screen_height-100 });
					$(".ui-dialog").attr("max", "1");
				} else {
					$('#op_window').parents('.ui-dialog:first').animate({ width: win_width, height: win_height, left: win_left, top: win_top });
					$("#op_window").animate({ width: win_width, height: (win_height - 100) });
					$(".ui-dialog").attr("max", "");
				}
				return false;
			});
			source_code_execute();
			plain_text_execute();
			manual_rejudge_execute();
			copy_to_submit_execute();
		};
		
		createWindow(); 
		
		
		function loadCode(url,objectid,pre){
			$("#"+objectid).html(loader);
			if( ! url ) return;
			$.ajax({
				type: "POST",
				url: url,
				cache: false,
				data: "post=1",
				success: function(data){
					if( ! pre ){
						$("#"+objectid).html(data);
					} else {
						$("#"+objectid).html("<pre>" + data + "</pre>");
					}
				},
				error: function(){
					$("#"+objectid).html("error ;(");	
				}
			});
		}
		
		
					
			$(".op_window").bind("click", function(){
				reload_window_dim();
				$('#solutionid').attr('value', ( $(this).attr('sid') ) );
				$('#pcode').attr('value', ( $(this).attr('pcode') ) );
				$('#op_window').dialog('open');
				$('#op_window').dialog('enable');
				//$('.ui-dialog').css('display', 'block');
				$(".ui-dialog").attr("max", "");
				var url = "/files/src/" + $(this).attr('sid') + "/";
				$('#url').attr('value', url);
				loadCode(url, "op_window_sourcecode", false);
				$("#op_window_sourcecode_link").click();
				return false;
			});
			
				
		
		
		$(".ideone-run").click(function(){
			var $this = $(this);
			$.ajax({
                	type: "post",
                	url: "/files/src/plain/"+$(this).attr('sid')+"/",
                	cache: false,
                	dataType: 'html',
                	success: function(data){
                		ideone_submit(data, $this.attr('lang'), '', $this.attr('note'), true, true);
                	}
                });
            return false;
		});
		
	});
-->
</script>


	<div id="op_window" title="<a href='#' id='op_window_sourcecode_link'>Source code</a> | <a href='#' id='op_window_plaintext_link'>Plain text</a> | <a href='#' id='op_window_copy_to_submit_link'><b>Copy to submit</b></a>">
		<input type="hidden" class="url" value="" id="url"/>
		<div id="op_window_sourcecode">
		code...
		</div>
		<input type="hidden" class="solutionid" id="solutionid"/>
		<input type="hidden" class="pcode" id="pcode"/>
	</div>
        </td>
<tr>
        <td style="padding:0px" colspan="2"><center>
                
</center></td>
</tr>
</table>
</td>


<td width="200" class="ad-r__"><div><script type="text/javascript"><!--
google_ad_client = "ca-pub-4453360425583535";
/* Spoj - wiezowiec */
google_ad_slot = "2703472077";
google_ad_width = 160;
google_ad_height = 600;
//-->
</script>
<script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script><div>
<style>
.ad-r__{
        vertical-align: top;
}
.ad-r__ > div.fixed{
        top: 10px;
        position: fixed;
}
</style>
<script type="text/javascript">
$(function(){
        $(window).scroll(function() {
                if($(this).scrollTop() > 100) {
                        $(".ad-r__>div").addClass('fixed');
                } else {
                        $(".ad-r__>div").removeClass('fixed');
                }
        });
	if ($('.ad-r__>div').height() == 0){
		//console.log('adblocker');
		_gaq.push(['_trackEvent', 'ads', 'adblock']);
		$(".freelancer_728").show();
		//$(".ad-r__").append('<script type="text/javascript"><!--amazon_ad_tag = "httpsphereres-20"; amazon_ad_width = "160"; amazon_ad_height = "600"; amazon_ad_border = "hide"; amazon_ad_discount = "remove"; amazon_color_background = "EEEEEE";//--><'+'/script><script type="text/javascript" src="http://ir-na.amazon-adsystem.com/s/ads.js"><'+'/script>');
	}
});
</script>
</td>


</tr>

<tr>
<td colspan="2" class="footer">
<div class="a-footer"></div>
<script language="javascript" type="text/javascript">
<!--
function swapSheet(sheet, caller) {
    document.getElementById('theme').href=sheet;
    document.cookie="css_0="+sheet+"; path=/;";
    caller.href="#bottom";
}

function setWidth(w, caller) {
    document.getElementById('maintable').style.width=w;
    document.cookie="res="+w+"; path=/;";
    caller.href="#bottom";
}



//-->

</script>
        <table width="100%">
    <tr>
	<td align="left" width=10% class="cfooter">
	<a href="/info/">About SPOJ</a>
	</td>
	<td align="center" class="cfooter">
	    width:
	    <a href="/?rsl=855px"  onClick="setWidth('855px', this)">900</a>
	    <a href="/?rsl=980px"  onClick="setWidth('980px', this)">1024</a>
	    <a href="/?rsl=100%" onClick="setWidth('100%', this)">Full</a>
	    &nbsp;&nbsp;
	    theme:
	    <a href="/?css=/themes/skin1.css" onClick="swapSheet('/themes/skin1.css', this)">olive</a>
	    <a href="/?css=/themes/skin2.css" onClick="swapSheet('/themes/skin2.css', this)">banana</a>
	    <a href="/?css=/themes/skin3.css" onClick="swapSheet('/themes/skin3.css', this)">plum</a>
	    <a href="/?css=/themes/hspl.css" onClick="swapSheet('/themes/hspl.css', this)">hspl</a>
	</td>
		<td align="center" class="cfooter">
		 <span title="The discussion channel of the Sphere Online Judge community.">
		 <a href="irc://irc.freenode.net/spoj"><b>#spoj</b> at freenode</a>
		 </span>
	</td>
		<td width=10% class="cfooter" style="text-align:right">
		<a href="/rss/" ><img src="/gfx/rss10x10.gif" border=0>&nbsp;RSS</a>&nbsp;
	</div>
	</td>
    </tr>
    </table>
    </tr></table>
</center>
<div class="a-header"></div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pl_PL/all.js#xfbml=1&appId=321676846207";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!--<div id="fb-root"></div>
<script src="//connect.facebook.net/en_US/all.js#xfbml=1"></script>-->


<div style="font-size:10px; margin-top:4px; color: rgb(85,80,95); text-align: center">
	&copy; Spoj.com. All Rights Reserved. Spoj uses <a href="http://sphere-engine.com" style="color:black">Sphere Engine</a>&trade; &copy; by <a href="http://sphere-research.com" style="color:black">Sphere Research Labs</a>.
</div>

<script type="text/javascript">
  var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-10507872-1']);
    _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);
        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                      })();
                      </script>
                      
<script type="text/javascript" src="http://recruitcoders.com/w4loader.js"></script>
</body>
</html>
EOF
end
