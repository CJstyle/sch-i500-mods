.class public Lcom/android/mms/ui/SimMessageListAdapter;
.super Lcom/android/mms/ui/MessageListAdapter;
.source "SimMessageListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 0
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    .line 23
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 28
    instance-of v5, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v5, :cond_0

    .line 29
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 30
    .local v4, type:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 32
    .local v1, msgId:J
    invoke-virtual {p0, v4, v1, v2, p3}, Lcom/android/mms/ui/SimMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 34
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 37
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v3, p2, p3, v6}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 38
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 44
    .end local v1           #msgId:J
    .end local v3           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    return-void
.end method
