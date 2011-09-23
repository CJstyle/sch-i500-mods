.class Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;
.super Ljava/lang/Object;
.source "LogsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 772
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter "av"
    .parameter "v"
    .parameter "index"
    .parameter "arg3"

    .prologue
    .line 775
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v3, v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1102(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 776
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1100(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    const/4 v1, 0x0

    .line 778
    .local v1, tvd:Lcom/sec/android/app/dialertab/util/TextViewDT;
    const v2, 0x7f060038

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tvd:Lcom/sec/android/app/dialertab/util/TextViewDT;
    check-cast v1, Lcom/sec/android/app/dialertab/util/TextViewDT;

    .line 779
    .restart local v1       #tvd:Lcom/sec/android/app/dialertab/util/TextViewDT;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/util/TextViewDT;->getExtendedData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1202(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    const v2, 0x7f060034

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 781
    .local v0, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1302(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 782
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v2, p3}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$1402(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I

    .line 783
    const/4 v2, 0x0

    .line 785
    .end local v0           #tv:Landroid/widget/TextView;
    .end local v1           #tvd:Lcom/sec/android/app/dialertab/util/TextViewDT;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
