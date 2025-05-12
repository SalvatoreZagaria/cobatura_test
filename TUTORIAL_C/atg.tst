-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:REMOVED_CL_PREFIX
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED
TEST.SCRIPT_FEATURE:IGNORE_NAME_VALUE_ERRORS
--
-- ATG tests generated
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.REPLACE
TEST.NAME:ATG-TEST-1
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:GREEN
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:LOBSTER
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:NO_BEVERAGE
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (2) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> FALSE
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.REPLACE
TEST.NAME:ATG-TEST-2
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:GREEN
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:LOBSTER
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Dessert:NO_DESSERT
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:WINE
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (2) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> TRUE
       #  Order->Dessert := CAKE
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.REPLACE
TEST.NAME:ATG-TEST-3
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:CAESAR
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:STEAK
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Dessert:NO_DESSERT
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:MIXED_DRINK
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> TRUE
       #  Order->Dessert := PIE
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.REPLACE
TEST.NAME:ATG-TEST-1
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.Place_Order.Table:0
TEST.VALUE:manager.Place_Order.Seat:1
TEST.VALUE:manager.Place_Order.Order.Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Is_Occupied:262143
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Number_In_Party:65533
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Entree:NO_ENTREE
TEST.STUB:manager.Add_Included_Dessert
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:2194
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  Table_Data := Get_Table_Record(Table)
       #  Table_Data.Is_Occupied := v_true
       #  Table_Data.Number_In_Party := Table_Data.Number_In_Party + 1
       #  Table_Data.Order[Seat] := Order
       #  Add_Included_Dessert(&(Table_Data.Order[Seat]))
      (1) case (Order.Entree) ==> NO_ENTREE 0
       #  Update_Table_Record(Table, Table_Data)
       #  return 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.REPLACE
TEST.NAME:ATG-TEST-2
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.Place_Order.Table:0
TEST.VALUE:manager.Place_Order.Seat:3
TEST.VALUE:manager.Place_Order.Order.Entree:STEAK
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Is_Occupied:4294967295
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Number_In_Party:65533
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Check_Total:<<NEG_INF>>
TEST.STUB:manager.Add_Included_Dessert
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:2196
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
       #  Table_Data := Get_Table_Record(Table)
       #  Table_Data.Is_Occupied := v_true
       #  Table_Data.Number_In_Party := Table_Data.Number_In_Party + 1
       #  Table_Data.Order[Seat] := Order
       #  Add_Included_Dessert(&(Table_Data.Order[Seat]))
      (2) case (Order.Entree) ==> STEAK 1
       #  Table_Data.Check_Total := Table_Data.Check_Total + (14.0)
       #  Update_Table_Record(Table, Table_Data)
       #  return 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.REPLACE
TEST.NAME:ATG-TEST-3
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.Place_Order.Table:0
TEST.VALUE:manager.Place_Order.Seat:3
TEST.VALUE:manager.Place_Order.Order.Entree:CHICKEN
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Is_Occupied:4294967295
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Number_In_Party:65533
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Check_Total:<<NEG_INF>>
TEST.STUB:manager.Add_Included_Dessert
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:2196
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
       #  Table_Data := Get_Table_Record(Table)
       #  Table_Data.Is_Occupied := v_true
       #  Table_Data.Number_In_Party := Table_Data.Number_In_Party + 1
       #  Table_Data.Order[Seat] := Order
       #  Add_Included_Dessert(&(Table_Data.Order[Seat]))
      (3) case (Order.Entree) ==> CHICKEN 2
       #  Table_Data.Check_Total := Table_Data.Check_Total + (10.0)
       #  Update_Table_Record(Table, Table_Data)
       #  return 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.REPLACE
TEST.NAME:ATG-TEST-4
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.Place_Order.Table:0
TEST.VALUE:manager.Place_Order.Seat:3
TEST.VALUE:manager.Place_Order.Order.Entree:LOBSTER
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Is_Occupied:4294967295
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Number_In_Party:65533
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Check_Total:<<NEG_INF>>
TEST.STUB:manager.Add_Included_Dessert
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:2196
TEST.NOTES:
This is an automatically generated test case.
   Test Path 4
       #  Table_Data := Get_Table_Record(Table)
       #  Table_Data.Is_Occupied := v_true
       #  Table_Data.Number_In_Party := Table_Data.Number_In_Party + 1
       #  Table_Data.Order[Seat] := Order
       #  Add_Included_Dessert(&(Table_Data.Order[Seat]))
      (4) case (Order.Entree) ==> LOBSTER 3
       #  Table_Data.Check_Total := Table_Data.Check_Total + (18.0)
       #  Update_Table_Record(Table, Table_Data)
       #  return 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.REPLACE
TEST.NAME:ATG-TEST-5
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.Place_Order.Table:0
TEST.VALUE:manager.Place_Order.Seat:3
TEST.VALUE:manager.Place_Order.Order.Entree:PASTA
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Is_Occupied:4294967295
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Number_In_Party:65533
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Check_Total:<<NEG_INF>>
TEST.STUB:manager.Add_Included_Dessert
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:2196
TEST.NOTES:
This is an automatically generated test case.
   Test Path 5
       #  Table_Data := Get_Table_Record(Table)
       #  Table_Data.Is_Occupied := v_true
       #  Table_Data.Number_In_Party := Table_Data.Number_In_Party + 1
       #  Table_Data.Order[Seat] := Order
       #  Add_Included_Dessert(&(Table_Data.Order[Seat]))
      (5) case (Order.Entree) ==> PASTA 4
       #  Table_Data.Check_Total := Table_Data.Check_Total + (12.0)
       #  Update_Table_Record(Table, Table_Data)
       #  return 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.REPLACE
