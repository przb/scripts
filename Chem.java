import java.util.InputMismatchException;
import java.util.Scanner;

public class Chem {

    public static void main(String[] args) {
        final int NUM_CHEMICALS = 4;
        int[] coeffecients = new int[NUM_CHEMICALS];
        double[] concentrations = new double[NUM_CHEMICALS];

        Scanner scn = new Scanner(System.in);
        
        try{

            for (int i = 0; i < NUM_CHEMICALS; i++) {
                System.out.print("Coeffecient: ");
                coeffecients[i] = scn.nextInt();
                System.out.print("Concentration: ");
                concentrations[i] = scn.nextDouble();
            }
            double qC =(Math.pow(concentrations[3],  coeffecients[3]) * Math.pow(concentrations[2] , coeffecients[2]) /
                        (Math.pow(concentrations [1], coeffecients[1]) * Math.pow(concentrations[0], coeffecients[0])));
    
            System.out.println("Q of c: " + qC);
        }
        catch(InputMismatchException e){
            e.getMessage();
            System.out.println("Error: Not Valid Number");
        }
        finally{
            scn.close();
        }

    }
}