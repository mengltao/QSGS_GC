---------start script
Paragraph.SetText("Title", "��Ϊ��ϸ���趨");
Paragraph.SetText("Detail", "����Ϊ������ϸ���趨��\r\n�ڴ�֮ǰ������ʹ�á����������򵼡�����һ����Ϊ����");

---------progress 1
_varDelListBoxItem = 1;
while (_varDelListBoxItem < 11) do
ListBox.DeleteItem("Item", 1);
_varDelListBoxItem = _varDelListBoxItem + 1;
end
_varResetComboBox = 1;
while (_varResetComboBox < 11) do
ComboBox.ResetContent("ComboBox".._varResetComboBox);
ComboBox.SetVisible("ComboBox".._varResetComboBox, false);
_varResetComboBox = _varResetComboBox + 1;
end
_varResetInput = 1;
while (_varResetInput < 11) do
Input.SetText("Input".._varResetInput, "");
Input.SetVisible("Input".._varResetInput, false);
_varResetInput = _varResetInput + 1;
end
DialogEx.SetObjectScript("ComboBox1", "On Click", " ");

---------progress 2
ListBox.AddItem("Item", "ʹ�õĿ�������", "");
ListBox.AddItem("Item", "���Ƶ����ö���", "");
ListBox.AddItem("Item", "��Ч�Ŀ��Ʒ�Χ", "");
ListBox.AddItem("Item", "��ɫ�޶�", "");
ListBox.AddItem("Item", "��Ч����Ϊ�Ŀ���", "");

---------progress 3
ComboBox.SetVisible("ComboBox2", true);
ComboBox.SetVisible("ComboBox3", true);
ComboBox.SetVisible("ComboBox4", true);
ComboBox.SetVisible("ComboBox5", true);

---------progress 4
Input.SetVisible("Input1", true);

---------progress 5
ComboBox.AddItem("ComboBox2", "�Լ�", "");
ComboBox.AddItem("ComboBox3", "��ѡ��Ŀ���", "");
ComboBox.AddItem("ComboBox4", "��ɫ", "");
ComboBox.AddItem("ComboBox4", "��ɫ", "");
ComboBox.AddItem("ComboBox4", "����", "");
ComboBox.AddItem("ComboBox4", "�ݻ�(÷��)", "");
ComboBox.AddItem("ComboBox4", "����", "");
ComboBox.AddItem("ComboBox4", "����", "");
ComboBox.AddItem("ComboBox5", "��ȷ��");
ComboBox.AddItem("ComboBox5", "��");
ComboBox.AddItem("ComboBox5", "����뷢");
ComboBox.AddItem("ComboBox5", "��ʯ��");
ComboBox.AddItem("ComboBox5", "�������µ�");
ComboBox.AddItem("ComboBox5", "����");
ComboBox.AddItem("ComboBox5", "�赶ɱ��");
ComboBox.AddItem("ComboBox5", "�������");
ComboBox.AddItem("ComboBox5", "����");
ComboBox.AddItem("ComboBox5", "��¬");
ComboBox.AddItem("ComboBox5", "���Ӳ���");
ComboBox.AddItem("ComboBox5", "����˫�ɽ�");
ComboBox.AddItem("ComboBox5", "����");
ComboBox.AddItem("ComboBox5", "������");
ComboBox.AddItem("ComboBox5", "��������");
ComboBox.AddItem("ComboBox5", "��ȸ����");
ComboBox.AddItem("ComboBox5", "��");
ComboBox.AddItem("ComboBox5", "��ɱ");
ComboBox.AddItem("ComboBox5", "��԰����");
ComboBox.AddItem("ComboBox5", "�Ŷ���");
ComboBox.AddItem("ComboBox5", "���컭�");
ComboBox.AddItem("ComboBox5", "����");
ComboBox.AddItem("ComboBox5", "������");
ComboBox.AddItem("ComboBox5", "�ֲ�˼��");
ComboBox.AddItem("ComboBox5", "��������");
ComboBox.AddItem("ComboBox5", "��");
ComboBox.AddItem("ComboBox5", "��Ӱ");
ComboBox.AddItem("ComboBox5", "���빭");
ComboBox.AddItem("ComboBox5", "����");
ComboBox.AddItem("ComboBox5", "��и�ɻ�");
ComboBox.AddItem("ComboBox5", "��԰����");
ComboBox.AddItem("ComboBox5", "���G��");
ComboBox.AddItem("ComboBox5", "������");
ComboBox.AddItem("ComboBox5", "��������");
ComboBox.AddItem("ComboBox5", "����ʨ��");
ComboBox.AddItem("ComboBox5", "ɱ");
ComboBox.AddItem("ComboBox5", "˳��ǣ��");
ComboBox.AddItem("ComboBox5", "�ɰ���ì");
ComboBox.AddItem("ComboBox5", "�������");
ComboBox.AddItem("ComboBox5", "��ɱ");
ComboBox.AddItem("ComboBox5", "�ټ�");
ComboBox.AddItem("ComboBox5", "צ�Ʒɵ�");
ComboBox.AddItem("ComboBox5", "���U");

