.class Lcom/android/internal/policy/impl/GlassLockScreen;
.super Landroid/widget/LinearLayout;
.source "GlassLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlassLockScreen$4;,
        Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;,
        Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISPLAY_CARRIER_NAME:Z = false

.field private static final DISPLAY_RAD_DUAL_CLOCK_ON_LOCK_UI:Z = false

.field private static final DISPLAY_SIM_LOCK_UI:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final GLASS_EFFECT_ANIMATION:Z = true

.field private static final MODE_HOMESCREEN_WALLPAPER:I = 0x0

.field private static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final PROP_PIN_STATUS:Ljava/lang/String; = "ril.pinstatus"

.field private static final SEC_LOCK_KEY_PERM_BLOCKED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GlassLockScreen"

.field private static mSimLockPreparing:Z


# instance fields
.field private GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private mActivated:Z

.field private mBackgroudLayout:Landroid/widget/RelativeLayout;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallButton2:Landroid/widget/Button;

.field private mEnableMenuKeyInLockScreen:Z

.field private mHelp2:Landroid/widget/TextView;

.field private mInitGlassHeight:I

.field private mInitGlassLeft:I

.field private mInitGlassTop:I

.field private mInitGlassWidth:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLayoutGlassEffect:Landroid/widget/ImageView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenBackground:Landroid/widget/ImageView;

.field private mMediaLayout:Landroid/widget/LinearLayout;

.field private mMediaOpened:Z

.field private mNotiMissedCall:Landroid/widget/RelativeLayout;

.field private mNotiMissedCallCount:Landroid/widget/TextView;

.field private mNotiNewMessage:Landroid/widget/RelativeLayout;

.field private mNotiNewMessageCount:Landroid/widget/TextView;

.field private mNotiRoot:Landroid/widget/LinearLayout;

.field private mNotiVVM:Landroid/widget/RelativeLayout;

.field private mNotiVVMCount:Landroid/widget/TextView;

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mOrigLeft:I

.field private mOrigTop:I

.field private mPuzzleAnimationRunning:Z

.field private mSimLockMsg1:Landroid/widget/TextView;

.field private mSimLockMsg2:Landroid/widget/TextView;

.field private mSimLockMsg3:Landroid/widget/TextView;

.field private mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field private mSweepTextBox:Landroid/widget/RelativeLayout;

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

.field private mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

.field private mUnlockHorizontalMargin:I

.field private mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

.field private mUnlockRatio:I

