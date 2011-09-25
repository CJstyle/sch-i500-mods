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

.field private static final GLASS_EFFECT_ANIMATION:Z = true

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PuzzleLockScreen"


# instance fields
.field private PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private mActivated:Z

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

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

.field private mLayoutGlassEffect:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenBackground:Landroid/widget/ImageView;

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

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


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

    .line 301
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 96
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleAnimationRunning:Z

    .line 151
    const/16 v2, 0x23

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    .line 152
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 153
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 179
    sget-object v2, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 303
    iput-object p2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 304
    iput-object p3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 305
    iput-object p4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 309
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    .line 310
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 311
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 313
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 314
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 317
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    .line 321
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 322
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 323
    const v2, 0x1090081

    invoke-virtual {v1, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 328
    :goto_0
    const v2, 0x10202a8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPZBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 330
    const v2, 0x102027c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 331
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    const v2, 0x10201fa

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 335
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    const v2, 0x10202a9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 343
    const v2, 0x102028c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox:Landroid/widget/LinearLayout;

    .line 344
    const v2, 0x10202aa

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox2:Landroid/widget/LinearLayout;

    .line 347
    const v2, 0x102028f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp1:Landroid/widget/TextView;

    .line 348
    const v2, 0x102028e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    .line 349
    const v2, 0x10202ab

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp3:Landroid/widget/TextView;

    .line 350
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp1:Landroid/widget/TextView;

    const v3, 0x10404b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    const v3, 0x10404b7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 352
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp3:Landroid/widget/TextView;

    const v3, 0x10404b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 354
    const v2, 0x10202ac

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    .line 355
    const v2, 0x10202ad

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    const v2, 0x10202ae

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    .line 359
    const v2, 0x10202af

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    .line 360
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    const v2, 0x10202b0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    .line 365
    const v2, 0x10202b1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMText:Landroid/widget/TextView;

    .line 368
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    const v2, 0x10202b2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiUnlockLayout:Landroid/widget/LinearLayout;

    .line 376
    const v2, 0x10202b3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    .line 377
    const v2, 0x10202b4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatch:Landroid/widget/ImageView;

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    .line 383
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 384
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/PuzzleLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/policy/impl/PuzzleLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 385
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 386
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 396
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 398
    const v2, 0x102027b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    .line 402
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 408
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 409
    .local v0, densityDpiForPuzzle:I
    sparse-switch v0, :sswitch_data_0

    .line 446
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 447
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 448
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 449
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 451
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 452
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 453
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 454
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    .line 460
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getUnlockCounter()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 462
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 547
    :goto_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 642
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 741
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 824
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiUnlockLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/PuzzleLockScreen$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 910
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusable(Z)V

    .line 911
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setFocusableInTouchMode(Z)V

    .line 912
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->setDescendantFocusability(I)V

    .line 914
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 915
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 916
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 917
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 918
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 920
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 921
    return-void

    .line 325
    .end local v0           #densityDpiForPuzzle:I
    :cond_0
    const v2, 0x1090082

    invoke-virtual {v1, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 393
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto/16 :goto_1

    .line 405
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 411
    .restart local v0       #densityDpiForPuzzle:I
    :sswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 412
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 413
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 414
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 416
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 417
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 418
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 419
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 422
    :sswitch_1
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 423
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 424
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 425
    iput v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 427
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 428
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 429
    iput v9, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 430
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 433
    :sswitch_2
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    .line 434
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockRatio:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    .line 435
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    .line 436
    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    .line 437
    const/16 v2, 0x90

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockHorizontalMargin:I

    .line 438
    const/16 v2, 0x90

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockVerticalMargin:I

    .line 440
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    .line 441
    iput v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    .line 442
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    .line 443
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 466
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mSweepTextBox2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 409
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
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutLeft:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockMatchHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockLayoutTop:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockStatusBarMargin:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PuzzleLockScreen;Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/internal/policy/impl/PuzzleLockScreen;Landroid/view/animation/TranslateAnimation;)Landroid/view/animation/TranslateAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchAnimation:Landroid/view/animation/TranslateAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleAnimationRunning:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->PUZZLE_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleAnimationRunning:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->sendVvmIntent()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiUnlockLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/policy/impl/PuzzleLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutLeft:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleMatchLayoutTop:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PuzzleLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPZBackgroudLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PuzzleLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PuzzleLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mOrigTop:I

    return p1
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1338
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 1345
    :goto_0
    return-object v0

    .line 1340
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1341
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

    .line 1342
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 1343
    goto :goto_0

    .line 1345
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 1242
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1243
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 1262
    :goto_1
    return-object v1

    .line 1240
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 1246
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$5;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1262
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1248
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1250
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1252
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1254
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1256
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1258
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1260
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    goto :goto_1

    .line 1246
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
    .line 1364
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 1356
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    .line 1357
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 1358
    return-void
.end method

.method private sendIntent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)V
    .locals 4
    .parameter "notiMode"

    .prologue
    .line 953
    iget-object v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getIntentMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 954
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 956
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 959
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "Exception"

    const-string v3, "Added to remove KlocWork() defect."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendVvmIntent()V
    .locals 7

    .prologue
    .line 937
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v4, "voicemail"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 938
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 940
    .local v2, pi:Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 942
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 943
    :catch_0
    move-exception v0

    .line 945
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

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 280
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 282
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 284
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 285
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

