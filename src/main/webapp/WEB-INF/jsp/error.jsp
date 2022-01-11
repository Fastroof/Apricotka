<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
      body {
          display: flex;
          flex-direction: column;
          align-items: center;
      }
      table td{
          vertical-align:top;
          border:solid 1px #888;
          padding:10px;
      }
  </style>
</head>
<body>
<h1>Щось трапилось не так</h1>
<table>
  <tr>
    <td>Помилка</td>
    <td>${error}</td>
  </tr>
  <tr>
    <td>Код</td>
    <td>${status}</td>
  </tr>
  <tr>
    <td>Повідомлення</td>
    <td>${message}</td>
  </tr>
  <tr>
    <td>Виключення</td>
    <td>${exception}</td>
  </tr>
  </table>
</body>
</html>