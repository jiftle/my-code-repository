Private Sub Command1_Click()
    Dim strTmp As String
    Dim strPath As String
    
    '判断目录是否存在
    strPath = "c:\workdir"
    strTmp = Dir(strPath, vbDirectory)
    If strTmp = "" Then
        '目录不存在，创建一个新的目录
        MkDir (strPath)
    End If
    
    '获得当前目录
    strPath = CurDir()
    MsgBox strPath
End Sub

'Open 文件绝对路径 For Input/Output/Append/Binary/Random As #文件号
'Input:读入文件,文件不存在发生错误
'Output: 输出到文件 , 文件不存在则创建文件
'这两个是比较常用的
'Write #文件号, 变量(写内容到打开的文件)
'Put #文件号, 文件大小, 变量(写内容到打开的文件, 可指定大小)
'Print #文件号, 变量(写内容到打开的文件)
'Input #文件号, 变量(从打开的文件读入内容)
'Line Input #文件号, 变量(从打开的文件读入一行内容(遇到回车符为一行))
'Close #文件号(关闭打开的文件)
'
'
'#文件号(1～255)
'----------------------------------------------------------
'Dir函数
'
'返回一个 String，用以表示一个文件名、目录名或文件夹名称，它必须与指定的模式或文件属性、或磁盘卷标相匹配。
'
'语法
'
'Dir [(文件绝对路径[, 方式])]
'
'Dir 函数的语法具有以下几个部分:
'
'部分 描述
'文件绝对路径 可选参数。用来指定文件名的字符串表达式，可能包含目录或文件夹、以及驱动器。如果没有找到 pathname，则会返回零长度字符串 ("")。
'方式 可选参数。常数或数值表达式，其总和用来指定文件属性。如果省略，则会返回匹配 pathname 但不包含属性的文件。
'
'
'设置值
'
'方式 参数的设置可为:
'
'常数 值 描述
'vbNormal 0 (缺省) 指定没有属性的文件。
'vbReadOnly 1 指定无属性的只读文件
'vbHidden 2 指定无属性的隐藏文件
'VbSystem 4 指定无属性的系统文件
'vbVolume 8 指定卷标文件；如果指定了其它属性，则忽略bVolume
'vbDirectory 16 指定无属性文件及其路径和文件夹。
'
'注意 这些常数是由 VBA 所指定的，在程序代码中的任何位置，可以使用这些常数来替换真正的数值。
'----------------------------------------------------------
'Kill函数
'Kill 文件绝对路径
'删除文件 , 文件不存在发生错误
'----------------------------------------------------------
'MkDir 文件夹绝对路径
'删除文件夹 , 文件夹不存在发生错误
'----------------------------------------------------------
'RmDir 文件夹绝对路径
'创建文件夹 , 文件夹已存在发生错误
'----------------------------------------------------------
'Name 文件/文件夹绝对路径
'重命名文件/文件夹