.field private mUnlockVerticalMargin:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v8, 0x1e0

    const/16 v7, 0x150

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 273
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 126
    const/16 v2, 0x34

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockRatio:I

    .line 138
    sget-object v2, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 140
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mPuzzleAnimationRunning:Z

    .line 275
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 276
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 277
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    .line 280
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 282
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    .line 283
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    .line 286
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 287
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 288
    const v2, 0x109007c

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 293
    :goto_0
    const v2, 0x102027c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    const v2, 0x10201fa

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 298
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    const v2, 0x1020288

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    .line 303
    const v2, 0x1020289

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    .line 304
    const v2, 0x10201f1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 305
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v3, 0x10403a7

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    const v2, 0x102028a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    .line 316
    const v2, 0x102028b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    .line 317
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    const v3, 0x10403a7

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 318
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    const v2, 0x102027d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 330
    const v2, 0x102028d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    .line 331
    const v2, 0x102028c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSweepTextBox:Landroid/widget/RelativeLayout;

    .line 333
    const v2, 0x102028e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    .line 334
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    const v3, 0x10404b1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 335
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const v3, 0x1080380

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 336
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 343
    const v2, 0x1020281

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCallCount:Landroid/widget/TextView;

    .line 344
    const v2, 0x1020284

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessageCount:Landroid/widget/TextView;

    .line 345
    const v2, 0x1020287

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVMCount:Landroid/widget/TextView;

    .line 346
    const v2, 0x102027f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCall:Landroid/widget/RelativeLayout;

    .line 347
    const v2, 0x1020282

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessage:Landroid/widget/RelativeLayout;

    .line 348
    const v2, 0x1020285

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVM:Landroid/widget/RelativeLayout;

    .line 349
    const v2, 0x102027e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    .line 350
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateEvent()V

    .line 354
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 355
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;Lcom/android/internal/policy/impl/GlassLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 357
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 367
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 369
    const v2, 0x102027b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    .line 373
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 379
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 380
    .local v0, densityDpiForGlass:I
    sparse-switch v0, :sswitch_data_0

    .line 409
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 410
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 412
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 413
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 414
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 415
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    .line 434
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 525
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSimLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    if-eqz v2, :cond_3

    .line 526
    sput-boolean v6, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    .line 532
    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusable(Z)V

    .line 533
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusableInTouchMode(Z)V

    .line 534
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->setDescendantFocusability(I)V

    .line 536
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 537
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 538
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 539
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 541
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 542
    return-void

    .line 290
    .end local v0           #densityDpiForGlass:I
    :cond_0
    const v2, 0x109007d

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 364
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto/16 :goto_1

    .line 376
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 382
    .restart local v0       #densityDpiForGlass:I
    :sswitch_0
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 383
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 385
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 386
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 387
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 388
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto :goto_3

    .line 391
    :sswitch_1
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 392
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 394
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 395
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 396
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 397
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto :goto_3

    .line 400
    :sswitch_2
    const/16 v2, 0xa8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 401
    const/16 v2, 0x118

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 403
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 404
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 405
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 406
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 529
    :cond_3
    sput-boolean v5, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    goto :goto_4

    .line 380
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mPuzzleAnimationRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mPuzzleAnimationRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    sput-boolean p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private gc()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 792
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 794
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    .line 795
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 798
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 799
    return-void
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1016
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 1023
    :goto_0
    return-object v0

    .line 1018
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1019
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

    .line 1020
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 1021
    goto :goto_0

    .line 1023
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 883
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isPermanentBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 884
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 903
    :goto_1
    return-object v1

    .line 881
    .end local v0           #missingAndNotProvisioned:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 887
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 903
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 889
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 891
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 893
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 895
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 897
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 899
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 901
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 887
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

