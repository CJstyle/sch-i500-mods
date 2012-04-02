.class Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;
.super Ljava/lang/Object;
.source "FrequentDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->showDeleteConfirmDlg(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    iput p2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->val$iOpIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 617
    iget v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->val$iOpIndex:I

    packed-switch v2, :pswitch_data_0

    .line 642
    :goto_0
    return-void

    .line 619
    :pswitch_0
    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    new-array v3, v6, [Ljava/lang/Integer;

    iget v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->val$iOpIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 621
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// fake progress start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->showProgress(I)V

    goto :goto_0

    .line 626
    :pswitch_1
    const/4 v0, 0x0

    .line 627
    .local v0, checkedItem:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    add-int/lit8 v0, v0, 0x1

    .line 627
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    :cond_1
    if-eqz v0, :cond_2

    .line 634
    const-string v2, "Frequent Delete"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checked Item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v2, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-direct {v2, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V

    new-array v3, v6, [Ljava/lang/Integer;

    iget v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->val$iOpIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 636
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->showProgress(I)V

    goto/16 :goto_0

    .line 638
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    const v3, 0x7f090046

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
