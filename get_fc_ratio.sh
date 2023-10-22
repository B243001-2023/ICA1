cd ~/ICA1

awk -F '    ' '{if($11>0 && $12>0 && $13>0 && $14>0 && $15>0) print $1/$11 "\t" $2/$12 "\t" $3/$13 "\t" $4/$14 "\t" $5/$15; else print 0;}' ~/ICA1/fold_change > ~/ICA1/fold_changes/Clone1_WT

awk -F '    ' '{if($11>0 && $12>0 && $13>0 && $14>0 && $15>0) print $6/$11 "\t" $7/$12 "\t" $8/$13 "\t" $9/$14 "\t" $10/$15; else print 0;}' ~/ICA1/fold_change > ~/ICA1/fold_changes/Clone2_WT

awk -F '    ' '{if($3>0 && $5>0 && $8>0 && $10>0) print $2/$3 "\t" $4/$5 "\t" $7$8 "\t" $9/$10; else print 0;}' ~/ICA1/fold_change > ~/ICA1/fold_changes/Treat_Clone12

awk -F '    ' '{if($1>0 && $6>0 && $11>0) print $2/$1 "\t" $4/$1 "\t" $7/$6 "\t" $9/$6 "\t" $12/$11 "\t" $14/$11; else print 0;}' ~/ICA1/fold_change > ~/ICA1/fold_changes/Treat_Time
#awk -F '    ' "{if($11!=0 && $12!=0 && $13!=0 && $14!=0 && $15!=0) print($6/$11,'\t',$7/$12,'\t',$8/$13,'\t',$9/$14,'\t',$10/$15); else print 0;}" fold_change > ~/ICA1/fold_changes/Clone2_WT

#awk -F '    ' "{if($3!=0 && $5!=0) print($2/$3,'\t',$4/$5); else print 0;}" fold_change > ~/ICA1/fold_changes/Treat_Clone1

#awk -F '    ' "{if($8!=0 && $10!=0) print($7/$8,'\t',$9/$10); else print 0;}" fold_change > ~/ICA1/fold_changes/Treat_Clone2

#awk -F '    ' "{if($13!=0 && $15!=0) print($12/$13,'\t',$14/$15); else print 0;}" fold_change > ~/ICA1/fold_changes/Treat_WT

#awk -F '    ' "{if($2!=0 && $3!=0) print($4/$2,'\t',$5/$3); else print 0;}" fold_change > ~/ICA1/fold_changes/Clone1_Time

#awk -F '    ' "{if($7!=0 && $8!=0) print($9/$7,'\t',$10/$8); else print 0;}" fold_change > ~/ICA1/fold_changes/Clone2_Time

#awk -F '    ' "{if($12!=0 && $13!=0) print($14/$12,'\t',$15/$13); else print 0;}" fold_change > ~/ICA1/fold_changes/WT_Time