.method private getIntFromFile(Ljava/lang/String;)I
    .locals 6
    .parameter "path"

    .prologue
    .line 1060
    const/4 v1, 0x0

    .line 1062
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1065
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1066
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .local v3, ret:I
    move-object v1, v2

    .line 1071
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_0
    return v3

    .line 1067
    .end local v3           #ret:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1069
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    .restart local v3       #ret:I
    goto :goto_0

    .line 1067
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v3           #ret:I
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    move-object v0, v5

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private isDualClockEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isPermanentBlock()Z
    .locals 1

    .prologue
    .line 872
    const/4 v0, 0x0

    return v0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 1033
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 1034
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 1035
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 252
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 254
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 256
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 257
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
    .line 1081
    packed-switch p1, :pswitch_data_0

    .line 1095
    :goto_0
    :pswitch_0
    return-void

    .line 1085
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getLockscreenWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1081
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateEvent()V
    .locals 13

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 550
    const-string v0, "content://com.samsung.vvm.vvmcontentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 551
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "direction=0 and is_deleted=\'n\' and is_read=\'N\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 553
    .local v7, cur:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    .end local v1           #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v6

    .line 554
    .local v6, callCount:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v11

    .line 562
    .local v11, msgCount:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "count_for_vvm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 565
    .local v12, vvmCount:I
    const/4 v8, 0x0

    .line 566
    .local v8, itemCount:I
    if-lez v6, :cond_1

    .line 567
    add-int/lit8 v8, v8, 0x1

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCallCount:Landroid/widget/TextView;

    const/16 v1, 0x3e8

    if-ge v6, v1, :cond_0

    move v1, v6

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCallCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 574
    :goto_1
    if-lez v11, :cond_3

    .line 575
    add-int/lit8 v8, v8, 0x1

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessageCount:Landroid/widget/TextView;

    const/16 v1, 0x3e8

    if-ge v11, v1, :cond_2

    move v1, v11

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessageCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessage:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 582
    :goto_3
    if-lez v12, :cond_5

    .line 583
    add-int/lit8 v8, v8, 0x1

    .line 584
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVMCount:Landroid/widget/TextView;

    const/16 v1, 0x3e8

    if-ge v12, v1, :cond_4

    move v1, v12

    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVMCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVM:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 591
    :goto_5
    if-nez v8, :cond_6

    .line 592
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->requestLayout()V

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->invalidate()V

    .line 610
    return-void

    .line 568
    :cond_0
    const/16 v1, 0x3e7

    goto :goto_0

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCall:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 576
    :cond_2
    const/16 v1, 0x3e7

    goto :goto_2

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessage:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 584
    :cond_4
    const/16 v1, 0x3e7

    goto :goto_4

    .line 588
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVM:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 594
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 595
    .local v9, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x80

    mul-int/lit8 v1, v8, 0x14

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 598
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 599
    .local v10, metrics:Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_8

    .line 600
    iget v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 606
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 601
    :cond_8
    iget v0, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_7

    .line 602
    iget v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 603
    iget v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    div-int/lit8 v0, v0, 0x3

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_7
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 911
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 787
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->gc()V

    .line 788
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 669
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 670
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 663
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 664
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 614
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 620
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 674
    return-void
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .locals 2
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    .line 805
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mActivated:Z

    if-nez v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 808
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 812
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 816
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 820
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_4

    .line 821
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UnlockMediaController;->setControllerVisibility(Z)V

    .line 824
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 825
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOrientationChange(Z)V
    .locals 0
    .parameter "inPortrait"

    .prologue
    .line 657
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 690
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mActivated:Z

    .line 693
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 700
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1076
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 626
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 849
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 704
    const-string v7, "GlassLockScreen"

    const-string v8, "GlassLock onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mPuzzleAnimationRunning:Z

    .line 707
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    iget v9, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    iget v10, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    iget v11, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 709
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateEvent()V

    .line 710
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->forceLayout()V

    .line 711
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 713
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 714
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mActivated:Z

    .line 717
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getWallpaperMode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->switchLockscreenMode(I)V

    .line 718
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenBackground:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 722
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 723
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 727
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v7, :cond_0

    .line 728
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 732
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 741
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 742
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 743
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 748
    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 749
    .local v5, power:Landroid/os/IPowerManager;
    const-string v7, "/sys/class/power_supply/battery/device/power_supply:ac/online"

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    .line 750
    .local v0, acOnline:I
    const-string v7, "/sys/class/power_supply/battery/device/power_supply:usb/online"

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->getIntFromFile(Ljava/lang/String;)I

    move-result v6

    .line 751
    .local v6, usbOnline:I
    const-string v7, "/sys/class/power_supply/battery/chg_temp_cut_off_on"

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->getIntFromFile(Ljava/lang/String;)I

    move-result v2

    .line 752
    .local v2, batteryTempCutOnOff:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 753
    .local v4, lcdDimgingLevel:I
    if-nez v0, :cond_4

    if-nez v6, :cond_4

    .line 754
    const-string v7, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->getIntFromFile(Ljava/lang/String;)I

    move-result v1

    .line 757
    .local v1, batteryLevel:I
    if-gt v1, v4, :cond_3

    .line 759
    if-eqz v5, :cond_1

    :try_start_0
    invoke-interface {v5}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    .end local v1           #batteryLevel:I
    :cond_1
    :goto_1
    return-void

    .line 725
    .end local v0           #acOnline:I
    .end local v2           #batteryTempCutOnOff:I
    .end local v4           #lcdDimgingLevel:I
    .end local v5           #power:Landroid/os/IPowerManager;
    .end local v6           #usbOnline:I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0

    .line 760
    .restart local v0       #acOnline:I
    .restart local v1       #batteryLevel:I
    .restart local v2       #batteryTempCutOnOff:I
    .restart local v4       #lcdDimgingLevel:I
    .restart local v5       #power:Landroid/os/IPowerManager;
    .restart local v6       #usbOnline:I
    :cond_3
    const/4 v7, 0x1

    if-le v2, v7, :cond_1

    .line 762
    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 764
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 766
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "Exception"

    const-string v8, "Added to remove KlocWork() defect "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 770
    .end local v1           #batteryLevel:I
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v7, 0x1

    if-le v2, v7, :cond_5

    .line 771
    if-eqz v5, :cond_1

    :try_start_2
    invoke-interface {v5}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 775
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 777
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "Exception"

    const-string v8, "Added to remove KlocWork() defect "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 773
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz v5, :cond_1

    :try_start_3
    invoke-interface {v5}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 653
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 1030
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 683
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onStop()V

    .line 686
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->forceLayout()V

    .line 643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClock;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 631
    return-void
.end method
