.class Lcom/android/internal/policy/impl/PuzzleLockScreen;
.super Landroid/widget/LinearLayout;
.source "PuzzleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PuzzleLockScreen$5;,
        Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;,
        Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_CARRIER_NAME:Z = false

.field private static final DISPLAY_RAD_DUAL_CLOCK_ON_LOCK_UI:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "PuzzleLockScreen"


# instance fields
.field private PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

.field private mActivated:Z

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mEnableMenuKeyInLockScreen:Z

.field private mHelp1:Landroid/widget/TextView;

.field private mHelp2:Landroid/widget/TextView;

.field private mHelp3:Landroid/widget/TextView;

.field private mInitGlassHeight:I

.field private mInitGlassLeft:I

.field private mInitGlassTop:I

.field private mInitGlassWidth:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaLayout:Landroid/widget/LinearLayout;

.field private mMediaOpened:Z

.field private mMissedCallCount:I

.field private mMissedMsgCount:I

.field private mMissedVVMCount:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mPZBackgroudLayout:Landroid/widget/RelativeLayout;

.field private mPuzzleAnimationRunning:Z

.field private mPuzzleMatch:Landroid/widget/ImageView;

.field private mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

.field private mPuzzleMatchLayout:Landroid/widget/LinearLayout;

.field private mPuzzleMatchLayoutLeft:I

.field private mPuzzleMatchLayoutTop:I

.field private mPuzzleNotiCall:Landroid/widget/ImageView;

.field private mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

.field private mPuzzleNotiCallText:Landroid/widget/TextView;

.field private mPuzzleNotiMail:Landroid/widget/ImageView;

.field private mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

.field private mPuzzleNotiMailText:Landroid/widget/TextView;

.field private mPuzzleNotiUnlock:Landroid/widget/ImageView;

.field private mPuzzleNotiUnlockLayout:Landroid/widget/LinearLayout;

.field private mPuzzleNotiUnlockText:Landroid/widget/TextView;

.field private mPuzzleNotiVVM:Landroid/widget/ImageView;

.field private mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

.field private mPuzzleNotiVVMText:Landroid/widget/TextView;

.field private mPuzzleUnlockHorizontalMargin:I

.field private mPuzzleUnlockLayoutLeft:I

.field private mPuzzleUnlockLayoutTop:I

.field private mPuzzleUnlockMatchHorizontalMargin:I

.field private mPuzzleUnlockRatio:I

.field private mPuzzleUnlockStatusBarMargin:I

.field private mPuzzleUnlockVerticalMargin:I

.field private mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

.field private mSweepTextBox:Landroid/widget/LinearLayout;

.field private mSweepTextBox2:Landroid/widget/LinearLayout;

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

.field private mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

.field private mUnlockHorizontalMargin:I

.field private mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

