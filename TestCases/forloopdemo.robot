*** Test Cases ***
ForLoop1
    FOR     ${i}     IN RANGE     1     10
        Log To Console    ${i}
    END
    
Forloop2
    @{items}    Create List    1    2    3    4    5
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
    END

ForLoop3
    @{itemslist}    Create List    1    2     3    4    5
    FOR    ${i}    IN    @{itemslist}
        Log To Console    ${i}
        Exit For Loop If    ${i}==3
    END
    