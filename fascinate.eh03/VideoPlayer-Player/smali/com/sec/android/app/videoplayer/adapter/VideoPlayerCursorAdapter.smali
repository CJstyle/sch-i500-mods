.class public Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "VideoPlayerCursorAdapter.java"


# instance fields
.field protected mColumns:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultBmp:Landroid/graphics/Bitmap;

.field private mListType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter "context"
    .parameter "listType"
    .parameter "layout"
    .parameter "cursor"
    .parameter "columns"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 37
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 29
    iput-object v6, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    .line 31
    iput-object v6, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mDefaultBmp:Landroid/graphics/Bitmap;

    .line 39
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput p2, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    .line 41
    iput-object p5, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mColumns:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020096

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mDefaultBmp:Landroid/graphics/Bitmap;

    .line 43
    return-void
.end method

.method private getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "filePath"

    .prologue
    const/16 v8, 0x69

    const/16 v7, 0x4e

    const/4 v6, 0x0

    .line 182
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 184
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 186
    .local v4, thumbnailDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 188
    invoke-static {p1}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->getDefaultBmp()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 198
    .local v3, tempBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 200
    .local v2, overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 202
    if-eqz v4, :cond_2

    .line 204
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 205
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    :cond_2
    return-object v3
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 12
    .parameter "timeMs"

    .prologue
    .line 167
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 168
    .local v6, totalSeconds:J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 169
    .local v4, seconds:J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 170
    .local v2, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 171
    .local v0, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 173
    const-string v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    :goto_0
    return-object v8

    :cond_0
    const-string v8, "%02d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 47
    if-eqz p3, :cond_0

    .line 49
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    const-wide/16 v15, 0x0

    .local v15, videoId:J
    const-wide/16 v3, 0x0

    .local v3, durationTime:J
    const-wide/16 v10, 0x0

    .line 56
    .local v10, remainTime:J
    const/16 v17, 0x0

    .line 57
    .local v17, videoTitle:Ljava/lang/String;
    const/4 v7, 0x0

    .line 61
    .local v7, filePath:Ljava/lang/String;
    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 62
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 63
    const/16 v18, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 64
    const/16 v18, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 65
    const/16 v18, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 73
    const v18, 0x7f0a0016

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 74
    .local v13, thumbnailView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    const v18, 0x7f0a0019

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 77
    .local v14, titleView:Landroid/widget/TextView;
    sget-object v18, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v18, 0x7f0a001c

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 81
    .local v5, durationView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->stringForTime(J)Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v18, 0x7f0a001b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 84
    .local v12, remainTimeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->stringForTime(J)Ljava/lang/String;

    move-result-object v18

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 88
    const v18, 0x7f0a001a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 90
    .local v9, playingIcon:Landroid/widget/ImageView;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getID()J

    move-result-wide v18

    cmp-long v18, v18, v15

    if-nez v18, :cond_1

    .line 92
    const v18, 0x7f020097

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 94
    const/16 v18, 0x0

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 67
    .end local v5           #durationView:Landroid/widget/TextView;
    .end local v9           #playingIcon:Landroid/widget/ImageView;
    .end local v12           #remainTimeView:Landroid/widget/TextView;
    .end local v13           #thumbnailView:Landroid/widget/ImageView;
    .end local v14           #titleView:Landroid/widget/TextView;
    :catch_0
    move-exception v18

    move-object/from16 v6, v18

    .line 69
    .local v6, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v18, "VideoPlayerCursorAdapter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CursorIndexOutOfBoundsException occured 1  :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 98
    .end local v6           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v5       #durationView:Landroid/widget/TextView;
    .restart local v9       #playingIcon:Landroid/widget/ImageView;
    .restart local v12       #remainTimeView:Landroid/widget/TextView;
    .restart local v13       #thumbnailView:Landroid/widget/ImageView;
    .restart local v14       #titleView:Landroid/widget/TextView;
    :cond_1
    const/16 v18, 0x0

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 99
    const/16 v18, 0x8

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 102
    .end local v9           #playingIcon:Landroid/widget/ImageView;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 104
    :cond_3
    const v18, 0x7f0a001d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 106
    .local v8, listcheckBox:Landroid/widget/CheckBox;
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 107
    const/16 v18, 0x0

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 111
    :cond_4
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->checkIdExist_SelectedIdList(J)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 112
    const/16 v18, 0x1

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 114
    :cond_5
    const/16 v18, 0x0

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDefaultBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->mDefaultBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method
