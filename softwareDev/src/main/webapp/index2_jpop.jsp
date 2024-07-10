<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="index2.css">
<title>Music Search - jpop</title>
</head>
<body>
	<h1>Music Search</h1>
	
	<h2>おすすめのアーティストはこちら！</h2>
	
	<ul class="musiclist">
        <form action="SelectJpop" method="post">
            <button type="submit" name="song" value="白日 from King&Gun">King&Gun</button>
            <button type="submit" name="song" value="マリゴールド from あいみょん">あいみょん</button>
            <button type="submit" name="song" value="アイドル from YOASOBI">YOASOBI</button>
            <button type="submit" name="song" value="シンデレラボーイ from Saucy Dog">Saucy Dog</button>
            <button type="submit" name="song" value="きらり from 藤井風">藤井風</button>
        	<input type="hidden" name="genre" value="Jpop">
        </form>
    </ul>
    
    <p></p>
    <ul class="randomButton">
    	<form action="SelectJpop" method="post">
    		<button type="submit" name="song" value="random">ランダムに選択</button>
    		<input type="hidden" name="genre" value="Jpop">
   		</form>
   	</ul>
   	<p></p>
</body>
</html>