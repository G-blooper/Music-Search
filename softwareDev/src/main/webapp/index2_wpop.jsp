<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="index2.css">
<title>Music Search - wpop</title>
</head>
<body>
	<h1>Music Search</h1>
	
	<h2>おすすめのアーティストはこちら！</h2>
	
	<ul class="musiclist">
        <form action="SelectWesternPop" method="post">
            <button type="submit" name="song" value="Feather from Sabrina Carpenter">Sabrina Carpenter</button>
            <button type="submit" name="song" value="Calm down from Taylor Swift">Taylor Swift</button>
            <button type="submit" name="song" value="Vampire from Olivia Rodrigo">Olivia Rodrigo</button>
            <button type="submit" name="song" value="bad guy from Billie Eilish">Billie Eilish</button>
            <button type="submit" name="song" value="Happily from One Direction">One Direction</button>
        	<input type="hidden" name="genre" value="Western Pop">
        </form>
    </ul>
    
    <p></p>
    <ul class="randomButton">
    	<form action="SelectWesternPop" method="post">
    		<button type="submit" name="song" value="random">ランダムに選択</button>
    		<input type="hidden" name="genre" value="Western Pop">
   		</form>
   	</ul>
   	<p></p>
    
</body>
</html>