TEST.NAME:ATG-TEST-1
TEST.VALUE:<<OPTIONS>>.SHOW_ONLY_DATA_WITH_EXPECTED_RESULTS:TRUE
TEST.VALUE:manager.Clear_Table.Table:0
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Is_Occupied:v_false
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Number_In_Party:0
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Soup:NO_SOUP
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Salad:NO_SALAD
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Dessert:NO_DESSERT
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[0].Beverage:NO_BEVERAGE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Soup:NO_SOUP
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Salad:NO_SALAD
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Dessert:NO_DESSERT
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[1].Beverage:NO_BEVERAGE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Soup:NO_SOUP
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Salad:NO_SALAD
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Dessert:NO_DESSERT
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[2].Beverage:NO_BEVERAGE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Soup:NO_SOUP
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Salad:NO_SALAD
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Entree:NO_ENTREE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Dessert:NO_DESSERT
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Order[3].Beverage:NO_BEVERAGE
TEST.VALUE:uut_prototype_stubs.Get_Table_Record.return.Check_Total:0.0
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  Table_Data := Get_Table_Record(Table)
       #  Table_Data.Is_Occupied := v_false
       #  Table_Data.Number_In_Party := 1
       #  Seat := 0
      (1) for (Seat < 4) ==> TRUE (unroll BEGIN)
       #  (Table_Data.Order[Seat]).Soup := NO_SOUP
       #  (Table_Data.Order[Seat]).Salad := NO_SALAD
       #  (Table_Data.Order[Seat]).Entree := NO_ENTREE
       #  (Table_Data.Order[Seat]).Dessert := NO_DESSERT
       #  (Table_Data.Order[Seat]).Beverage := NO_BEVERAGE
       #  Seat++
       #  (Table_Data.Order[Seat]).Soup := NO_SOUP
       #  (Table_Data.Order[Seat]).Salad := NO_SALAD
       #  (Table_Data.Order[Seat]).Entree := NO_ENTREE
       #  (Table_Data.Order[Seat]).Dessert := NO_DESSERT
       #  (Table_Data.Order[Seat]).Beverage := NO_BEVERAGE
       #  Seat++
       #  (Table_Data.Order[Seat]).Soup := NO_SOUP
       #  (Table_Data.Order[Seat]).Salad := NO_SALAD
       #  (Table_Data.Order[Seat]).Entree := NO_ENTREE
       #  (Table_Data.Order[Seat]).Dessert := NO_DESSERT
       #  (Table_Data.Order[Seat]).Beverage := NO_BEVERAGE
       #  Seat++
       #  (Table_Data.Order[Seat]).Soup := NO_SOUP
       #  (Table_Data.Order[Seat]).Salad := NO_SALAD
       #  (Table_Data.Order[Seat]).Entree := NO_ENTREE
       #  (Table_Data.Order[Seat]).Dessert := NO_DESSERT
       #  (Table_Data.Order[Seat]).Beverage := NO_BEVERAGE
       #  Seat++
      (1) for (Seat < 4) ==> FALSE (unroll END)
       #  Table_Data.Check_Total := 0
       #  Update_Table_Record(Table, Table_Data)
       #  return 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Check_Total
TEST.REPLACE
TEST.NAME:ATG-TEST-1
TEST.VALUE:manager.Get_Check_Total.Table:0
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  Table_Data := Get_Table_Record(Table)
       #  return Table_Data.Check_Total
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.REPLACE
TEST.NAME:ATG-TEST-1
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:4
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name[0]:0x0
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
       #  i := 0
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> FALSE
       #  WaitingList[WaitingListSize++][i] := 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.REPLACE
TEST.NAME:ATG-TEST-2
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:7
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name[0]:-114
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
       #  i := 0
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> TRUE
       #  WaitingList[WaitingListSize][i++] := *Name
       #  Name++
       #  WaitingList[WaitingListSize++][i] := 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.REPLACE
TEST.NAME:ATG-TEST-3
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:131081
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name[0]:0x0
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
       #  i := 0
      (1) if (WaitingListSize > (9)) ==> TRUE
       #  WaitingListSize := 0
      (2) while (Name && *Name) ==> FALSE
       #  WaitingList[WaitingListSize++][i] := 0
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.REPLACE
TEST.NAME:ATG-TEST-1
TEST.VALUE:manager.<<GLOBAL>>.WaitingListIndex:9
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListIndex > (9)) ==> FALSE
       #  return WaitingList[WaitingListIndex++]
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
------------------------------
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.REPLACE
TEST.NAME:ATG-TEST-2
TEST.VALUE:manager.<<GLOBAL>>.WaitingListIndex:131081
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListIndex > (9)) ==> TRUE
       #  WaitingListIndex := 0
       #  return WaitingList[WaitingListIndex++]
   Test Case Generation Notes:
      ATG constructed a complete test-case.
TEST.END_NOTES:
TEST.END
------------------------------
