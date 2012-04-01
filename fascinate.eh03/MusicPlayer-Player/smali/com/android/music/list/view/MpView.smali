.class public Lcom/android/music/list/view/MpView;
.super Landroid/view/View;
.source "MpView.java"


# static fields
.field private static mSync:Ljava/lang/String;

.field private static playFocusIndex:Ljava/lang/String;


# instance fields
.field private PressEnable:Z

.field private bg1:Landroid/graphics/Bitmap;

.field private bg2:Landroid/graphics/Bitmap;

.field private icon:I

.field private maxProgressValue:J

.field private myNum:Ljava/lang/String;

.field private progressBarStartX:I

.field private progressValue:J

.field private rc1:Landroid/graphics/Rect;

.field private rc2:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/list/view/MpView;->playFocusIndex:Ljava/lang/String;

    .line 26
    const-string v0, "Sync"

    sput-object v0, Lcom/android/music/list/view/MpView;->mSync:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput v1, p0, Lcom/android/music/list/view/MpView;->progressBarStartX:I

    .line 19
    iput-object v2, p0, Lcom/android/music/list/view/MpView;->bg1:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/music/list/view/MpView;->bg2:Landroid/graphics/Bitmap;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/view/MpView;->rc1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/view/MpView;->rc2:Landroid/graphics/Rect;

    .line 21
    iput-object v2, p0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    .line 22
    iput-wide v3, p0, Lcom/android/music/list/view/MpView;->progressValue:J

    iput-wide v3, p0, Lcom/android/music/list/view/MpView;->maxProgressValue:J

    .line 23
    iput v1, p0, Lcom/android/music/list/view/MpView;->icon:I

    .line 25
    iput-boolean v1, p0, Lcom/android/music/list/view/MpView;->PressEnable:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v1, p0, Lcom/android/music/list/view/MpView;->progressBarStartX:I

    .line 19
    iput-object v2, p0, Lcom/android/music/list/view/MpView;->bg1:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/music/list/view/MpView;->bg2:Landroid/graphics/Bitmap;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/view/MpView;->rc1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/view/MpView;->rc2:Landroid/graphics/Rect;

    .line 21
    iput-object v2, p0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    .line 22
    iput-wide v3, p0, Lcom/android/music/list/view/MpView;->progressValue:J

    iput-wide v3, p0, Lcom/android/music/list/view/MpView;->maxProgressValue:J

    .line 23
    iput v1, p0, Lcom/android/music/list/view/MpView;->icon:I

    .line 25
    iput-boolean v1, p0, Lcom/android/music/list/view/MpView;->PressEnable:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v1, p0, Lcom/android/music/list/view/MpView;->progressBarStartX:I

    .line 19
    iput-object v2, p0, Lcom/android/music/list/view/MpView;->bg1:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/music/list/view/MpView;->bg2:Landroid/graphics/Bitmap;

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/view/MpView;->rc1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/music/list/view/MpView;->rc2:Landroid/graphics/Rect;

    .line 21
    iput-object v2, p0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    .line 22
    iput-wide v3, p0, Lcom/android/music/list/view/MpView;->progressValue:J

    iput-wide v3, p0, Lcom/android/music/list/view/MpView;->maxProgressValue:J

    .line 23
    iput v1, p0, Lcom/android/music/list/view/MpView;->icon:I

    .line 25
    iput-boolean v1, p0, Lcom/android/music/list/view/MpView;->PressEnable:Z

    .line 31
    return-void
.end method

.method public static SetNoIndex()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/android/music/list/view/MpView;->mSync:Ljava/lang/String;

    monitor-enter v0

    .line 62
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/music/list/view/MpView;->playFocusIndex:Ljava/lang/String;

    .line 63
    monitor-exit v0

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public SetBackImageBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 1
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "h"
    .parameter "t"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/music/list/view/MpView;->bg2:Landroid/graphics/Bitmap;

    .line 102
    iget-object v0, p0, Lcom/android/music/list/view/MpView;->rc2:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 103
    iget-object v0, p0, Lcom/android/music/list/view/MpView;->rc2:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 104
    iget-object v0, p0, Lcom/android/music/list/view/MpView;->rc2:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 105
    iget-object v0, p0, Lcom/android/music/list/view/MpView;->rc2:Landroid/graphics/Rect;

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 106
    return-void
.end method

.method public SetEnablePress(Z)V
    .locals 0
    .parameter "press"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/music/list/view/MpView;->PressEnable:Z

    .line 57
    return-void
.end method

.method public SetIcon(I)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/music/list/view/MpView;->icon:I

    .line 52
    return-void
.end method

