.class Lcom/sec/android/app/camera/CropImage$7;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mImageMatrix:Landroid/graphics/Matrix;

.field mScale:F

.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;)V
    .locals 1
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CropImage$7;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage$7;->makeDefault()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CropImage$7;Landroid/graphics/RectF;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage$7;->handleBlinkFace(Landroid/graphics/RectF;)V

    return-void
.end method

.method private handleBlinkFace(Landroid/graphics/RectF;)V
    .locals 21
    .parameter "rect"

    .prologue
    .line 556
    new-instance v5, Lcom/sec/android/app/camera/HighlightView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v6, v0

    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sec/android/app/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 557
    .local v5, hv:Lcom/sec/android/app/camera/HighlightView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v6, v0

    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v7, v0

    invoke-static {v7}, Lcom/sec/android/app/camera/CropImage;->access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v8, v0

    invoke-static {v8}, Lcom/sec/android/app/camera/CropImage;->access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v17

    .line 559
    .local v17, img:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v17, :cond_0

    .line 560
    const-string v6, "CropImage"

    const-string v7, "handleBlinkFace : img == null is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :goto_0
    return-void

    .line 564
    :cond_0
    const/4 v12, 0x0

    .line 565
    .local v12, exif:Landroid/media/ExifInterface;
    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v13

    .line 568
    .local v13, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface;

    .end local v12           #exif:Landroid/media/ExifInterface;
    invoke-direct {v12, v13}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .restart local v12       #exif:Landroid/media/ExifInterface;
    :goto_1
    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/gallery/IImage;->getWidth()I

    move-result v18

    .line 575
    .local v18, w:I
    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/camera/gallery/IImage;->getHeight()I

    move-result v14

    .line 577
    .local v14, h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v6, v0

    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 578
    .local v20, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v6, v0

    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 580
    .local v16, height:I
    const/16 v19, 0x0

    .line 581
    .local v19, w_ratio:F
    const/4 v15, 0x0

    .line 583
    .local v15, h_ratio:F
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Orientation"

    const/4 v9, 0x1

    invoke-virtual {v12, v8, v9}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-eqz v12, :cond_1

    .line 585
    const-string v6, "Orientation"

    const/4 v7, 0x1

    invoke-virtual {v12, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 594
    :pswitch_0
    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    div-float v19, v6, v7

    .line 595
    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v14

    div-float v15, v6, v7

    .line 609
    :goto_2
    const-string v6, "CropImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleBlinkFace: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    new-instance v7, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v7

    move v1, v6

    move v2, v8

    move/from16 v3, v20

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 612
    .local v7, imageRect:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    mul-float v6, v6, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v9, v0

    mul-float/2addr v9, v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v10, v0

    mul-float v10, v10, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v11, v0

    mul-float/2addr v11, v15

    invoke-direct {v8, v6, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 617
    .local v8, blinkRect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v9, v0

    iget-boolean v9, v9, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v10, v0

    invoke-static {v10}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v10, v0

    invoke-static {v10}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    :goto_3
    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 620
    sget-object v6, Lcom/sec/android/app/camera/HighlightView$ModifyMode;->None:Lcom/sec/android/app/camera/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/HighlightView;->setMode(Lcom/sec/android/app/camera/HighlightView$ModifyMode;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    move-object v6, v0

    invoke-static {v6}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/android/app/camera/CropImageView;->add(Lcom/sec/android/app/camera/HighlightView;)V

    goto/16 :goto_0

    .line 569
    .end local v7           #imageRect:Landroid/graphics/Rect;
    .end local v8           #blinkRect:Landroid/graphics/RectF;
    .end local v12           #exif:Landroid/media/ExifInterface;
    .end local v14           #h:I
    .end local v15           #h_ratio:F
    .end local v16           #height:I
    .end local v18           #w:I
    .end local v19           #w_ratio:F
    .end local v20           #width:I
    :catch_0
    move-exception v6

    move-object v11, v6

    .line 570
    .local v11, e:Ljava/io/IOException;
    const-string v6, "CropImage"

    const-string v7, "handleBlinkFace : failed to load exif"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v12, 0x0

    .restart local v12       #exif:Landroid/media/ExifInterface;
    goto/16 :goto_1

    .line 588
    .end local v11           #e:Ljava/io/IOException;
    .restart local v14       #h:I
    .restart local v15       #h_ratio:F
    .restart local v16       #height:I
    .restart local v18       #w:I
    .restart local v19       #w_ratio:F
    .restart local v20       #width:I
    :pswitch_1
    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v14

    div-float v19, v6, v7

    .line 589
    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    div-float v15, v6, v7

    .line 590
    goto/16 :goto_2

    .line 600
    :cond_1
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 601
    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v14

    div-float v19, v6, v7

    .line 602
    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    div-float v15, v6, v7

    goto/16 :goto_2

    .line 604
    :cond_2
    move/from16 v0, v20

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    div-float v19, v6, v7

    .line 605
    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    int-to-float v7, v14

    div-float v15, v6, v7

    goto/16 :goto_2

    .line 617
    .restart local v7       #imageRect:Landroid/graphics/Rect;
    .restart local v8       #blinkRect:Landroid/graphics/RectF;
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeDefault()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 671
    new-instance v0, Lcom/sec/android/app/camera/HighlightView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/HighlightView;-><init>(Landroid/view/View;)V

    .line 673
    .local v0, hv:Lcom/sec/android/app/camera/HighlightView;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 674
    .local v9, width:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 676
    .local v8, height:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13, v13, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 679
    .local v2, imageRect:Landroid/graphics/Rect;
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v7, v1, 0x5

    .line 680
    .local v7, cropWidth:I
    move v6, v7

    .line 682
    .local v6, cropHeight:I
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_1

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v7

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    div-int v6, v1, v4

    .line 690
    :cond_0
    :goto_0
    sub-int v1, v9, v7

    div-int/lit8 v10, v1, 0x2

    .line 691
    .local v10, x:I
    sub-int v1, v8, v6

    div-int/lit8 v11, v1, 0x2

    .line 693
    .local v11, y:I
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v4, v11

    add-int v5, v10, v7

    int-to-float v5, v5

    add-int v12, v11, v6

    int-to-float v12, v12

    invoke-direct {v3, v1, v4, v5, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 694
    .local v3, cropRect:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    iget-boolean v4, v4, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    iget-object v5, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v5}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v5}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/HighlightView;->setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    .line 696
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CropImageView;->add(Lcom/sec/android/app/camera/HighlightView;)V

    .line 697
    return-void

    .line 686
    .end local v3           #cropRect:Landroid/graphics/RectF;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/CropImage;->access$700(Lcom/sec/android/app/camera/CropImage;)I

    move-result v1

    mul-int/2addr v1, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v4}, Lcom/sec/android/app/camera/CropImage;->access$800(Lcom/sec/android/app/camera/CropImage;)I

    move-result v4

    div-int v7, v1, v4

    goto :goto_0

    .restart local v3       #cropRect:Landroid/graphics/RectF;
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_2
    move v5, v13

    .line 694
    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mImageMatrix:Landroid/graphics/Matrix;

    .line 720
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/CropImage$7;->mScale:F

    .line 731
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage$7;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-static {v0}, Lcom/sec/android/app/camera/CropImage;->access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/CropImage$7$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CropImage$7$1;-><init>(Lcom/sec/android/app/camera/CropImage$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    return-void
.end method
