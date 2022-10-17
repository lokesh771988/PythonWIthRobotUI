*** Test Cases ***
ForLoopTest
    @{item}     Create List     a   b   c   d   e
    FOR    ${counter}    IN     @{item}
        Log To Console    ${counter}
    END