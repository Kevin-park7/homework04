<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<head>
<meta charest="ECU-KR">
<body>
	<center>
		<h2>ȸ�� ����</h2>
	</center>

	<form method='post' action='/homework04/AddUser.jsp'>

		<td><li>�������� &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
				&emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
				&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;
				&emsp; <input type="button" value="?" /> ����</td>
		<hr size="5" />
		<ul>

			<table border="1">
				<tr>
					<td>*���̵�</td>
					<td><input type="text" , name="id" /></td>
				</tr>

				<tr>
					<td>*��й�ȣ</td>
					<td><input type="text" , name="pwd" /></td>
				</tr>

				<tr>
					<td>*�̸�(�ѱۼ���)</td>
					<td><input type="text" , name="name" /></td>
				</tr>

				<tr>
					<td>*����</td>
					<td>���� <input type="radio" name="sex" value="����" checked>
						���� <input type="radio" name="sex" value="����">
				</tr>

				<tr>
					<td>*�������</td>
					<td><input value="" size="5" />�� <select name='month'>
							<option>����</option>
							<option value="1��">1</option>
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

					</select> �� <select name="day">
							<optgroup>
								<option>����</option>
								<option value="1��">01</option>
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
					</select> �� &emsp; ��� <input type="radio" name="calendar" value="���">
						���� <input type="radio" name="calendar" value="����"> (���� <input
						type="radio" name="calendar" value="����">)</td>
				</tr>
				<tr>
					<td>*�����г�</td>
					<td><select name="edu">
							<optgroup>
								<option>�����ϼ���</option>
								<option value="�ʵ�">����</option>
								<option value="�ߵ�">����</option>
								<option value="���">����</option>
								<option value="����">����</option>
							</optgroup>
					</select></td>
				</tr>


				<tr>
					<td>*����</td>
					<td><select name="work">
							<optgroup>
								<option value="�ʵ�">�����ϼ���</option>
								<option value="Ÿ���ǽ�Ʈ">Ÿ���ǽ�Ʈ</option>
								<option value="�������ϸ�">�������ϸ�</option>
								<option value="�Ҽ��ִ�">�Ҽ��ִ�</option>
								<option value="��Ʈķ��">��Ʈķ��</option>
								<option value="������">������</option>
							</optgroup>
							<tt>
					</select> &emsp; &emsp;&emsp;&emsp; �Ҽ�<input type="text" ,name="�Ҽ�" /></td>
				</tr>


				<tr>
					<td>*��ȥ����</td>
					<td>��ȥ <input type="radio"> ��ȥ <input type="radio" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �ڳ��
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select>
							<optgroup>
								<option>����</option>
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
					</select> ��
					</td>
				</tr>


				<tr>
					<td rowspan='3'>*����ó</td>
					<td>��ȭ��ȣ<input type="text" /> �� <input type="radio"
						name="phon" value="home"> ���� <input type="radio"
						name="phon" value="work" />
					</td>
				</tr>

				<tr>
					<td>�޴���<input type="selphon1" name="phone" size="5" size="5" />
						�̵���Ż� SKT <input type="radio" name="�̵���Ż�" value="SKT">
						KTF <input type="radio" name="�̵���Ż�" value="KTF" /> LGT <input
						type="radio" name="�̵���Ż�" value="LGT" />
					</td>
				</tr>

				<tr>
					<td>��ȭ��ȣ�� �޴�����ȣ 2���� �� �ϳ��� �ݵ�� �Է��ϼž� �մϴ�.</td>
				</tr>

				<tr>
					<td>*������ �ּ�</td>
					<td><input type="button" name="����" /><input type="button"
						name="����" /><input type="phon" name="addr" size="30" /></td>
				</tr>
				<tr>
					<td><input type='submit' value='����'></td>
					<td></td>
				</tr>
			</table>
	</form>


	</boby>
</html>

