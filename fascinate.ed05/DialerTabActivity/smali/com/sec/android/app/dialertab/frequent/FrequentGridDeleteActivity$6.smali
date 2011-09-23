.class Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;
.super Ljava/lang/Object;
.source "FrequentGridDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->showDeleteConfirmDlg(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    iput p2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->val$iOpIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 631
    iget v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->val$iOpIndex:I

    packed-switch v5, :pswitch_data_0

    .line 681
    :goto_0
    return-void

    .line 633
    :pswitch_0
    new-instance v5, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-direct {v5, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    new-array v6, v9, [Ljava/lang/Integer;

    iget v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->val$iOpIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 634
    const/4 v1, 0x0

    .line 635
    .local v1, firstCnt:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 636
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v1

    .line 638
    :cond_0
    const/4 v4, 0x0

    .line 639
    .local v4, secondCnt:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 640
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v4

    .line 642
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    add-int v6, v1, v4

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->showProgress(I)V

    goto :goto_0

    .line 647
    .end local v1           #firstCnt:I
    .end local v4           #secondCnt:I
    :pswitch_1
    const/4 v0, 0x0

    .line 648
    .local v0, checkedItem:I
    const/4 v1, 0x0

    .line 649
    .restart local v1       #firstCnt:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 650
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v1

    .line 652
    :cond_2
    const/4 v4, 0x0

    .line 653
    .restart local v4       #secondCnt:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 654
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v4

    .line 657
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 658
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 659
    .local v2, giv:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 660
    add-int/lit8 v0, v0, 0x1

    .line 657
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 663
    .end local v2           #giv:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_7

    .line 664
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/GridView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 665
    .restart local v2       #giv:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 666
    add-int/lit8 v0, v0, 0x1

    .line 663
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 670
    .end local v2           #giv:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_7
    if-eqz v0, :cond_8

    .line 671
    const-string v5, "Frequent Delete"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checked Item count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    new-instance v5, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-direct {v5, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V

    new-array v6, v9, [Ljava/lang/Integer;

    iget v7, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->val$iOpIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 673
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->showProgress(I)V

    goto/16 :goto_0

    .line 677
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$6;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    const v6, 0x7f090046

    const/16 v7, 0x3e8

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
