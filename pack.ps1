$d = Date -format "yyyyMMdd"
$minDir = "min-"+$d
$gDir = "g-"+$d

md $minDir
copy TestM\bin\Release\*.dll $minDir
copy TestM\bin\Release\*.exe $minDir
copy TestM\bin\Release\*.config $minDir

md $gDir
copy TestG\bin\Release\*.dll $gDir
copy TestG\bin\Release\*.exe $gDir
copy TestG\bin\Release\*.config $gDir

.\7z a $minDir".zip" $minDir
.\7z a $gDir".zip" $gDir
