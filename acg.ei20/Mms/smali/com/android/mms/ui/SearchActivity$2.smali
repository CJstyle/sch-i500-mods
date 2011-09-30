.class Lcom/android/mms/ui/SearchActivity$2;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p3, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 258
    if-nez p3, :cond_1

    .line 355
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 261
    .restart local p1
    :cond_1
    const-string v2, "thread_id"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 262
    .local v9, threadIdPos:I
    const-string v2, "address"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 263
    .local v7, addressPos:I
    const-string v2, "body"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 264
    .local v8, bodyPos:I
    const-string v2, "_id"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 266
    .local v10, rowidPos:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 267
    .local v11, cursorCount:I
    const/4 v14, 0x0

    .line 268
    .local v14, titleString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_3

    .line 269
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 275
    :goto_1
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    const-string v2, "_id"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x1

    aput-object v14, v5, v6

    invoke-virtual {v3, v4, v11, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v12, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    new-instance v2, Lcom/android/mms/ui/SearchActivity$2$1;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const/4 v6, 0x0

    move-object v3, p0

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/mms/ui/SearchActivity$2$1;-><init>(Lcom/android/mms/ui/SearchActivity$2;Landroid/content/Context;Landroid/database/Cursor;ZIIII)V

    invoke-virtual {v12, v2}, Lcom/android/mms/ui/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 342
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 343
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    .line 346
    if-lez v11, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/mms/MmsApp;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v12

    .line 348
    .local v12, recent:Landroid/provider/SearchRecentSuggestions;
    if-eqz v12, :cond_0

    .line 349
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v4, 0x7f090131

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .end local v7           #addressPos:I
    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v7, v7, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/mms/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    .end local v12           #recent:Landroid/provider/SearchRecentSuggestions;
    .restart local v7       #addressPos:I
    .restart local p1
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v14, v2, Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;

    goto/16 :goto_1

    .line 278
    :catch_0
    move-exception v2

    move-object v13, v2

    .line 279
    .local v13, sqe:Landroid/database/sqlite/SQLiteException;
    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v7           #addressPos:I
    .end local v8           #bodyPos:I
    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v14, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