---------progress 6
_TempRestorePoint_1 = " ";
_TempRestorePoint_2 = " ";
_TempRestorePoint_3 = " ";
_TempRestorePoint_4 = " ";
_NewOrderActionProDick = "if _Combo2Stored == \"�Լ�\" then _TempRestorePoint_1 = \"self, \"; end\r\nif _Combo3Stored == \"��ѡ��Ŀ���\" then _TempRestorePoint_2 = \"selected, \"; end\r\nif _Combo4Stored == \"��ɫ\" then _TempRestorePoint_3 = \"to_select:isRed()\"; end\r\nif _Combo4Stored == \"��ɫ\" then _TempRestorePoint_3 = \"to_select:isBlack()\"; end\r\nif _Combo4Stored == \"����\" then _TempRestorePoint_3 = \"to_select:getSuit()==sgs.Card_Spade\"; end\r\nif _Combo4Stored == \"�ݻ�(÷��)\" then _TempRestorePoint_3 = \"to_select:getSuit()==sgs.Card_Club\"; end\r\nif _Combo4Stored == \"����\" then _TempRestorePoint_3 = \"to_select:getSuit()==sgs.Card_Diamond\"; end\r\nif _Combo4Stored == \"����\" then _TempRestorePoint_3 = \"to_select:getSuit()==sgs.Card_Heart\"; end\r\nif _Combo5Stored ~= \"\" then _TempRestorePoint_4 = INIFile.GetValue(\"Dict.ini\", \"Dict_5\", _Input1Stored); end\r\n_ActionOutputText = \"\\tn = \".._Input1Stored..\",\\r\\n\\tview_filter = function(\".._TempRestorePoint_1.._TempRestorePoint_2..\"to_select)\\r\\n\\t\\r\\n\\treturn \".._TempRestorePoint_3..\" and not to_select:isEquipped()\\r\\n\\t\\r\\n\\tend,\\r\\n\\t\\r\\n\\t\\r\\n\\t\\r\\n\\tview_as = function(\".._TempRestorePoint_1..\", cards)\\r\\n\\t\\r\\n\\t\\tif #cards == \".._Input1Stored..\" then\\r\\n\\t\\t\\r\\n\\t\\t\\tlocal card = cards[1]\\r\\n\\t\\t\\t\\r\\n\\t\\t\\tlocal new_card = sgs.Sanguosha:cloneCard(\\\"\".._TempRestorePoint_4..\"\\\", card:getSuit(), card:getNumber())\\r\\n\\t\\t\\t\\r\\n\\t\\t\\tnew_card:addSubcard(card:getId())\\r\\n\\t\\t\\tnew_card:setSkillName(self:objectName())\\r\\n\\t\\t\\treturn new_card\\r\\n\\t\\t\\tend\\r\\n\\t\\t\\tend\";"
DialogEx.SetObjectScript("xButton1", "On Click", "_Combo1Stored = ComboBox.GetText(\"ComboBox1\");\r\n_Combo2Stored = ComboBox.GetText(\"ComboBox2\");\r\n_Combo3Stored = ComboBox.GetText(\"ComboBox3\");\r\n_Combo4Stored = ComboBox.GetText(\"ComboBox4\");\r\n_Combo5Stored = ComboBox.GetText(\"ComboBox5\");\r\n_Combo6Stored = ComboBox.GetText(\"ComboBox6\");\r\n_Combo7Stored = ComboBox.GetText(\"ComboBox7\");\r\n_Combo8Stored = ComboBox.GetText(\"ComboBox8\");\r\n_Combo9Stored = ComboBox.GetText(\"ComboBox9\");\r\n_Combo10Stored = ComboBox.GetText(\"ComboBox10\");\r\n_Input1Stored = Input.GetText(\"Input1\");\r\n_Input2Stored = Input.GetText(\"Input2\");\r\n_Input3Stored = Input.GetText(\"Input3\");\r\n_Input4Stored = Input.GetText(\"Input4\");\r\n_Input5Stored = Input.GetText(\"Input5\");\r\n_Input6Stored = Input.GetText(\"Input6\");\r\n_Input7Stored = Input.GetText(\"Input7\");\r\n_Input8Stored = Input.GetText(\"Input8\");\r\n_Input9Stored = Input.GetText(\"Input9\");\r\n_Input10Stored = Input.GetText(\"Input10\");\r\n".._NewOrderActionProDick.."\r\nDialogEx.Close(0);");

