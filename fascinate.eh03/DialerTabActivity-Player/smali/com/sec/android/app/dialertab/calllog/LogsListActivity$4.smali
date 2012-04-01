.class Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;
.super Ljava/lang/Object;
.source "LogsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 727
    .line 728
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 729
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 730
    const-string v1, "logtype"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 731
    if-eq v0, v3, :cond_2

    .line 732
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 733
    const v0, 0x7f060038

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/util/TextViewDT;

    .line 734
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/util/TextViewDT;->getExtendedData()Ljava/lang/String;

    move-result-object v0

    .line 736
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 737
    const-string v2, "NUMBER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 741
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$902(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->finish()V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->touchInAnimation:Z

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1002(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Z)Z

    .line 751
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getSweptPosition()I

    move-result v0

    .line 754
    if-eq p3, v0, :cond_0

    .line 755
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    const-string v1, "id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 763
    :cond_2
    const-string v0, "LogsListActivity"

    const-string v1, "Can\'t get index for column logtype"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