.method private switchLockscreenMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1387
    packed-switch p1, :pswitch_data_0

    .line 1401
    :goto_0
    :pswitch_0
    return-void

    .line 1391
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 1270
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

    .line 965
    const/4 v3, 0x0

    .line 966
    .local v3, visibility:I
    const/4 v0, 0x0

    .line 967
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 970
    .local v1, nMsgCount:I
    const/4 v2, 0x0

    .line 973
    .local v2, nVVMCount:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v0

    .line 974
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v1

    .line 977
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "count_for_vvm"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 980
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v0, v4, :cond_0

    iput v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 981
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v1, v4, :cond_1

    iput v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 984
    :cond_1
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    if-le v2, v4, :cond_2

    iput v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    .line 988
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-le v4, v8, :cond_3

    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    .line 989
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-le v4, v8, :cond_4

    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    .line 992
    :cond_4
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    if-le v4, v8, :cond_5

    iput v8, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    .line 996
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_9

    .line 997
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    const/high16 v5, 0x41c0

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1003
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_a

    .line 1004
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    const/high16 v5, 0x41c0

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1011
    :goto_1
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_b

    .line 1012
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMText:Landroid/widget/TextView;

    const/high16 v5, 0x41c0

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1017
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMText:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 1025
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedCallCount:I

    if-nez v4, :cond_c

    move v3, v7

    .line 1026
    :goto_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1028
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 1029
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedMsgCount:I

    if-nez v4, :cond_d

    move v3, v7

    .line 1030
    :goto_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1036
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 1037
    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMissedVVMCount:I

    if-nez v4, :cond_e

    move v3, v7

    .line 1038
    :goto_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1049
    :cond_8
    return-void

    .line 1000
    :cond_9
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiCallText:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 1007
    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiMailText:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 1014
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleNotiVVMText:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_c
    move v3, v9

    .line 1025
    goto :goto_3

    :cond_d
    move v3, v9

    .line 1029
    goto :goto_4

    :cond_e
    move v3, v9

    .line 1037
    goto :goto_5
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1158
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1161
    iput-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1162
    iput-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 1163
    iput-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1165
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    if-eqz v0, :cond_0

    .line 1166
    iput-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    if-eqz v0, :cond_1

    .line 1169
    iput-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    .line 1171
    :cond_1
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1103
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1093
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1094
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1087
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1088
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 926
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 932
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 1099
    return-void
.end method

.method public onMediaStoped(Z)V
    .locals 2
    .parameter "isStop"

    .prologue
    .line 1202
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    if-nez v0, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    if-eqz p1, :cond_0

    .line 1205
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_2

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 1207
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1210
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
    .line 1177
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    if-nez v0, :cond_0

    .line 1198
    :goto_0
    return-void

    .line 1179
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1180
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    .line 1181
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1184
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2

    .line 1185
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 1188
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_3

    .line 1189
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 1192
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_4

    .line 1193
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UnlockMediaController;->setControllerVisibility(Z)V

    .line 1196
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 1197
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOrientationChange(Z)V
    .locals 2
    .parameter "inPortrait"

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1078
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCreatedInPortrait:Z

    if-eq p1, v1, :cond_0

    .line 1079
    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 1081
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1112
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 1113
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1118
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1119
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp3:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1120
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1382
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1054
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mStatus:Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateLayout(Lcom/android/internal/policy/impl/PuzzleLockScreen$Status;)V

    .line 1234
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1124
    const-string v0, "PuzzleLockScreen"

    const-string v1, "PuzzleLock onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mPuzzleAnimationRunning:Z

    .line 1128
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassLeft:I

    iget v2, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassTop:I

    iget v3, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mInitGlassHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 1131
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1134
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getWallpaperMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->switchLockscreenMode(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1138
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mActivated:Z

    .line 1140
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 1145
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->updateMissedEvent()V

    .line 1147
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1152
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1153
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mHelp3:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1154
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1073
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 1353
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->forceLayout()V

    .line 1065
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PuzzleLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 1069
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PuzzleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClock;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 1059
    return-void
.end method
