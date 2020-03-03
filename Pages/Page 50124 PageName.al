page 50124 PageName
{
    PageType = Card;

    actions
    {
        // Add the action called "My Actions" to the Action Menu
        area(Processing)
        {
            action("My Actions")
            {
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('Hello World');
                end;
            }
        }
        area(Creation)
        {
            // Adds the action "My New Document" to the New Document group in the Actions Menu
            action("My New Document")
            {
                ApplicationArea = All;
                RunObject = page "Customer Card";
                Image = "1099Form";
            }
        }
        area(Navigation)
        {
            // Adds the action called "My Navigate"
            action("My Navigate")
            {
                ApplicationArea = All;
                RunObject = page "Customer Card";
            }
        }
        area(Reporting)
        {
            // Adds a submenu called "My Label" to the Report Menu
            group(NewSubGroup)
            {
                Caption = 'My label';
                group(MyGroup)
                {
                    // Adds the action "My Report" to the My Label submenu
                    action("My Report")
                    {
                        ApplicationArea = All;
                        RunObject = page "Customer Card";
                    }
                }
            }
        }
    }
}