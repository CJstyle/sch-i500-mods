.class Lcom/android/music/discplus/util/DiscPlusManager$2;
.super Ljava/lang/Object;
.source "DiscPlusManager.java"

# interfaces
.implements Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/util/DiscPlusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/util/DiscPlusManager;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/util/DiscPlusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public isContinued(Z)V
    .locals 18
    .parameter "continued"

    .prologue
    .line 229
    if-eqz p1, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/music/discplus/util/DiscPlusManager;->access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/android/music/discplus/util/DiscPlusManager;->access$202(Lcom/android/music/discplus/util/DiscPlusManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 238
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$300(Lcom/android/music/discplus/util/DiscPlusManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    .line 239
    .local v2, lDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    iget-object v7, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 240
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 241
    .local v8, cursorCount:I
    iget v6, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 242
    .local v6, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 246
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_3

    .line 247
    const/4 v13, 0x0

    .line 248
    .local v13, idStrTitle:Ljava/lang/String;
    const/4 v14, 0x0

    .line 249
    .local v14, idStrAlbum:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 250
    .local v11, resId:J
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/music/discplus/data/DiscPlusData;->getDiscPlusListInfo(ZILjava/lang/String;ILandroid/database/Cursor;I)Lcom/android/music/discplus/data/DiscPlusListInfoInData;

    move-result-object v16

    .line 252
    .local v16, discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    if-eqz v16, :cond_1

    .line 253
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mItemTitle:Ljava/lang/String;

    move-object v13, v0

    .line 254
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mArtistName:Ljava/lang/String;

    move-object v14, v0

    .line 255
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mResId:J

    move-wide v11, v0

    .line 258
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v9, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    const/4 v10, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;-><init>(Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 261
    .end local v2           #lDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    .end local v4           #i:I
    .end local v6           #type:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #cursorCount:I
    .end local v11           #resId:J
    .end local v13           #idStrTitle:Ljava/lang/String;
    .end local v14           #idStrAlbum:Ljava/lang/String;
    .end local v16           #discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->getCount()I

    move-result v15

    .line 262
    .local v15, count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v15, :cond_3

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    .line 264
    .local v17, info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;

    .line 265
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isUpdate:Z

    .line 262
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 268
    .end local v15           #count:I
    .end local v17           #info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$000(Lcom/android/music/discplus/util/DiscPlusManager;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$000(Lcom/android/music/discplus/util/DiscPlusManager;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->onDataChanged()V

    .line 269
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/music/discplus/util/DiscPlusManager;->access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z

    .line 270
    .end local v4           #i:I
    return-void
.end method

.method public start(I)V
    .locals 14
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 187
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/music/discplus/util/DiscPlusManager;->access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z

    .line 190
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_0

    .line 191
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lcom/android/music/discplus/util/DiscPlusManager;->access$202(Lcom/android/music/discplus/util/DiscPlusManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 193
    :cond_0
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->access$300(Lcom/android/music/discplus/util/DiscPlusManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 197
    .local v0, lDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    iget-object v5, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 198
    .local v5, cursor:Landroid/database/Cursor;
    iget v4, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 200
    .local v4, type:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 201
    const/4 v10, 0x0

    .line 202
    .local v10, idStrTitle:Ljava/lang/String;
    const/4 v11, 0x0

    .line 203
    .local v11, idStrAlbum:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .local v8, resId:J
    move v6, p1

    .line 204
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/discplus/data/DiscPlusData;->getDiscPlusListInfo(ZILjava/lang/String;ILandroid/database/Cursor;I)Lcom/android/music/discplus/data/DiscPlusListInfoInData;

    move-result-object v12

    .line 206
    .local v12, discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    if-eqz v12, :cond_1

    .line 207
    iget-object v10, v12, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mItemTitle:Ljava/lang/String;

    .line 208
    iget-object v11, v12, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mArtistName:Ljava/lang/String;

    .line 209
    iget-wide v8, v12, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mResId:J

    .line 212
    :cond_1
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v6, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    move-object v7, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;-><init>(Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v8           #resId:J
    .end local v10           #idStrTitle:Ljava/lang/String;
    .end local v11           #idStrAlbum:Ljava/lang/String;
    .end local v12           #discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    :cond_2
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$000(Lcom/android/music/discplus/util/DiscPlusManager;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$000(Lcom/android/music/discplus/util/DiscPlusManager;)Lcom/android/music/discplus/view/DiscView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/discplus/view/DiscView;->onDataChanged()V

    .line 225
    :cond_3
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v3, v1}, Lcom/android/music/discplus/util/DiscPlusManager;->access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z

    .line 226
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method
