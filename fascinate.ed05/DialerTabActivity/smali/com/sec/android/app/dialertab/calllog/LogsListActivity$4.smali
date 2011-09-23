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
    .line 714
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "id"

    .prologue
    const/4 v8, -0x1

    .line 727
    const/4 v2, 0x0

    .line 728
    .local v2, iColumnIndex:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 729
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 730
    const-string v6, "logtype"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 731
    if-eq v2, v8, :cond_2

    .line 732
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$900(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 733
    const v6, 0x7f060038

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/dialertab/util/TextViewDT;

    .line 734
    .local v5, tv:Lcom/sec/android/app/dialertab/util/TextViewDT;
    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/util/TextViewDT;->getExtendedData()Ljava/lang/String;

    move-result-object v4

    .line 736
    .local v4, strNumber:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 737
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "NUMBER"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v6, v8, v3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 741
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v6, v8}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$902(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I

    .line 742
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->finish()V

    .line 767
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #strNumber:Ljava/lang/String;
    .end local v5           #tv:Lcom/sec/android/app/dialertab/util/TextViewDT;
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    sget-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->touchInAnimation:Z

    invoke-static {v6, v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1002(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Z)Z

    .line 751
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 752
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->getSweptPosition()I

    move-result v1

    .line 754
    .local v1, curSweptItem:I
    if-eq p3, v1, :cond_0

    .line 755
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    const-class v7, Lcom/sec/android/app/dialertab/calllog/DetailViewActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "id"

    invoke-virtual {v3, v6, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 758
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$4;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 763
    .end local v1           #curSweptItem:I
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const-string v6, "LogsListActivity"

    const-string v7, "Can\'t get index for column logtype"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
