.class public Lcom/sec/android/app/videoplayer/view/VideoTitleController;
.super Landroid/widget/RelativeLayout;
.source "VideoTitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    }
.end annotation


# instance fields
.field private final FADE_OUT_TIME:I

.field private final LONG_PRESS_TIME:J

.field private final TAG:Ljava/lang/String;

.field private mBackBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private mBatteryImg:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private final mDefaultTimeout:I

.field private mFadeOutBtn:Landroid/view/animation/Animation;

.field private mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

.field private mRoot:Landroid/view/View;

.field private mScnCtrlBtn:Landroid/widget/ImageButton;

.field private mScnCtrlTouchListener:Landroid/view/View$OnTouchListener;

.field private mShowing:Z

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "VideoTitleController"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->TAG:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3db8

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 28
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    .line 29
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    .line 30
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    .line 31
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    .line 33
    const v0, 0x36ee80

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->FADE_OUT_TIME:I

    .line 34
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mDefaultTimeout:I

    .line 35
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->LONG_PRESS_TIME:J

    .line 127
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBackBtnTouchListener:Landroid/view/View$OnTouchListener;

    .line 151
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlTouchListener:Landroid/view/View$OnTouchListener;

    .line 40
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->initFloatingWindow()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initFloatingWindow()V
    .locals 5

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, mDecor:Landroid/view/View;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v2, p:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 59
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v1

    .line 61
    .local v1, mainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public forceBtnRelease()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 290
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mFadeOutBtn:Landroid/view/animation/Animation;

    .line 237
    .local v0, Btn:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 238
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 239
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setAnimation(Landroid/view/animation/Animation;)V

    .line 241
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setVisibility(I)V

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    .line 243
    return-void
.end method

.method public initTitle(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 107
    const v0, 0x7f0a0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    const v0, 0x7f0a0046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    :cond_0
    const v0, 0x7f0a0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateBatteryImg()V

    .line 125
    :cond_1
    return-void
.end method

.method protected makeTitleView()Landroid/view/View;
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 98
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->initTitle(Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->initTitle(Landroid/view/View;)V

    .line 49
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 50
    return-void
.end method

.method public setAnchorView()V
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->removeAllViews()V

    .line 74
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->makeTitleView()Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, v:Landroid/view/View;
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 81
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method

.method public setButtonArrange()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 250
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 251
    return-void
.end method

.method public setPlayer(Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateScnCtrlBtn()V

    .line 69
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateScnCtrlBtn()V

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateBatteryImg()V

    .line 221
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setVisibility(I)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mShowing:Z

    .line 226
    :cond_0
    return-void
.end method

.method public updateBatteryImg()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    const/16 v5, 0x31

    const/16 v4, 0x22

    const/16 v3, 0x13

    const/4 v2, 0x4

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mBatteryChargingStatus:Z

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f020044

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getBatteryLevel()I

    move-result v0

    .line 269
    .local v0, level:I
    if-gt v0, v2, :cond_2

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 271
    :cond_2
    if-le v0, v2, :cond_3

    if-gt v0, v3, :cond_3

    .line 272
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 273
    :cond_3
    if-le v0, v3, :cond_4

    if-gt v0, v4, :cond_4

    .line 274
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f02003f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 275
    :cond_4
    if-le v0, v4, :cond_5

    if-gt v0, v5, :cond_5

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 277
    :cond_5
    if-le v0, v5, :cond_6

    if-gt v0, v6, :cond_6

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 279
    :cond_6
    if-le v0, v6, :cond_7

    const/16 v1, 0x4f

    if-gt v0, v1, :cond_7

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 282
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mBatteryImg:Landroid/widget/ImageView;

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateScnCtrlBtn()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mRoot:Landroid/view/View;

    const v3, 0x7f0a0046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 184
    .local v0, Button:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getFitToScreenMode()I

    move-result v1

    .line 188
    .local v1, mode:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 192
    if-ne v1, v6, :cond_1

    .line 193
    const v2, 0x7f020007

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mScnCtrlBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    .end local v0           #Button:Landroid/widget/ImageButton;
    .end local v1           #mode:I
    :cond_0
    return-void

    .line 194
    .restart local v0       #Button:Landroid/widget/ImageButton;
    .restart local v1       #mode:I
    :cond_1
    if-ne v1, v4, :cond_2

    .line 195
    const v2, 0x7f020008

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 197
    :cond_2
    const v2, 0x7f020005

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 203
    if-ne v1, v6, :cond_4

    .line 204
    const v2, 0x7f02006d

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 205
    :cond_4
    if-ne v1, v4, :cond_5

    .line 206
    const v2, 0x7f020071

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 208
    :cond_5
    const v2, 0x7f020069

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 86
    const-string v0, "VideoTitleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTitle() text - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mTitleText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
