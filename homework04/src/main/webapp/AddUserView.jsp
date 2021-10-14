<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
<meta charest="ECU-KR">
<body>
	<center>
		<h2>회원 가입</h2>
	</center>

	<form method='post' action='/homework04/AddUser.jsp'>

		<td><li>개인정보 &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
				&emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
				&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
				&emsp; <input type="button" value="?" /> 도움말</td>
		<hr size="5" />
		<ul>

			<table border="1">
				<tr>
					<td>*아이디</td>
					<td><input type="text" , name="id" /></td>
				</tr>

				<tr>
					<td>*비밀번호</td>
					<td><input type="text" , name="pwd" /></td>
				</tr>

				<tr>
					<td>*이름(한글설명)</td>
					<td><input type="text" , name="name" /></td>
				</tr>

				<tr>
					<td>*성별</td>
					<td>남자 <input type="radio" name="sex" value="남자" checked>
						여자 <input type="radio" name="sex" value="여자">
				</tr>

				<tr>
					<td>*생년월일</td>
					<td><input value="" size="5" />년 <select name='month'>
							<option>선택</option>
							<option value="1월">1</option>
							<option>2</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>

					</select> 월 <select name="day">
							<optgroup>
								<option>선택</option>
								<option value="1일">01</option>
								<option>02</option>
								<option>03</option>
								<option>04</option>
								<option>05</option>
								<option>06</option>
								<option>07</option>
								<option>08</option>
								<option>09</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>
								<option>21</option>
								<option>22</option>
								<option>23</option>
								<option>24</option>
								<option>25</option>
								<option>26</option>
								<option>27</option>
								<option>28</option>
								<option>29</option>
								<option>30</option>
								<option>31</option>
							</optgroup>
					</select> 일 &emsp; 양력 <input type="radio" name="calendar" value="양력">
						음력 <input type="radio" name="calendar" value="음력"> (윤달 <input
						type="radio" name="calendar" value="윤달">)</td>
				</tr>
				<tr>
					<td>*최종학년</td>
					<td><select name="edu">
							<optgroup>
								<option>선택하세요</option>
								<option value="초딩">초졸</option>
								<option value="중딩">중졸</option>
								<option value="고딩">고졸</option>
								<option value="데딩">대졸</option>
							</optgroup>
					</select></td>
				</tr>


				<tr>
					<td>*직업</td>
					<td><select name="work">
							<optgroup>
								<option value="초딩">선택하세요</option>
								<option value="타이피스트">타이피스트</option>
								<option value="열심히하면">열심히하면</option>
								<option value="할수있다">할수있다</option>
								<option value="비트캠프">비트캠프</option>
								<option value="개발자">개발자</option>
							</optgroup>
							<tt>
					</select> &emsp; &emsp;&emsp;&emsp; 소속<input type="text" ,name="소속" /></td>
				</tr>


				<tr>
					<td>*결혼여부</td>
					<td>미혼 <input type="radio"> 기혼 <input type="radio" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 자녀수
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select>
							<optgroup>
								<option>선택</option>
								<option>01</option>
								<option>02</option>
								<option>03</option>
								<option>04</option>
								<option>05</option>
								<option>06</option>
								<option>07</option>
								<option>08</option>
								<option>09</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>
								<option>21</option>
								<option>22</option>
								<option>23</option>
								<option>24</option>
								<option>25</option>
								<option>26</option>
								<option>27</option>
								<option>28</option>
								<option>29</option>
								<option>30</option>
								<option>31</option>
							</optgroup>
					</select> 명
					</td>
				</tr>


				<tr>
					<td rowspan='3'>*연락처</td>
					<td>전화번호<input type="text" /> 집 <input type="radio"
						name="phon" value="home"> 직장 <input type="radio"
						name="phon" value="work" />
					</td>
				</tr>

				<tr>
					<td>휴대폰<input type="selphon1" name="phone" size="5" size="5" />
						이동통신사 SKT <input type="radio" name="이동통신사" value="SKT">
						KTF <input type="radio" name="이동통신사" value="KTF" /> LGT <input
						type="radio" name="이동통신사" value="LGT" />
					</td>
				</tr>

				<tr>
					<td>전화번호나 휴대폰번호 2가지 중 하나는 반드시 입력하셔야 합니다.</td>
				</tr>

				<tr>
					<td>*거주지 주소</td>
					<td><input type="button" name="국내" /><input type="button"
						name="국외" /><input type="phon" name="addr" size="30" /></td>
				</tr>
				<tr>
					<td><input type='submit' value='전송'></td>
					<td></td>
				</tr>
			</table>
	</form>


	</boby>
</html>

