package tests;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;
import utils.Config;

/**
 * Created by mt on 25/07/2018.
 */
public class AllTests {

    public static void main(String[] args) {

        System.out.println("\n *********** START CITATI TEST *************** " + Config.getTimeStamp());
        Result citatiTest = JUnitCore.runClasses(Citati.class);
        for (Failure failure : citatiTest.getFailures()) {
            System.out.println(failure.toString() + Config.getTimeStamp());

            //Here it is getting the run count from the result object
            System.out.println("Total number of tests " + citatiTest.getRunCount());

            //This is to get the failure count from the result object
            System.out.println("Total number of tests failed " + citatiTest.getFailureCount());
        }
        System.out.println("\n *********** END CITATI TEST *************** " + Config.getTimeStamp());



        System.out.println("\n\n *********** START PARKING KONTROLA TEST *************** " + Config.getTimeStamp());
        Result parkingKontrolaTest = JUnitCore.runClasses(ParkingKontrola.class);
        for (Failure failure : parkingKontrolaTest.getFailures()) {
            System.out.println(failure.toString() + Config.getTimeStamp());

            //Here it is getting the run count from the result object
            System.out.println("Total number of tests " + parkingKontrolaTest.getRunCount());

            //This is to get the failure count from the result object
            System.out.println("Total number of tests failed " + parkingKontrolaTest.getFailureCount());
        }
        System.out.println("\n *********** END PARKING KONTROLA TEST *************** " + Config.getTimeStamp());



        System.out.println("\n\n *********** START SEMAFOR TEST *************** " + Config.getTimeStamp());
        Result semaforTest = JUnitCore.runClasses(Semafor.class);
        for (Failure failure : semaforTest.getFailures()) {
            System.out.println(failure.toString() + Config.getTimeStamp());

            //Here it is getting the run count from the result object
            System.out.println("Total number of tests " + semaforTest.getRunCount());

            //This is to get the failure count from the result object
            System.out.println("Total number of tests failed " + semaforTest.getFailureCount());
        }
        System.out.println("\n *********** END SEMAFOR TEST *************** " + Config.getTimeStamp());


        System.out.println("\n\n *********** START LOGIN TEST *************** " + Config.getTimeStamp());
        Result loginTest = JUnitCore.runClasses(Logovanje.class);
        for (Failure failure : loginTest.getFailures()) {
            System.out.println(failure.toString() + Config.getTimeStamp());

            //Here it is getting the run count from the result object
            System.out.println("Total number of tests " + loginTest.getRunCount());

            //This is to get the failure count from the result object
            System.out.println("Total number of tests failed " + loginTest.getFailureCount());
        }
        System.out.println("\n *********** END LOGIN TEST *************** " + Config.getTimeStamp());


        System.out.println("\n\n *********** START REGISTRACIJA TEST *************** " + Config.getTimeStamp());
        Result registracijaTest = JUnitCore.runClasses(Registracija.class);
        for (Failure failure : registracijaTest.getFailures()) {
            System.out.println(failure.toString() + Config.getTimeStamp());

            //Here it is getting the run count from the result object
            System.out.println("Total number of tests " + registracijaTest.getRunCount());

            //This is to get the failure count from the result object
            System.out.println("Total number of tests failed " + registracijaTest.getFailureCount());
        }
        System.out.println("\n *********** END REGISTRACIJA TEST *************** " + Config.getTimeStamp());

    }


}
