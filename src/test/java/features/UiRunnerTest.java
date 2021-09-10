package features;

import com.intuit.karate.junit5.Karate;

/**
 * If you are running execution using maven make sure
 * runner class name should end with 'Test' e.g here we used name 'UiRunnerTest'
 * This is how Karate interpret which class needed for ececution
 */

class UiRunnerTest {

    @Karate.Test
    Karate testUi() {

        return Karate.run("classpath:features/DemoWithMultipleWindow.feature");
    }
    
}
