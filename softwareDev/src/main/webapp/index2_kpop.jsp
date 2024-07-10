<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="index2.css">
<title>Music Search - kpop</title>
</head>
<body>
	<h1>Music Search</h1>
	
	<h2>おすすめのアーティストはこちら！</h2>
	
	<ul class="musiclist">
        <form action="SelectKpop" method="post">
            <button type="submit" name="song" value="TT from Twice">Twice</button>
            <button type="submit" name="song" value="ELEVEN from IVE">IVE</button>
            <button type="submit" name="song" value="OMG from Newjeans">Newjeans</button>
            <button type="submit" name="song" value="DNA from BTS">BTS</button>
            <button type="submit" name="song" value="Pretty U from SEVENTEEN">SEVENTEEN</button>
            <input type="hidden" name="genre" value="Kpop">
        </form>
    </ul>
    
    <p></p>
    <ul class="randomButton">
    	<form action="SelectKpop" method="post">
    		<button type="submit" name="song" value="random">ランダムに選択</button>
    		<input type="hidden" name="genre" value="Kpop">
   		</form>
   	</ul>
   	<p></p>
    
</body>
</html>