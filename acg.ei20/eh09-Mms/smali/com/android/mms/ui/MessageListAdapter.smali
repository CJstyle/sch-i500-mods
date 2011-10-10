.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAddressToMessageListItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/ui/MessageListItem;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private final mListView:Landroid/widget/ListView;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-string v6, "read"

    const-string v5, "pri"

    const-string v4, "locked"

    const-string v3, "date"

    .line 75
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v6, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pri"

    aput-object v5, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "date"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v2, "read"

    aput-object v6, v0, v1

    const/16 v1, 0x10

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "locked"

    aput-object v4, v0, v1

    const/16 v1, 0x16

    const-string v2, "pri"

    aput-object v5, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mAddressToMessageListItems:Ljava/util/HashMap;

    .line 148
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 149
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 154
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 162
    if-eqz p4, :cond_0

    .line 163
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 2
    .parameter "type"
    .parameter "id"

    .prologue
    .line 248
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    neg-long v0, p1

    .line 251
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, p1

    goto :goto_0
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 171
    instance-of v5, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v5, :cond_0

    .line 172
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, type:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 175
    .local v1, msgId:J
    invoke-virtual {p0, v4, v1, v2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    .line 176
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v3, :cond_0

    .line 179
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v5, v0

    invoke-virtual {v5, v3, p2, p3}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 180
    check-cast p1, Lcom/android/mms/ui/MessageListItem;

    .end local p1
    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 183
    .end local v1           #msgId:J
    .end local v3           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 8
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/MessageItem;

    .line 228
    .local v7, item:Lcom/android/mms/ui/MessageItem;
    if-nez v7, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    :goto_0
    return-object v0

    .line 232
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v0, v7

    .line 233
    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v6, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "Mms/MessageListAdapter"

    invoke-virtual {v6}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v1

    move-object v6, v1

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v7       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v7

    .end local v7           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public isChecked(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/mms/ui/DeleteThreadActivity;

    if-eqz v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/DeleteThreadActivity;

    .line 261
    .local v0, delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    iget-object v1, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    .line 266
    .end local v0           #delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 204
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 210
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 219
    :cond_0
    return-void
.end method

.method public setChecked(IZ)V
    .locals 2
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/mms/ui/DeleteThreadActivity;

    if-eqz v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/mms/ui/DeleteThreadActivity;

    .line 272
    .local v0, delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    iget-object v1, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, v0, Lcom/android/mms/ui/DeleteThreadActivity;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 274
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 277
    .end local v0           #delActivity:Lcom/android/mms/ui/DeleteThreadActivity;
    :cond_0
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 192
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

    .line 280
    if-nez p2, :cond_1

    .line 281
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 283
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_2

    .line 285
    invoke-virtual {p0, v2, v5}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(IZ)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v2           #i:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 288
    invoke-virtual {p0, v2, v4}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(IZ)V

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v1           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #i:I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->isChecked(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    :goto_2
    invoke-virtual {p0, p2, v3}, Lcom/android/mms/ui/MessageListAdapter;->setChecked(IZ)V

    .line 293
    :cond_2
    return-void

    :cond_3
    move v3, v4

    .line 291
    goto :goto_2
.end method
