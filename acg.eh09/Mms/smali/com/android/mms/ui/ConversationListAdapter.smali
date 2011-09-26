.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/nemustech/tiffany/widget/TFAbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# instance fields
.field private final mFactory:Landroid/view/LayoutInflater;

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    .line 51
    return-void
.end method

.method public static isChecked(I)Z
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 102
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const-string v6, "Mms/ConversationListAdapter"

    .line 55
    instance-of v4, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v4, :cond_0

    .line 56
    const-string v4, "Mms/ConversationListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected bound view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    move-object v3, v0

    .line 61
    .local v3, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-static {p2, p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 63
    .local v2, conv:Lcom/android/mms/data/Conversation;
    new-instance v1, Lcom/android/mms/ui/ConversationListItemData;

    invoke-direct {v1, p2, v2}, Lcom/android/mms/ui/ConversationListItemData;-><init>(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V

    .line 64
    .local v1, ch:Lcom/android/mms/ui/ConversationListItemData;
    invoke-virtual {v3, p2, v1, p3}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/ui/ConversationListItemData;Landroid/database/Cursor;)V

    .line 66
    const-string v4, "Mms/ConversationListAdapter"

    const-string v4, "ConversationListAdapter.bind() complete"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 70
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    move-object v1, v0

    .line 71
    .local v1, headerView:Lcom/android/mms/ui/ConversationListItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    .line 72
    return-void
.end method

.method public setChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 109
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/mms/ui/ConversationListItem;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 111
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 113
    :cond_0
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 86
    return-void
.end method

.method public toggle(Landroid/view/View;II)V
    .locals 6
    .parameter "view"
    .parameter "position"
    .parameter "nTotalItem"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    if-nez p2, :cond_1

    .line 118
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 120
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_2

    .line 122
    invoke-virtual {p0, v2, v5}, Lcom/android/mms/ui/ConversationListAdapter;->setChecked(IZ)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2           #i:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 126
    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setChecked(IZ)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #i:I
    :cond_1
    invoke-static {p2}, Lcom/android/mms/ui/ConversationListAdapter;->isChecked(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_2
    invoke-virtual {p0, p2, v3}, Lcom/android/mms/ui/ConversationListAdapter;->setChecked(IZ)V

    .line 131
    :cond_2
    return-void

    :cond_3
    move v3, v4

    .line 129
    goto :goto_2
.end method
