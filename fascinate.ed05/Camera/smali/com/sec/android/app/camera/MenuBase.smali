.class public Lcom/sec/android/app/camera/MenuBase;
.super Ljava/lang/Object;
.source "MenuBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MenuBase"

.field public static final Z_LEVEL_0:I = 0x0

.field public static final Z_LEVEL_1:I = 0x1

.field public static final Z_LEVEL_10:I = 0xa

.field public static final Z_LEVEL_11:I = 0xb

.field public static final Z_LEVEL_12:I = 0xc

.field public static final Z_LEVEL_13:I = 0xd

.field public static final Z_LEVEL_14:I = 0xe

.field public static final Z_LEVEL_2:I = 0x2

.field public static final Z_LEVEL_3:I = 0x3

.field public static final Z_LEVEL_4:I = 0x4

.field public static final Z_LEVEL_5:I = 0x5

.field public static final Z_LEVEL_6:I = 0x6

.field public static final Z_LEVEL_7:I = 0x7

.field public static final Z_LEVEL_8:I = 0x8

.field public static final Z_LEVEL_9:I = 0x9

.field public static final Z_LEVEL_FULLSCREEN:I = 0x10

.field public static final Z_LEVEL_TOP:I = 0xf


# instance fields
.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field protected mBaseView:Landroid/view/ViewGroup;

.field public mBaseViewId:I

.field private mCaptureEnabled:Z

.field protected mChild:Lcom/sec/android/app/camera/MenuBase;

.field private mEffect:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mLayoutId:I

.field protected mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

.field private mPreviewTouchEnabled:Z

.field private final mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

.field private final mShowAnimationSet:Landroid/view/animation/AnimationSet;

.field private final mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private mVisibility:Z

.field protected mZorder:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 103
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V
    .locals 13
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"
    .parameter "effect"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 44
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 45
    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 47
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 48
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 49
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 69
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    .line 70
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f666666

    const/high16 v5, 0x3f80

    const v6, 0x3f666666

    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f00

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 71
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 76
    iput p2, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 77
    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    .line 78
    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 79
    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    .line 80
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 82
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v4, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 86
    .local v12, baseView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 89
    move/from16 v0, p7

    move-object v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    .line 91
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAlphaViewAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 97
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mShowScaleAnimation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseView:Landroid/view/ViewGroup;

    .line 203
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 204
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 205
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 206
    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mInflater:Landroid/view/LayoutInflater;

    .line 207
    return-void
.end method

.method public final getBaseResourceId()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    return v0
.end method

.method public final getBaseViewId()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    return v0
.end method

.method public final getVisibility()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    return v0
.end method

.method public final getZorder()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public hideChildMenu()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 129
    :cond_0
    return-void
.end method

.method public hideMenu()V
    .locals 3

    .prologue
    .line 112
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, baseView:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 118
    .end local v0           #baseView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 123
    return-void
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    return v0
.end method

.method public final isFullScreen()Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/sec/android/app/camera/MenuBase;->mZorder:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a4

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 199
    :cond_0
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public restoreMenu()V
    .locals 3

    .prologue
    .line 132
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v2, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, baseView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mEffect:Z

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuBase;->mVisibility:Z

    .line 141
    .end local v0           #baseView:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 146
    return-void
.end method

.method public final setBaseResourceId(I)V
    .locals 0
    .parameter "layoutId"

    .prologue
    .line 153
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mLayoutId:I

    .line 154
    return-void
.end method

.method public final setBaseViewId(I)V
    .locals 0
    .parameter "baseViewId"

    .prologue
    .line 161
    iput p1, p0, Lcom/sec/android/app/camera/MenuBase;->mBaseViewId:I

    .line 162
    return-void
.end method

.method protected setCaptureEnabled(Z)V
    .locals 0
    .parameter "capture"

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mCaptureEnabled:Z

    .line 194
    return-void
.end method

.method public final setChild(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuBase;->mChild:Lcom/sec/android/app/camera/MenuBase;

    .line 170
    return-void
.end method

.method protected setTouchHandled(Z)V
    .locals 0
    .parameter "handle"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuBase;->mPreviewTouchEnabled:Z

    .line 190
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->pushMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 109
    return-void
.end method
