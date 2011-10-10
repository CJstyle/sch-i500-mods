.class public Lcom/android/mms/ui/SlideView$MovieView;
.super Landroid/widget/ImageView;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MovieView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    .line 924
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 926
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$1202(Lcom/android/mms/ui/SlideView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$1302(Lcom/android/mms/ui/SlideView;Z)Z

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1400(Lcom/android/mms/ui/SlideView;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$1502(Lcom/android/mms/ui/SlideView;Z)Z

    .line 934
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$1602(Lcom/android/mms/ui/SlideView;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;

    .line 935
    const/high16 v16, -0x100

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 936
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 937
    .local v11, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_1

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-wide v1, v11

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SlideView;->access$1702(Lcom/android/mms/ui/SlideView;J)J

    .line 940
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v16

    if-eqz v16, :cond_9

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Movie;->duration()I

    move-result v7

    .line 942
    .local v7, dur:I
    if-nez v7, :cond_2

    .line 943
    const/16 v7, 0x3e8

    .line 945
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1400(Lcom/android/mms/ui/SlideView;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$1902(Lcom/android/mms/ui/SlideView;Z)Z

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$1402(Lcom/android/mms/ui/SlideView;Z)Z

    .line 949
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2000(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v16

    sub-long v16, v11, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/SlideView;->access$1700(Lcom/android/mms/ui/SlideView;)J

    move-result-wide v18

    sub-long v16, v16, v18

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v18, v0

    rem-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v14, v0

    .line 950
    .local v14, relTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2100(Lcom/android/mms/ui/SlideView;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 953
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 954
    .local v6, config:Landroid/graphics/Bitmap$Config;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Movie;->width()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->height()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 955
    .local v13, padded:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 956
    .local v5, canvas2:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object v1, v5

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 958
    const/16 v16, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2200(Lcom/android/mms/ui/SlideView;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/SlideView;->access$2400(Lcom/android/mms/ui/SlideView;)I

    move-result v18

    add-int/lit8 v18, v18, 0x52

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$2302(Lcom/android/mms/ui/SlideView;I)I

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getWidth()I

    move-result v17

    const/16 v18, 0x32

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$2502(Lcom/android/mms/ui/SlideView;I)I

    .line 970
    :cond_4
    :goto_0
    const/4 v8, 0x0

    .line 971
    .local v8, movieDrawTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->height()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Movie;->height()I

    move-result v17

    sub-int v16, v16, v17

    div-int/lit8 v8, v16, 0x2

    .line 975
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Movie;->height()I

    move-result v9

    .line 976
    .local v9, movieHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Movie;->width()I

    move-result v10

    .line 978
    .local v10, movieWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v16

    if-lez v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2500(Lcom/android/mms/ui/SlideView;)I

    move-result v16

    if-lez v16, :cond_8

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v16

    move v0, v9

    move/from16 v1, v16

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2500(Lcom/android/mms/ui/SlideView;)I

    move-result v16

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_8

    .line 980
    :cond_6
    if-le v10, v9, :cond_7

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2500(Lcom/android/mms/ui/SlideView;)I

    move-result v16

    mul-int v16, v16, v9

    div-int v9, v16, v10

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2500(Lcom/android/mms/ui/SlideView;)I

    move-result v10

    .line 984
    :cond_7
    if-le v9, v10, :cond_8

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2500(Lcom/android/mms/ui/SlideView;)I

    move-result v16

    mul-int v16, v16, v10

    div-int v10, v16, v9

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2300(Lcom/android/mms/ui/SlideView;)I

    move-result v9

    .line 991
    :cond_8
    const/16 v16, 0x0

    move-object v0, v13

    move v1, v10

    move v2, v9

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 993
    .local v15, resized:Landroid/graphics/Bitmap;
    const/16 v16, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$2200(Lcom/android/mms/ui/SlideView;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 994
    const/high16 v16, 0x41c8

    move v0, v8

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 998
    :goto_1
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 999
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/SlideView;->access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->invalidate()V

    .line 1007
    .end local v5           #canvas2:Landroid/graphics/Canvas;
    .end local v6           #config:Landroid/graphics/Bitmap$Config;
    .end local v7           #dur:I
    .end local v8           #movieDrawTop:I
    .end local v9           #movieHeight:I
    .end local v10           #movieWidth:I
    .end local v13           #padded:Landroid/graphics/Bitmap;
    .end local v14           #relTime:I
    .end local v15           #resized:Landroid/graphics/Bitmap;
    :cond_9
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1008
    return-void

    .line 964
    .restart local v5       #canvas2:Landroid/graphics/Canvas;
    .restart local v6       #config:Landroid/graphics/Bitmap$Config;
    .restart local v7       #dur:I
    .restart local v13       #padded:Landroid/graphics/Bitmap;
    .restart local v14       #relTime:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/SlideView;->access$2400(Lcom/android/mms/ui/SlideView;)I

    move-result v18

    add-int/lit8 v18, v18, 0x52

    sub-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$2302(Lcom/android/mms/ui/SlideView;I)I

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideView$MovieView;->this$0:Lcom/android/mms/ui/SlideView;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    invoke-static/range {v16 .. v17}, Lcom/android/mms/ui/SlideView;->access$2502(Lcom/android/mms/ui/SlideView;I)I

    goto/16 :goto_0

    .line 996
    .restart local v8       #movieDrawTop:I
    .restart local v9       #movieHeight:I
    .restart local v10       #movieWidth:I
    .restart local v15       #resized:Landroid/graphics/Bitmap;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SlideView$MovieView;->getWidth()I

    move-result v16

    sub-int v16, v16, v10

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v8

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method
