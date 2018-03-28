import XCTest

class Calculator1UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    let app = XCUIApplication()
    
    func testPlus() {
        let textInput1 = app.textFields["textInput1"]
        let textInput2 = app.textFields["textInput2"]
        let plusButton = app.buttons["plusButton"]
        let resultButton = app.buttons["resultButton"]
        textInput1.tap()
        textInput1.typeText("500")
        plusButton.tap()
        textInput2.typeText("150")
        resultButton.tap()
    }
    
    func testMinus() {
        let textInput1 = app.textFields["textInput1"]
        let textInput2 = app.textFields["textInput2"]
        let minusButton = app.buttons["minusButton"]
        let resultButton = app.buttons["resultButton"]
        textInput1.tap()
        textInput1.typeText("500")
        minusButton.tap()
        textInput2.typeText("150")
        resultButton.tap()
    }
    
    func testMultiply() {
        let textInput1 = app.textFields["textInput1"]
        let textInput2 = app.textFields["textInput2"]
        let multiplyButton = app.buttons["multiplyButton"]
        let resultButton = app.buttons["resultButton"]
        textInput1.tap()
        textInput1.typeText("500")
        multiplyButton.tap()
        textInput2.typeText("150")
        resultButton.tap()
    }
    
    func testDevide() {
        let textInput1 = app.textFields["textInput1"]
        let textInput2 = app.textFields["textInput2"]
        let devideButton = app.buttons["devideButton"]
        let resultButton = app.buttons["resultButton"]
        textInput1.tap()
        textInput1.typeText("500")
        devideButton.tap()
        textInput2.typeText("150")
        resultButton.tap()
    }
    
    func testHaveEmpty(){
        let expect = app.navigationBars["Calculate"].waitForExistence(timeout: 10)
        XCTAssertTrue(expect)
        
//        let buttonResult = app.buttons["resultButton"]
    }
    
    func testSuccess(){
        
    }
}