.method public SetIdIndex(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public SetProgressBarStartPosition(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/music/list/view/MpView;->progressBarStartX:I

    .line 42
    return-void
.end method

.method public SetProgressValue(JJ)V
    .locals 2
    .parameter "value"
    .parameter "value2"

    .prologue
    .line 69
    sget-object v0, Lcom/android/music/list/view/MpView;->mSync:Ljava/lang/String;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    sput-object v1, Lcom/android/music/list/view/MpView;->playFocusIndex:Ljava/lang/String;

    .line 71
    iput-wide p1, p0, Lcom/android/music/list/view/MpView;->progressValue:J

    .line 72
    iput-wide p3, p0, Lcom/android/music/list/view/MpView;->maxProgressValue:J

    .line 74
    monitor-exit v0

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 125
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 126
    .local v18, temp:Landroid/graphics/Rect;
    const/16 v19, 0x0

    .line 127
    .local v19, temp2:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getWidth()I

    move-result v13

    .line 128
    .local v13, mWindowWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getHeight()I

    move-result v12

    .line 130
    .local v12, mWindowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->bg2:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 132
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 133
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->bg2:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->bg2:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->bg2:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->rc2:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->bg1:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 140
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 141
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->bg1:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->bg1:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->bg1:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->rc1:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 147
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/MpView;->icon:I

    move/from16 v21, v0

    if-lez v21, :cond_4

    sget-object v21, Lcom/android/music/list/view/MpView;->playFocusIndex:Ljava/lang/String;

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 148
    sget-object v21, Lcom/android/music/list/view/MpView;->mSync:Ljava/lang/String;

    monitor-enter v21

    .line 149
    :try_start_0
    sget-object v22, Lcom/android/music/list/view/MpView;->playFocusIndex:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 151
    const/4 v9, 0x0

    .line 153
    .local v9, image:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/MpView;->icon:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/MpView;->PressEnable:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200b1

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 169
    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    .line 171
    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x40011eb851eb851fL

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v11, v0

    .line 172
    .local v11, imageWidth:I
    move v0, v12

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x40011eb851eb851fL

    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v10, v0

    .line 173
    .local v10, imageHeight:I
    sub-int v22, v13, v11

    div-int/lit8 v16, v22, 0x2

    .line 174
    .local v16, sx:I
    sub-int v22, v12, v10

    div-int/lit8 v17, v22, 0x2

    .line 175
    .local v17, sy:I
    add-int v6, v16, v11

    .line 176
    .local v6, ex:I
    add-int v7, v17, v10

    .line 178
    .local v7, ey:I
    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 179
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 183
    .end local v6           #ex:I
    .end local v7           #ey:I
    .end local v9           #image:Landroid/graphics/drawable/Drawable;
    .end local v10           #imageHeight:I
    .end local v11           #imageWidth:I
    .end local v16           #sx:I
    .end local v17           #sy:I
    :cond_3
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/list/view/MpView;->progressValue:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-eqz v21, :cond_6

    sget-object v21, Lcom/android/music/list/view/MpView;->playFocusIndex:Ljava/lang/String;

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    .line 188
    sget-object v21, Lcom/android/music/list/view/MpView;->mSync:Ljava/lang/String;

    monitor-enter v21

    .line 189
    :try_start_1
    sget-object v22, Lcom/android/music/list/view/MpView;->playFocusIndex:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/MpView;->myNum:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 191
    const/4 v8, 0x0

    .line 192
    .local v8, foreground:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 195
    .local v5, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->isPressed()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200d7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200d3

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 220
    :goto_1
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 223
    .end local v19           #temp2:Landroid/graphics/Rect;
    .local v20, temp2:Landroid/graphics/Rect;
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/list/view/MpView;->progressValue:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/list/view/MpView;->maxProgressValue:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-gez v22, :cond_d

    .line 225
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/list/view/MpView;->progressValue:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/MpView;->progressBarStartX:I

    move/from16 v24, v0

    sub-int v24, v13, v24

    const/16 v25, 0xa

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/music/list/view/MpView;->maxProgressValue:J

    move-wide/from16 v24, v0

    div-long v14, v22, v24

    .line 226
    .local v14, percent:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/MpView;->progressBarStartX:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/MpView;->progressBarStartX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v14

    const-wide/16 v26, 0xa

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v25, v12, v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/MpView;->progressBarStartX:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move v3, v13

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    .end local v14           #percent:J
    :goto_2
    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 237
    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 239
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v20

    .line 243
    .end local v5           #background:Landroid/graphics/drawable/Drawable;
    .end local v8           #foreground:Landroid/graphics/drawable/Drawable;
    .end local v20           #temp2:Landroid/graphics/Rect;
    .restart local v19       #temp2:Landroid/graphics/Rect;
    :cond_5
    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 246
    :cond_6
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 247
    return-void

    .line 159
    .restart local v9       #image:Landroid/graphics/drawable/Drawable;
    :cond_7
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200b0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_0

    .line 161
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/MpView;->icon:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/MpView;->PressEnable:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200b4

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_0

    .line 167
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200b3

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_0

    .line 183
    .end local v9           #image:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v22

    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v22

    .line 201
    .restart local v5       #background:Landroid/graphics/drawable/Drawable;
    .restart local v8       #foreground:Landroid/graphics/drawable/Drawable;
    :cond_a
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->isFocused()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200d7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200d3

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_1

    .line 207
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->isSelected()Z

    move-result v22

    if-eqz v22, :cond_c

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200d7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200d3

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_1

    .line 215
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200d7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/MpView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0200d3

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v5

    goto/16 :goto_1

    .line 232
    .end local v19           #temp2:Landroid/graphics/Rect;
    .restart local v20       #temp2:Landroid/graphics/Rect;
    :cond_d
    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    sub-int v24, v12, v24

    :try_start_6
    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move v3, v13

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 233
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    move v3, v13

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 243
    :catchall_1
    move-exception v22

    move-object/from16 v19, v20

    .end local v5           #background:Landroid/graphics/drawable/Drawable;
    .end local v8           #foreground:Landroid/graphics/drawable/Drawable;
    .end local v20           #temp2:Landroid/graphics/Rect;
    .restart local v19       #temp2:Landroid/graphics/Rect;
    :goto_3
    :try_start_7
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v22

    :catchall_2
    move-exception v22

    goto :goto_3
.end method
