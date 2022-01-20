package di;

class Persons{
	String name;
	int age;
	
//	public Persons() {
//		//public 생성자 정의
//	}
	private Persons() {
		//public 생성자 정의
	}
}

public class DiTest {
	
	/*
	 강한 결합(독립성 낮음) : new를 통해 직접 객체를 생성한다. 
	 	결합도가 높기 때문에 person클래스의 변화에 직접적인 영향을 받는다.
	 */
	public static void aPerson() {
		//생성자가 private가 되는 순간 에러가 발생.
		//Persons persons1 = new Persons();
		//persons1.age = 12;
		//persons1.name ="박국희";
	}
	/*
	 약한 결합(독립성 높음) : 미리 생성된 객체를 주입(Injection)받음.
	  결합도가 낮아지기 때문에 Persons클래스에 변화가 생기더라도
	  직접적인 영향을 받지 않는다. 또한 코드도 좀 더 감결해진다.
	 */
	public static void bPerson(Persons p) {
		p.age= 29;
		p.name="박유미";
	}
}