---------progress 7
--DialogEx.SetObjectScript("xButton1", "On Click", "_Combo1Stored = ComboBox.GetText(\"ComboBox1\");\r\n_Combo2Stored = ComboBox.GetText(\"ComboBox2\");\r\n_Combo3Stored = ComboBox.GetText(\"ComboBox3\");\r\n_Combo4Stored = ComboBox.GetText(\"ComboBox4\");\r\n_Combo5Stored = ComboBox.GetText(\"ComboBox5\");\r\n_Combo6Stored = ComboBox.GetText(\"ComboBox6\");\r\n_Combo7Stored = ComboBox.GetText(\"ComboBox7\");\r\n_Combo8Stored = ComboBox.GetText(\"ComboBox8\");\r\n_Combo9Stored = ComboBox.GetText(\"ComboBox9\");\r\n_Combo10Stored = ComboBox.GetText(\"ComboBox10\");\r\n_Input1Stored = Input.GetText(\"Input1\");\r\n_Input2Stored = Input.GetText(\"Input2\");\r\n_Input3Stored = Input.GetText(\"Input3\");\r\n_Input4Stored = Input.GetText(\"Input4\");\r\n_Input5Stored = Input.GetText(\"Input5\");\r\n_Input6Stored = Input.GetText(\"Input6\");\r\n_Input7Stored = Input.GetText(\"Input7\");\r\n_Input8Stored = Input.GetText(\"Input8\");\r\n_Input9Stored = Input.GetText(\"Input9\");\r\n_Input10Stored = Input.GetText(\"Input10\");\r\n".._NewOrderActionProDick.."\r\nDialog.Message(\"Debug Info\", _ActionOutputText, MB_OK, MB_ICONNONE, MB_DEFBUTTON1);\r\nDialogEx.Close(0);");

---------end script
-------copyright information
_ActionCreator = "BroFrank";
_ActionCopyright = "Copyright 2012 BroFrank. All Rights Reserved.";
_ActionTrademarks = "Qsanguosha General Creator Action";
_ActionPrivate = "";
_ActionSpecial = "";
_ActionCompany = "";
_ActionVersion = "1.0.0.3";
_ActionCreateDate = "08/28/12";
_ActionAddon1 = "";
_ActionAddon2 = "";

-------all action finish