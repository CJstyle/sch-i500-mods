.class Lcom/sec/android/app/camera/MenuHelper$2;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/sec/android/app/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->onDetailsClicked(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/os/Handler;Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/camera/MenuHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 35
    .parameter "u"
    .parameter "image"

    .prologue
    .line 371
    if-nez p2, :cond_0

    .line 568
    .end local p1
    :goto_0
    return-void

    .line 375
    .restart local p1
    :cond_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f030014

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 381
    .local v9, d:Landroid/view/View;
    const v28, 0x7f0a0076

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 383
    .local v21, imageView:Landroid/widget/ImageView;
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    const v28, 0x7f0a0077

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 387
    .local v26, textView:Landroid/widget/TextView;
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/camera/gallery/IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/MenuHelper;->getImageFileSize(Lcom/sec/android/app/camera/gallery/IImage;)J

    move-result-wide v22

    .line 390
    .local v22, length:J
    const-wide/16 v28, 0x0

    cmp-long v28, v22, v28

    if-gez v28, :cond_3

    const-string v28, ""

    move-object/from16 v24, v28

    .line 393
    .local v24, lengthString:Ljava/lang/String;
    :goto_1
    const v28, 0x7f0a0078

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const/4 v15, 0x0

    .line 398
    .local v15, dimensionWidth:I
    const/4 v14, 0x0

    .line 399
    .local v14, dimensionHeight:I
    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/camera/ImageManager;->isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 401
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/camera/gallery/IImage;->getWidth()I

    move-result v15

    .line 402
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/camera/gallery/IImage;->getHeight()I

    move-result v14

    .line 403
    const v28, 0x7f0a0087

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 405
    const v28, 0x7f0a0089

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 407
    const v28, 0x7f0a008b

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 409
    const v28, 0x7f0a008d

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 411
    const v28, 0x7f0a008f

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :goto_2
    const/16 v27, 0x0

    .line 518
    .local v27, value:Ljava/lang/String;
    if-lez v15, :cond_1

    if-lez v14, :cond_1

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f0700e5

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 524
    :cond_1
    if-eqz v27, :cond_7

    .line 525
    const v28, 0x7f0a007a

    move-object v0, v9

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/MenuHelper;->access$000(Landroid/view/View;Ljava/lang/String;I)V

    .line 530
    :goto_3
    const-string v27, ""

    .line 531
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v12

    .line 532
    .local v12, dateTaken:J
    const-wide/16 v28, 0x0

    cmp-long v28, v12, v28

    if-eqz v28, :cond_2

    .line 533
    new-instance v10, Ljava/util/Date;

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v28

    move-object v0, v10

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 534
    .local v10, date:Ljava/util/Date;
    new-instance v11, Ljava/text/SimpleDateFormat;

    invoke-direct {v11}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 535
    .local v11, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 537
    .end local v10           #date:Ljava/util/Date;
    .end local v11           #dateFormat:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 538
    const v28, 0x7f0a0092

    move-object v0, v9

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/MenuHelper;->access$000(Landroid/view/View;Ljava/lang/String;I)V

    .line 544
    :goto_4
    const-string v28, "image/jpeg"

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    move-object v1, v9

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/MenuHelper;->access$300(Lcom/sec/android/app/camera/gallery/IImage;Landroid/view/View;Landroid/app/Activity;)V

    .line 550
    :goto_5
    const v28, 0x7f0700eb

    new-instance v29, Lcom/sec/android/app/camera/MenuHelper$2$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/MenuHelper$2$1;-><init>(Lcom/sec/android/app/camera/MenuHelper$2;)V

    move-object v0, v7

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$handler:Landroid/os/Handler;

    move-object/from16 v28, v0

    new-instance v29, Lcom/sec/android/app/camera/MenuHelper$2$2;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/MenuHelper$2$2;-><init>(Lcom/sec/android/app/camera/MenuHelper$2;Landroid/app/AlertDialog$Builder;Landroid/view/View;)V

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 390
    .end local v12           #dateTaken:J
    .end local v14           #dimensionHeight:I
    .end local v15           #dimensionWidth:I
    .end local v24           #lengthString:Ljava/lang/String;
    .end local v27           #value:Ljava/lang/String;
    .restart local p1
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v24, v28

    goto/16 :goto_1

    .line 414
    .end local p1
    .restart local v14       #dimensionHeight:I
    .restart local v15       #dimensionWidth:I
    .restart local v24       #lengthString:Ljava/lang/String;
    :cond_4
    new-instance v25, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v25 .. v25}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 417
    .local v25, retriever:Landroid/media/MediaMetadataRetriever;
    const/16 v28, 0x1

    :try_start_0
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setMode(I)V

    .line 419
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 421
    const/16 v28, 0x14

    :try_start_1
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 425
    const/16 v28, 0x13

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v14

    .line 435
    :goto_6
    const/16 v28, 0x9

    :try_start_2
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 439
    .local v16, durationMs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/MenuHelper;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    .line 441
    .local v17, durationValue:Ljava/lang/String;
    const v28, 0x7f0a0088

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 451
    .end local v16           #durationMs:I
    .end local v17           #durationValue:Ljava/lang/String;
    :goto_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f0700e8

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x11

    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 457
    .local v20, frameRate:Ljava/lang/String;
    const v28, 0x7f0a008a

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 467
    .end local v20           #frameRate:Ljava/lang/String;
    :goto_8
    const/16 v28, 0x10

    :try_start_4
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 472
    .local v4, bitRate:J
    const-wide/32 v28, 0xf4240

    cmp-long v28, v4, v28

    if-gez v28, :cond_5

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f0700e9

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-wide/16 v31, 0x3e8

    div-long v31, v4, v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, bps:Ljava/lang/String;
    :goto_9
    const v28, 0x7f0a008c

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 491
    .end local v4           #bitRate:J
    .end local v6           #bps:Ljava/lang/String;
    :goto_a
    const/16 v28, 0x12

    :try_start_5
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v19

    .line 494
    .local v19, format:Ljava/lang/String;
    const v28, 0x7f0a008e

    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const/16 v28, 0xc

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 500
    .local v8, codec:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 501
    const v28, 0x7f0a0090

    move-object v0, v9

    move-object v1, v8

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/MenuHelper;->access$000(Landroid/view/View;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 510
    :goto_b
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 511
    .end local v8           #codec:Ljava/lang/String;
    .end local v19           #format:Ljava/lang/String;
    :catch_0
    move-exception v28

    goto/16 :goto_2

    .line 429
    :catch_1
    move-exception v28

    move-object/from16 v18, v28

    .line 430
    .local v18, e:Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    .line 431
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 444
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v28

    move-object/from16 v18, v28

    .line 445
    .restart local v18       #e:Ljava/lang/NumberFormatException;
    const v28, 0x7f0a0089

    :try_start_7
    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_7

    .line 506
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v28

    .line 510
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    .line 460
    :catch_4
    move-exception v28

    move-object/from16 v18, v28

    .line 461
    .restart local v18       #e:Ljava/lang/NumberFormatException;
    const v28, 0x7f0a0089

    :try_start_9
    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_8

    .line 509
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v28

    .line 510
    :try_start_a
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 509
    :goto_c
    throw v28

    .line 478
    .restart local v4       #bitRate:J
    :cond_5
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuHelper$2;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f0700ea

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-wide v0, v4

    long-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x412e848000000000L

    div-double v31, v31, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    move-result-object v6

    .restart local v6       #bps:Ljava/lang/String;
    goto/16 :goto_9

    .line 486
    .end local v4           #bitRate:J
    .end local v6           #bps:Ljava/lang/String;
    :catch_5
    move-exception v28

    move-object/from16 v18, v28

    .line 487
    .restart local v18       #e:Ljava/lang/NumberFormatException;
    const v28, 0x7f0a008b

    :try_start_c
    move-object v0, v9

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 503
    .end local v18           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #codec:Ljava/lang/String;
    .restart local v19       #format:Ljava/lang/String;
    :cond_6
    const v28, 0x7f0a008f

    move-object v0, v9

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/MenuHelper;->access$100(Landroid/view/View;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_b

    .line 527
    .end local v8           #codec:Ljava/lang/String;
    .end local v19           #format:Ljava/lang/String;
    .end local v25           #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v27       #value:Ljava/lang/String;
    :cond_7
    const v28, 0x7f0a0079

    move-object v0, v9

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/MenuHelper;->access$100(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 540
    .restart local v12       #dateTaken:J
    :cond_8
    const v28, 0x7f0a0091

    move-object v0, v9

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/MenuHelper;->access$100(Landroid/view/View;I)V

    goto/16 :goto_4

    .line 547
    :cond_9
    invoke-static {v9}, Lcom/sec/android/app/camera/MenuHelper;->access$400(Landroid/view/View;)V

    goto/16 :goto_5

    .line 511
    .end local v12           #dateTaken:J
    .end local v27           #value:Ljava/lang/String;
    .restart local v25       #retriever:Landroid/media/MediaMetadataRetriever;
    :catch_6
    move-exception v29

    goto :goto_c
.end method
