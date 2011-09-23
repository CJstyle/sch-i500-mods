.class Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;
.super Ljava/lang/Object;
.source "LogDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->showDeleteConfirmDlg(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->val$iOpIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 469
    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->val$iOpIndex:I

    packed-switch v3, :pswitch_data_0

    .line 495
    :goto_0
    return-void

    .line 471
    :pswitch_0
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-direct {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    new-array v4, v5, [Ljava/lang/Integer;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->val$iOpIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 472
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->showProgress()V

    goto :goto_0

    .line 476
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 477
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 478
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 480
    .local v1, viewid:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 481
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v3

    sub-int v4, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    .end local v1           #viewid:J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 487
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-direct {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V

    new-array v4, v5, [Ljava/lang/Integer;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->val$iOpIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 488
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->showProgress()V

    goto/16 :goto_0

    .line 491
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    const v4, 0x7f090046

    const/16 v5, 0x3e8

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
