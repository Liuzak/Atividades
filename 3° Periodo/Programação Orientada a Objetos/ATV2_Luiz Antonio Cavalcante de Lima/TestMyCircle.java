
public class TestMyCircle {

	public static void main(String[] args) {
		MyCircle c1 = new MyCircle(5, 1, 5);
        MyCircle c2 = new MyCircle(new MyPoint(2,2), 10);
        
        System.out.println("C1 = "+c1);
        System.out.println("C2 = "+c2);
       
        System.out.println("Equals: "+c1.equals(c2));
        
        c2.setCenter(c1.getCenter());
        c2.setRadius(c1.getRadius());
        
        System.out.println("Equals: "+c1.equals(c2));
          
	}

}
