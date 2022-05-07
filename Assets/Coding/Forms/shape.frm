VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UfrmShape02 
   Caption         =   "Shape 02"
   ClientHeight    =   2850
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5130
   OleObjectBlob   =   "shape.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UfrmShape02"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub btnOk_Click()

    Dim cl As Range
    
    Set cl = Range(Selection.Address)
    
    Range(Selection.Address).Offset(0, -5).Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlCenter
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="Fe250,Fe415,Fe500,Fe550,Fe550D"
        .IgnoreBlank = True
        .InCellDropdown = True
        .InputTitle = ""
        .ErrorTitle = ""
        .InputMessage = ""
        .ErrorMessage = ""
        .ShowInput = True
        .ShowError = True
    End With
    
    Range(ActiveCell.Address).Offset(0, 2).Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlCenter
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    With Selection.Validation
        .Delete
        .Add Type:=xlValidateList, AlertStyle:=xlValidAlertStop, Operator:= _
        xlBetween, Formula1:="6,8,10,12,14,16,18,20,22,25,28,32,36,40,44,50"
        .IgnoreBlank = True
        .InCellDropdown = True
        .InputTitle = ""
        .ErrorTitle = ""
        .InputMessage = ""
        .ErrorMessage = ""
        .ShowInput = True
        .ShowError = True
    End With
    
    Range(ActiveCell.Address).Offset(0, 1).Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlCenter
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    ActiveCell.Formula = 1
    
    Range(ActiveCell.Address).Offset(0, 1).Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlCenter
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    ActiveCell.Formula = 1
    
    Range(ActiveCell.Address).Offset(0, 2).Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlCenter
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    ActiveCell.Formula = "=" & Range(ActiveCell.Address).Offset(0, -2).Address _
                             & "*" & Range(ActiveCell.Address).Offset(0, -3).Address
    
    Range(ActiveCell.Address).Offset(0, 1).Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlCenter
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    ActiveCell.Formula = "=" & TextBox1.Value & "+(9*" & Range(ActiveCell.Address).Offset(0, -5).Address _
                             & ")*" & Range(ActiveCell.Address).Offset(0, -1).Address
    
    Range(ActiveCell.Address).Offset(0, 1).Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlCenter
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    ActiveCell.Formula = "=(" & Range(ActiveCell.Address).Offset(0, -1).Address _
                            & "*" & Range(ActiveCell.Address).Offset(0, -6).Address _
                            & "*" & Range(ActiveCell.Address).Offset(0, -6).Address _
                            & ")/162000"
                            
    ActiveSheet.Shapes.AddLine( _
                cl.Left + 10, _
                cl.Top + (cl.Height / 2) + 10, _
                cl.Left + cl.Width - 30, _
                cl.Top + (cl.Height / 2) + 10).Select
        Selection.ShapeRange.ShapeStyle = msoLineStylePreset15
        Selection.Name = "Shape_02_Line_01" & ActiveCell.Address
    
    ActiveSheet.Shapes.AddShape(25, _
                cl.Left + cl.Width - 30, _
                cl.Top + cl.Height / 2 - 10, _
                10, _
                10).Select
        Selection.ShapeRange.Adjustments.Item(2) = 90
        Selection.ShapeRange.ShapeStyle = msoLineStylePreset15
        Selection.Name = "Shape_02_Bend_01" & ActiveCell.Address
        
    ActiveSheet.Shapes.AddLine( _
            (cl.Left + cl.Width - 30), _
            (cl.Top + cl.Height / 2 - 10), _
            (cl.Left + cl.Width - 40), _
            (cl.Top + cl.Height / 2 - 10)).Select
        Selection.ShapeRange.ShapeStyle = msoLineStylePreset15
        Selection.Name = "Shape_02_Line_02" & ActiveCell.Address
        
    ActiveSheet.Shapes.AddTextbox(msoTextOrientationHorizontal, _
            cl.Left + (cl.Width / 2) - 40, _
            cl.Top + (cl.Height / 2) - 15, _
            cl.Width / 2, _
            15).Select
    Application.CutCopyMode = False
    Selection.ShapeRange.TextFrame2.TextRange.Characters.Text = TextBox1.Value
    Selection.ShapeRange.TextFrame2.TextRange.ParagraphFormat.Alignment = msoAlignCenter
    Selection.ShapeRange.TextFrame2.VerticalAnchor = msoAnchorMiddle
    Selection.ShapeRange.Fill.Visible = msoFalse
    Selection.ShapeRange.Line.Visible = msoFalse
    Selection.Name = "Shape_02_Text_01" & ActiveCell.Address
            
    ActiveSheet.Shapes.Range(Array( _
            "Shape_02_Line_01" & ActiveCell.Address, _
            "Shape_02_Bend_01" & ActiveCell.Address, _
            "Shape_02_Line_02" & ActiveCell.Address, _
            "Shape_02_Text_01" & ActiveCell.Address)).Select
    Selection.ShapeRange.Group.Select
    Selection.Name = "Bar_Shape_02" & ActiveCell.Address
    
    Unload UfrmShape02

End Sub
