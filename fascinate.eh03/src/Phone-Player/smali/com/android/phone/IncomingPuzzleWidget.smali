.class Lcom/android/phone/IncomingPuzzleWidget;
.super Landroid/widget/RelativeLayout;
.source "IncomingPuzzleWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;
    }
.end annotation


# instance fields
.field private currentPhone:Lcom/android/internal/telephony/Phone;

.field private mAnswerLayout:Landroid/widget/LinearLayout;

.field private mCallButton:Landroid/widget/Button;

.field private mCallTimeTextView:Landroid/widget/TextView;

.field private mChange:Z

.field private mContext:Landroid/content/Context;

.field private mIgnoreLayout:Landroid/widget/LinearLayout;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingPuzzleLayout:Landroid/widget/RelativeLayout;

.field private mIsSilence:Z

.field private mMessageButton:Landroid/widget/Button;

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mPhoneNum:Ljava/lang/String;

.field private mPuzzleAnimationEnd:Z

.field private mPuzzleAnimationRunning:Z

.field private mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

.field private mPuzzleMatchLayout:Landroid/widget/LinearLayout;

.field private mPuzzleMatchLayoutLeft:I

.field private mPuzzleMatchLayoutTop:I

.field private mPuzzleUnlockHorizontalMargin:I

.field private mPuzzleUnlockLayoutLeft:I

.field private mPuzzleUnlockLayoutTop:I

.field private mPuzzleUnlockMatchHorizontalMargin:I

.field private mPuzzleUnlockRatio:I

.field private mPuzzleUnlockStatusBarMargin:I

.field private mPuzzleUnlockVerticalMargin:I

.field private mQuietLayout:Landroid/widget/LinearLayout;

.field private mRejectPanel:Landroid/widget/LinearLayout;

.field private mTaskOn:Z

.field private mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

.field private mTimePanel:Landroid/view/ViewGroup;

.field private mTimer:Ljava/util/Timer;

.field private mTimerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 101
    iput-boolean v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mIsSilence:Z

    .line 108
    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockRatio:I

    .line 109
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockStatusBarMargin:I

    .line 110
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 120
    iput-boolean v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationEnd:Z

    .line 525
    new-instance v0, Lcom/android/phone/IncomingPuzzleWidget$6;

    invoke-direct {v0, p0}, Lcom/android/phone/IncomingPuzzleWidget$6;-><init>(Lcom/android/phone/IncomingPuzzleWidget;)V

    iput-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTimerHandler:Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mContext:Landroid/content/Context;

    .line 132
    iput-boolean v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mChange:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    .line 137
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTimer:Ljava/util/Timer;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IncomingPuzzleWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/IncomingPuzzleWidget;->stopHandler()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/IncomingPuzzleWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/IncomingPuzzleWidget;->endInComingCall()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/phone/IncomingPuzzleWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/phone/IncomingPuzzleWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/IncomingPuzzleWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mOrigTop:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/IncomingPuzzleWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/phone/IncomingPuzzleWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/phone/IncomingPuzzleWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutLeft:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/phone/IncomingPuzzleWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockLayoutTop:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mIncomingPuzzleLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/phone/IncomingPuzzleWidget;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/IncomingPuzzleWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationEnd:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/IncomingPuzzleWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationEnd:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockStatusBarMargin:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mRejectPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mMessageButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/IncomingPuzzleWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/phone/IncomingPuzzleWidget;->startHandler()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/phone/IncomingPuzzleWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mIsSilence:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/IncomingPuzzleWidget;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/IncomingPuzzleWidget;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/IncomingPuzzleWidget;Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;)Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/phone/IncomingPuzzleWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/phone/IncomingPuzzleWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/IncomingPuzzleWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mChange:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/phone/IncomingPuzzleWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mChange:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mCallTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/IncomingPuzzleWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/IncomingPuzzleWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/IncomingPuzzleWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/IncomingPuzzleWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayoutLeft:I

    return p1
.end method

.method private endInComingCall()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Phone;)Z

    .line 487
    return-void
.end method

.method private startHandler()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 493
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 494
    .local v6, msg:Landroid/os/Message;
    const/16 v0, 0x8

    iput v0, v6, Landroid/os/Message;->what:I

    .line 496
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    if-eqz v0, :cond_1

    .line 497
    iget-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    invoke-virtual {v0}, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->cancel()Z

    .line 500
    :cond_0
    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    .line 505
    :cond_1
    new-instance v0, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;-><init>(Lcom/android/phone/IncomingPuzzleWidget;Lcom/android/phone/IncomingPuzzleWidget$1;)V

    iput-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    .line 507
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTimePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    if-nez v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 513
    return-void
