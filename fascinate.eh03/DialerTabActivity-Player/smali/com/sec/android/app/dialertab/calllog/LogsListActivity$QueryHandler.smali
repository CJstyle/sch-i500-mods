.class final Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LogsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsListActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResover:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "cr"

    .prologue
    const/4 v0, 0x0

    .line 189
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    .line 190
    invoke-direct {p0, p3}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 186
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->mContext:Landroid/content/Context;

    .line 187
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->mContentResover:Landroid/content/ContentResolver;

    .line 191
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->mContext:Landroid/content/Context;

    .line 192
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 193
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 197
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    .line 199
    .local v0, activity:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->getIsPause()Z

    move-result v6

    if-nez v6, :cond_4

    .line 200
    const-string v6, "LogsListActivity"

    const-string v7, "onQueryComplete"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$000(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    move-result-object v2

    .line 202
    .local v2, callsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
    invoke-virtual {v2, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->setLoading(Z)V

    .line 204
    if-eqz p3, :cond_0

    .line 205
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$102(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;I)I

    .line 206
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 207
    .local v1, callLogCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;
    invoke-virtual {v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 208
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    const v7, 0x7f0600d8

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 209
    .local v3, lv:Landroid/widget/ListView;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    const v7, 0x7f0600d9

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 210
    .local v4, ly:Landroid/widget/LinearLayout;
    if-eqz p3, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)I

    move-result v6

    if-lez v6, :cond_3

    .line 211
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 212
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    .end local v1           #callLogCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;
    .end local v3           #lv:Landroid/widget/ListView;
    .end local v4           #ly:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Landroid/os/Parcelable;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 224
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Landroid/os/Parcelable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 225
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 226
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->requestFocus()Z

    .line 228
    :cond_1
    invoke-static {v0, v8}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$402(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Z)Z

    .line 229
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->access$202(Lcom/sec/android/app/dialertab/calllog/LogsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 236
    .end local v2           #callsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
    :cond_2
    :goto_1
    return-void

    .line 214
    .restart local v1       #callLogCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;
    .restart local v2       #callsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
    .restart local v3       #lv:Landroid/widget/ListView;
    .restart local v4       #ly:Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 215
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsListActivity$QueryHandler;->this$0:Lcom/sec/android/app/dialertab/calllog/LogsListActivity;

    const v7, 0x7f0600da

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dialertab/calllog/LogsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 217
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    const v6, 0x7f09002c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 233
    .end local v1           #callLogCursor:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;
    .end local v2           #callsAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
    .end local v3           #lv:Landroid/widget/ListView;
    .end local v4           #ly:Landroid/widget/LinearLayout;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_4
    if-eqz p3, :cond_2

    .line 234
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
