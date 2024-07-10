<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="index.css">
	<title>Music Search - Select genre</title>
</head>
<body>
    <h1>Music Search</h1>
    
    <h2>好きなジャンルを選択してください</h2>
    <ul class="genrelist">
        <form action="SelectGenre" method="post">
            <button type="submit" name="genre" value="Kpop">Kpop</button>
            <button type="submit" name="genre" value="Jpop">Jpop</button>
            <button type="submit" name="genre" value="Western Pop">Western Pop</button>
            <button type="submit" name="genre" value="random" class="randomButton">ランダムに選択</button>
        </form>
    </ul>
   	
</body>
</html>