.field private mUnlockVerticalMargin:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x1e0

    const/16 v5, 0x120

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 258
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 93
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleAnimationRunning:Z

    .line 148
    const/16 v2, 0x23

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    .line 149
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 150
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 176
    sget-object v2, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 260
    iput-object p2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 261
    iput-object p3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 262
    iput-object p4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 264
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 266
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    .line 267
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 268
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 270
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 271
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 274
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    .line 278
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 279
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 280
    const v2, 0x109007f

    invoke-virtual {v1, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 285
    :goto_0
    const v2, 0x1020281

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPZBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 287
    const v2, 0x1020255

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 288
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 291
    const v2, 0x10201c7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    const v2, 0x1020282

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 300
    const v2, 0x1020266

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox:Landroid/widget/LinearLayout;

    .line 301
    const v2, 0x1020283

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox2:Landroid/widget/LinearLayout;

    .line 304
    const v2, 0x1020268

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp1:Landroid/widget/TextView;

    .line 305
    const v2, 0x1020267

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    .line 306
    const v2, 0x1020284

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp3:Landroid/widget/TextView;

    .line 307
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp1:Landroid/widget/TextView;

    const v3, 0x104046a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    const v3, 0x1040471

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp3:Landroid/widget/TextView;

    const v3, 0x104046a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 311
    const v2, 0x1020285

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    .line 312
    const v2, 0x1020286

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    const v2, 0x1020287

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    .line 316
    const v2, 0x1020288

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    .line 317
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    const v2, 0x1020289

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    .line 322
    const v2, 0x102028a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMText:Landroid/widget/TextView;

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 329
    const v2, 0x102028b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiUnlockLayout:Landroid/widget/LinearLayout;

    .line 333
    const v2, 0x102028c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    .line 334
    const v2, 0x102028d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatch:Landroid/widget/ImageView;

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    .line 340
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/policy/impl/PuzzleLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 342
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 343
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 353
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 355
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 361
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 362
    .local v0, densityDpiForPuzzle:I
    sparse-switch v0, :sswitch_data_0

    .line 399
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 400
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 401
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 402
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 404
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 405
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 406
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 407
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    .line 413
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getUnlockCounter()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 415
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    :goto_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 563
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 645
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 728
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiUnlockLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 807
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusable(Z)V

    .line 808
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusableInTouchMode(Z)V

    .line 809
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setDescendantFocusability(I)V

    .line 811
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 812
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 813
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 814
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 815
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 816
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 817
    return-void

    .line 282
    .end local v0           #densityDpiForPuzzle:I
    :cond_0
    const v2, 0x1090080

    invoke-virtual {v1, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 350
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto/16 :goto_1

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 364
    .restart local v0       #densityDpiForPuzzle:I
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 365
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 366
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 367
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 369
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 370
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 371
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 372
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 375
    :sswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 376
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 377
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 378
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 380
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 381
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 382
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 383
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 386
    :sswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 387
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 388
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 389
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 390
    const/16 v2, 0x90

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 391
    const/16 v2, 0x90

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 393
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 394
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 395
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 396
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 419
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 362
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleAnimationRunning:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleAnimationRunning:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendVvmIntent()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiUnlockLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPZBackgroudLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return p1
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1200
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 1207
    :goto_0
    return-object v0

    .line 1202
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1204
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 1205
    goto :goto_0

    .line 1207
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1104
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1105
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 1124
    :goto_1
    return-object v1

    .line 1102
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1108
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$5;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1124
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1110
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1112
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1114
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1116
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1118
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1120
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1122
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isDualClockEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1226
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 1218
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 1220
    return-void
.end method

.method private sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 4
    .parameter "notiMode"

    .prologue
    .line 849
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 850
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 852
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "Exception"

    const-string v3, "Added to remove KlocWork() defect."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendVvmIntent()V
    .locals 7

    .prologue
    .line 833
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v4, "voicemail"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 834
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 836
    .local v2, pi:Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 838
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v3, "Exception"

    const-string v4, "Added to remove KlocWork() defect."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 237
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 239
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 241
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 242
    .local v1, fileOverride:Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1132
    return-void
.end method

.method private updateMissedEvent()V
    .locals 11

    .prologue
    const/high16 v10, 0x4188

    const/4 v9, 0x0

    const/16 v8, 0x3e7

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 861
    const/4 v3, 0x0

    .line 862
    .local v3, visibility:I
    const/4 v0, 0x0

    .line 863
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 866
    .local v1, nMsgCount:I
    const/4 v2, 0x0

    .line 869
    .local v2, nVVMCount:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v0

    .line 870
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    .line 873
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "count_for_vvm"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 876
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v0, v4, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 877
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v1, v4, :cond_1

    iput v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 880
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    if-le v2, v4, :cond_2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    .line 884
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v4, v8, :cond_3

    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 885
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v4, v8, :cond_4

    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 888
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    if-le v4, v8, :cond_5

    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    .line 892
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_9

    .line 893
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    const/high16 v5, 0x41c0

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 899
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_a

    .line 900
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    const/high16 v5, 0x41c0

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 907
    :goto_1
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_b

    .line 908
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMText:Landroid/widget/TextView;

    const/high16 v5, 0x41c0

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 913
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 921
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-nez v4, :cond_c

    move v3, v7

    .line 922
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 924
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 925
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-nez v4, :cond_d

    move v3, v7

    .line 926
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 933
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    if-nez v4, :cond_e

    move v3, v7

    .line 934
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 945
    :cond_8
    return-void

    .line 896
    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 903
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 910
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMText:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_c
    move v3, v9

    .line 921
    goto :goto_3

    :cond_d
    move v3, v9

    .line 925
    goto :goto_4

    :cond_e
    move v3, v9

    .line 933
    goto :goto_5
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1037
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 822
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 823
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 828
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 982
    return-void
.end method

.method public onMediaStoped(Z)V
    .locals 2
    .parameter "isStop"

    .prologue
    .line 1064
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    if-nez v0, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    if-eqz p1, :cond_0

    .line 1067
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_2

    .line 1068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    goto :goto_0
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .locals 2
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    .line 1043
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    if-nez v0, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1046
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 1047
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1050
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 1054
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_3

    .line 1055
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 1059
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOrientationChange(Z)V
    .locals 2
    .parameter "inPortrait"

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 975
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    if-eq p1, v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 978
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 995
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 996
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1001
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1002
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1003
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1244
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 950
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 1096
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1007
    const-string v0, "PuzzleLockScreen"

    const-string v1, "PuzzleLock onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleAnimationRunning:Z

    .line 1011
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 1012
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1016
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 1018
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 1023
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 1025
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp3:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1032
    return-void

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 969
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 1215
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 961
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 965
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 955
    return-void
.end method