.end method

.method private stopHandler()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTimePanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTextViewTask:Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;

    invoke-virtual {v0}, Lcom/android/phone/IncomingPuzzleWidget$TextViewFlushTimerTask;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTaskOn:Z

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTimerHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    return-void
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 6
    .parameter "inCallScreen"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 142
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 143
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03002f

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 145
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 146
    iput-boolean v4, p0, Lcom/android/phone/IncomingPuzzleWidget;->mIsSilence:Z

    .line 147
    const-string v1, "IncomingPuzzleWidget"

    const-string v2, "initialize mPuzzleAnimationRunning false "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean v4, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z

    .line 149
    iput-boolean v4, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationEnd:Z

    .line 150
    const v1, 0x7f0800cc

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;

    .line 151
    const v1, 0x7f0800ce

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;

    .line 152
    const v1, 0x7f0800ca

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;

    .line 153
    const v1, 0x7f0800c9

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    .line 154
    const v1, 0x7f0800c8

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mIncomingPuzzleLayout:Landroid/widget/RelativeLayout;

    .line 158
    const v1, 0x7f0800d0

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mRejectPanel:Landroid/widget/LinearLayout;

    .line 159
    const v1, 0x7f0800c2

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mCallTimeTextView:Landroid/widget/TextView;

    .line 160
    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mTimePanel:Landroid/view/ViewGroup;

    .line 161
    const v1, 0x7f0800c4

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mCallButton:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mCallButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/IncomingPuzzleWidget$1;

    invoke-direct {v2, p0}, Lcom/android/phone/IncomingPuzzleWidget$1;-><init>(Lcom/android/phone/IncomingPuzzleWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v1, 0x7f0800c5

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mMessageButton:Landroid/widget/Button;

    .line 205
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mMessageButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/IncomingPuzzleWidget$2;

    invoke-direct {v2, p0}, Lcom/android/phone/IncomingPuzzleWidget$2;-><init>(Lcom/android/phone/IncomingPuzzleWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mRejectPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mMessageButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mCallTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockRatio:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockHorizontalMargin:I

    .line 244
    iget v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockRatio:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleUnlockVerticalMargin:I

    .line 246
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mAnswerLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/IncomingPuzzleWidget$3;

    invoke-direct {v2, p0}, Lcom/android/phone/IncomingPuzzleWidget$3;-><init>(Lcom/android/phone/IncomingPuzzleWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 346
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mIgnoreLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/IncomingPuzzleWidget$4;

    invoke-direct {v2, p0}, Lcom/android/phone/IncomingPuzzleWidget$4;-><init>(Lcom/android/phone/IncomingPuzzleWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    iget-object v1, p0, Lcom/android/phone/IncomingPuzzleWidget;->mQuietLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/IncomingPuzzleWidget$5;

    invoke-direct {v2, p0}, Lcom/android/phone/IncomingPuzzleWidget$5;-><init>(Lcom/android/phone/IncomingPuzzleWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    invoke-virtual {p0, v5}, Lcom/android/phone/IncomingPuzzleWidget;->setFocusable(Z)V

    .line 476
    invoke-virtual {p0, v5}, Lcom/android/phone/IncomingPuzzleWidget;->setFocusableInTouchMode(Z)V

    .line 477
    const/high16 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/phone/IncomingPuzzleWidget;->setDescendantFocusability(I)V

    .line 478
    return-void
.end method

.method public resetAnimationRunning()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IncomingPuzzleWidget;->mPuzzleAnimationRunning:Z

    .line 483
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 571
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 572
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/Phone;I)V
    .locals 4
    .parameter "phone"
    .parameter "orientation"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 577
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;

    .line 579
    invoke-virtual {p0}, Lcom/android/phone/IncomingPuzzleWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 581
    if-ne p2, v3, :cond_1

    .line 583
    const/16 v0, 0x12f

    const/16 v1, 0x74

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/phone/IncomingPuzzleWidget;->setPadding(IIII)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const/16 v0, 0x1e0

    invoke-virtual {p0, v3, v0, v2, v2}, Lcom/android/phone/IncomingPuzzleWidget;->setPadding(IIII)V

    goto :goto_0
.end method
