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
    .line 166
    iput-object p1, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public isContinued(Z)V
    .locals 18
    .parameter "continued"

    .prologue
    .line 129
    if-eqz p1, :cond_2

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/music/discplus/util/DiscPlusManager;->access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/android/music/discplus/util/DiscPlusManager;->access$202(Lcom/android/music/discplus/util/DiscPlusManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 135
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

    .line 136
    .local v2, lDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    iget-object v7, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 137
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 138
    .local v8, cursorCount:I
    iget v6, v2, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 139
    .local v6, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 140
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_3

    .line 141
    const/4 v13, 0x0

    .line 142
    .local v13, idStrTitle:Ljava/lang/String;
    const/4 v14, 0x0

    .line 143
    .local v14, idStrAlbum:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 144
    .local v11, resId:J
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/music/discplus/data/DiscPlusData;->getDiscPlusListInfo(ZILjava/lang/String;ILandroid/database/Cursor;I)Lcom/android/music/discplus/data/DiscPlusListInfoInData;

    move-result-object v16

    .line 146
    .local v16, discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    if-eqz v16, :cond_1

    .line 147
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mItemTitle:Ljava/lang/String;

    move-object v13, v0

    .line 148
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mArtistName:Ljava/lang/String;

    move-object v14, v0

    .line 149
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mResId:J

    move-wide v11, v0

    .line 151
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

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
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

    .line 155
    .local v15, count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v15, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    .line 157
    .local v17, info:Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->image:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;->isUpdate:Z

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 161
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

    .line 162
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/music/discplus/util/DiscPlusManager;->access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z

    .line 163
    .end local v4           #i:I
    return-void
.end method

.method public start(I)V
    .locals 14
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 102
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/music/discplus/util/DiscPlusManager;->access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z

    .line 103
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_0

    .line 104
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lcom/android/music/discplus/util/DiscPlusManager;->access$202(Lcom/android/music/discplus/util/DiscPlusManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 106
    :cond_0
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->access$300(Lcom/android/music/discplus/util/DiscPlusManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/discplus/data/DiscPlusData;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    .line 108
    .local v0, lDiscPlusData:Lcom/android/music/discplus/data/DiscPlusData;
    iget-object v5, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 109
    .local v5, cursor:Landroid/database/Cursor;
    iget v4, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 111
    .local v4, type:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 112
    const/4 v10, 0x0

    .line 113
    .local v10, idStrTitle:Ljava/lang/String;
    const/4 v11, 0x0

    .line 114
    .local v11, idStrAlbum:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .local v8, resId:J
    move v6, p1

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/discplus/data/DiscPlusData;->getDiscPlusListInfo(ZILjava/lang/String;ILandroid/database/Cursor;I)Lcom/android/music/discplus/data/DiscPlusListInfoInData;

    move-result-object v12

    .line 117
    .local v12, discIndexCycleCursorData:Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    if-eqz v12, :cond_1

    .line 118
    iget-object v10, v12, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mItemTitle:Ljava/lang/String;

    .line 119
    iget-object v11, v12, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mArtistName:Ljava/lang/String;

    .line 120
    iget-wide v8, v12, Lcom/android/music/discplus/data/DiscPlusListInfoInData;->mResId:J

    .line 122
    :cond_1
    iget-object v6, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v6}, Lcom/android/music/discplus/util/DiscPlusManager;->access$200(Lcom/android/music/discplus/util/DiscPlusManager;)Ljava/util/ArrayList;

    move-result-object v13

    new-instance v6, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;

    move-object v7, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/music/discplus/util/DiscPlusManager$DiscInfo;-><init>(Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
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

    .line 125
    :cond_3
    iget-object v3, p0, Lcom/android/music/discplus/util/DiscPlusManager$2;->this$0:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-static {v3, v1}, Lcom/android/music/discplus/util/DiscPlusManager;->access$102(Lcom/android/music/discplus/util/DiscPlusManager;Z)Z

    .line 126
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method
