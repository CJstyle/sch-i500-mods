.class public Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
.super Landroid/widget/RelativeLayout;
.source "VideoSubTitleSyncCtrl.java"


# instance fields
.field private final HIDE_SYNC_BTN:I

.field private final LONG_PRESS_TIME:J

.field private final RESET_SYNC_TIME:I

.field private final SYNC_DEFAULT_LEVEL:J

.field private final SYNC_TIME_DECREASE:I

.field private final SYNC_TIME_INCREASE:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

.field private mSubTitleSyncLayout:Landroid/view/View;

.field private mSubTitleSyncText:Landroid/widget/TextView;

.field private mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

.field private mSubtitleResetBtn:Landroid/widget/ImageButton;

.field private mSyncDownTouchListener:Landroid/view/View$OnTouchListener;

.field private mSyncResetBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private mSyncUpTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    .line 22
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    .line 23
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/ImageButton;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->SYNC_TIME_DECREASE:I

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->SYNC_TIME_INCREASE:I

    .line 28
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->HIDE_SYNC_BTN:I

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->RESET_SYNC_TIME:I

    .line 31
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->LONG_PRESS_TIME:J

    .line 32
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->SYNC_DEFAULT_LEVEL:J

    .line 85
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncUpTouchListener:Landroid/view/View$OnTouchListener;

    .line 109
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncDownTouchListener:Landroid/view/View$OnTouchListener;

    .line 133
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncResetBtnTouchListener:Landroid/view/View$OnTouchListener;

    .line 209
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->initView()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->sendMessage(IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getSyncString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 179
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSubTitleSyncInterval:J

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float v0, v2, v3

    .line 181
    .local v0, a:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, str:Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    const v3, 0x7f07007e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x4

    .line 42
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->removeAllViews()V

    .line 48
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a0043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    .line 53
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 56
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncUpTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    .line 61
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncDownTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a0041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/ImageButton;

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncResetBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method private sendMessage(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 203
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 206
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 207
    return-void
.end method


# virtual methods
.method public hideSyncBtn()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public showSyncBtn()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    :cond_0
    return-void
.end method
