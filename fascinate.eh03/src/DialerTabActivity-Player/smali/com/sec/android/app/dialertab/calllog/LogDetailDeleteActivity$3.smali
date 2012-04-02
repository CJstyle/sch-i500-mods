.class Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;
.super Ljava/lang/Object;
.source "LogDetailDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->showDeleteConfirmDlg(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

.field final synthetic val$iOpIndex:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->val$iOpIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1, v3}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$502(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;Z)Z

    .line 286
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->val$iOpIndex:I

    packed-switch v1, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 288
    :pswitch_0
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    new-array v2, v3, [Ljava/lang/Integer;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->val$iOpIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->showProgress()V

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    sub-int v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 300
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;-><init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V

    new-array v2, v3, [Ljava/lang/Integer;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->val$iOpIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 301
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->showProgress()V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    const v2, 0x7f090046

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
