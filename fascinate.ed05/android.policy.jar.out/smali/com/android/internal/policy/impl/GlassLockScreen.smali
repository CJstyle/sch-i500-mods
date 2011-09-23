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

.field private mSweepTextBox:Landroid/widget/LinearLayout;

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
    .line 128
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

    .line 261
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    .line 120
    const/16 v2, 0x34

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockRatio:I

    .line 132
    sget-object v2, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 134
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mPuzzleAnimationRunning:Z

    .line 263
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 264
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 265
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    .line 268
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 270
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    .line 271
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    .line 272
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mActivated:Z

    .line 275
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 276
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    if-eqz v2, :cond_0

    .line 277
    const v2, 0x109007a

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 282
    :goto_0
    const v2, 0x1020255

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    .line 283
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 286
    const v2, 0x10201c7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 288
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    const v2, 0x1020262

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg1:Landroid/widget/TextView;

    .line 292
    const v2, 0x1020263

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg2:Landroid/widget/TextView;

    .line 293
    const v2, 0x10201be

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v3, 0x1040369

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    const v2, 0x1020264

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockMsg3:Landroid/widget/TextView;

    .line 305
    const v2, 0x1020265

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    const v3, 0x1040369

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 307
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton2:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    const v2, 0x1020256

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    .line 319
    const v2, 0x1020261

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    .line 320
    const v2, 0x1020266

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSweepTextBox:Landroid/widget/LinearLayout;

    .line 322
    const v2, 0x1020267

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    const v3, 0x104046b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const v3, 0x10803a0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 332
    const v2, 0x102025a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCallCount:Landroid/widget/TextView;

    .line 333
    const v2, 0x102025d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessageCount:Landroid/widget/TextView;

    .line 334
    const v2, 0x1020260

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVMCount:Landroid/widget/TextView;

    .line 335
    const v2, 0x1020258

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCall:Landroid/widget/RelativeLayout;

    .line 336
    const v2, 0x102025b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessage:Landroid/widget/RelativeLayout;

    .line 337
    const v2, 0x102025e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVM:Landroid/widget/RelativeLayout;

    .line 338
    const v2, 0x1020257

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    .line 339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateEvent()V

    .line 343
    new-instance v2, Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    .line 344
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreen$LockTouchListener;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;Lcom/android/internal/policy/impl/GlassLockScreen$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/UnlockMediaController;->setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V

    .line 345
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getMainLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    .line 346
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    new-instance v2, Lcom/android/internal/policy/impl/UnlockDualClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockDualClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    .line 356
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 364
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 365
    .local v0, densityDpiForGlass:I
    sparse-switch v0, :sswitch_data_0

    .line 394
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 395
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 397
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 398
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 399
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 400
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    .line 419
    :goto_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/GlassLockScreen$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSimLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    if-eqz v2, :cond_3

    .line 497
    sput-boolean v6, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    .line 503
    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusable(Z)V

    .line 504
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusableInTouchMode(Z)V

    .line 505
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreen;->setDescendantFocusability(I)V

    .line 507
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 508
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 509
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 510
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerMediaCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$MediaStateCallback;)V

    .line 511
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 512
    return-void

    .line 279
    .end local v0           #densityDpiForGlass:I
    :cond_0
    const v2, 0x109007b

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 353
    :cond_1
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClock;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreatedInPortrait:Z

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/UnlockClock;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    goto :goto_1

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 367
    .restart local v0       #densityDpiForGlass:I
    :sswitch_0
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 368
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 370
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 371
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 372
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 373
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto :goto_3

    .line 376
    :sswitch_1
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 377
    const/16 v2, 0x230

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 379
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 380
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 381
    iput v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 382
    const/16 v2, 0x2fa

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto :goto_3

    .line 385
    :sswitch_2
    const/16 v2, 0xa8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    .line 386
    const/16 v2, 0x118

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    .line 388
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    .line 389
    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    .line 390
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    .line 391
    const/16 v2, 0x17d

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    goto/16 :goto_3

    .line 500
    :cond_3
    sput-boolean v5, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    goto :goto_4

    .line 365
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
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockHorizontalMargin:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockVerticalMargin:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->GLASS_UNLOCK_SOUND_ONLY_ONCE:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mPuzzleAnimationRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlassLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mPuzzleAnimationRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigLeft:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOrigTop:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetLeft:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetLeft:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/GlassLockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mOffsetTop:I

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-boolean p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mSimLockPreparing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private gc()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 742
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayoutGlassEffect:Landroid/widget/ImageView;

    .line 743
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 746
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 747
    return-void
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 975
    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, p0

    .line 982
    :goto_0
    return-object v0

    .line 977
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 978
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

    .line 979
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    move-object v0, p1

    .line 980
    goto :goto_0

    .line 982
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 840
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 842
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isPermanentBlock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 843
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 862
    :goto_1
    return-object v1

    .line 840
    .end local v0           #missingAndNotProvisioned:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 846
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 862
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 848
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 850
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 852
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 854
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 856
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 858
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 860
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    goto :goto_1

    .line 846
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
    .line 1018
    const/4 v1, 0x0

    .line 1020
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1024
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .local v3, ret:I
    move-object v1, v2

    .line 1029
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_0
    return v3

    .line 1025
    .end local v3           #ret:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1027
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    .restart local v3       #ret:I
    goto :goto_0

    .line 1025
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
    .line 1000
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private isPermanentBlock()Z
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 992
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 993
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 994
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 240
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 242
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 244
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 245
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

.method private updateEvent()V
    .locals 13

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    const-string v0, "content://com.samsung.vvm.vvmcontentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 521
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

    .line 523
    .local v7, cur:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedCall:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    .end local v1           #uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v6

    .line 524
    .local v6, callCount:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$NotiMode;->MissedMsg:Lcom/android/internal/widget/LockPatternUtils$NotiMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getNumMissedEvent(Lcom/android/internal/widget/LockPatternUtils$NotiMode;)I

    move-result v11

    .line 532
    .local v11, msgCount:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "count_for_vvm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 535
    .local v12, vvmCount:I
    const/4 v8, 0x0

    .line 536
    .local v8, itemCount:I
    if-lez v6, :cond_1

    .line 537
    add-int/lit8 v8, v8, 0x1

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCallCount:Landroid/widget/TextView;

    const/16 v1, 0x3e8

    if-ge v6, v1, :cond_0

    move v1, v6

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCallCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCall:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 544
    :goto_1
    if-lez v11, :cond_3

    .line 545
    add-int/lit8 v8, v8, 0x1

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessageCount:Landroid/widget/TextView;

    const/16 v1, 0x3e8

    if-ge v11, v1, :cond_2

    move v1, v11

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessageCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessage:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 552
    :goto_3
    if-lez v12, :cond_5

    .line 553
    add-int/lit8 v8, v8, 0x1

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVMCount:Landroid/widget/TextView;

    const/16 v1, 0x3e8

    if-ge v12, v1, :cond_4

    move v1, v12

    :goto_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVMCount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVM:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 561
    :goto_5
    if-nez v8, :cond_6

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->requestLayout()V

    .line 579
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->invalidate()V

    .line 580
    return-void

    .line 538
    :cond_0
    const/16 v1, 0x3e7

    goto :goto_0

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiMissedCall:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 546
    :cond_2
    const/16 v1, 0x3e7

    goto :goto_2

    .line 550
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiNewMessage:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 554
    :cond_4
    const/16 v1, 0x3e7

    goto :goto_4

    .line 558
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiVVM:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 564
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 565
    .local v9, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0x80

    mul-int/lit8 v1, v8, 0x14

    sub-int/2addr v0, v1

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 569
    .local v10, metrics:Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_8

    .line 570
    iget v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 576
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mNotiRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 571
    :cond_8
    iget v0, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_7

    .line 572
    iget v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 573
    iget v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    div-int/lit8 v0, v0, 0x3

    iput v0, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_7
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 870
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 735
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->gc()V

    .line 736
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 584
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startControllerAnimation()V

    .line 590
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 0
    .parameter "isKeyboardOpen"

    .prologue
    .line 627
    return-void
.end method

.method public onMediaUpdated(ZZLandroid/net/Uri;)V
    .locals 2
    .parameter "bIsPlaying"
    .parameter "bIsStop"
    .parameter "mediaUri"

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mActivated:Z

    if-nez v0, :cond_0

    .line 774
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 756
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 760
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->stopPlaying()V

    .line 764
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_3

    .line 765
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->startPlaying()V

    .line 768
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_4

    .line 769
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/UnlockMediaController;->setControllerVisibility(Z)V

    .line 772
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->playingFlagSet(Z)V

    .line 773
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0, p3}, Lcom/android/internal/policy/impl/UnlockMediaController;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOrientationChange(Z)V
    .locals 0
    .parameter "inPortrait"

    .prologue
    .line 624
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 643
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mActivated:Z

    .line 646
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onPause()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 653
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1036
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 596
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 797
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    .line 657
    const-string v7, "GlassLockScreen"

    const-string v8, "GlassLock onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mPuzzleAnimationRunning:Z

    .line 660
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLayout:Landroid/widget/RelativeLayout;

    iget v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassLeft:I

    iget v9, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassTop:I

    iget v10, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassWidth:I

    iget v11, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mInitGlassHeight:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 662
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateEvent()V

    .line 663
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->forceLayout()V

    .line 664
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBackgroudLayout:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 666
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 668
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mActivated:Z

    .line 670
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 671
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 675
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v7, :cond_0

    .line 676
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/UnlockMediaController;->onResume()V

    .line 680
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHelp2:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 689
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 690
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 691
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 696
    const-string v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    .line 697
    .local v5, power:Landroid/os/IPowerManager;
    const-string v7, "/sys/class/power_supply/battery/device/power_supply:ac/online"

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->getIntFromFile(Ljava/lang/String;)I

    move-result v0

    .line 698
    .local v0, acOnline:I
    const-string v7, "/sys/class/power_supply/battery/device/power_supply:usb/online"

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->getIntFromFile(Ljava/lang/String;)I

    move-result v6

    .line 699
    .local v6, usbOnline:I
    const-string v7, "/sys/class/power_supply/battery/chg_temp_cut_off_on"

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->getIntFromFile(Ljava/lang/String;)I

    move-result v2

    .line 700
    .local v2, batteryTempCutOnOff:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 701
    .local v4, lcdDimgingLevel:I
    if-nez v0, :cond_4

    if-nez v6, :cond_4

    .line 702
    const-string v7, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/GlassLockScreen;->getIntFromFile(Ljava/lang/String;)I

    move-result v1

    .line 705
    .local v1, batteryLevel:I
    if-gt v1, v4, :cond_3

    .line 707
    if-eqz v5, :cond_1

    :try_start_0
    invoke-interface {v5}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v1           #batteryLevel:I
    :cond_1
    :goto_1
    return-void

    .line 673
    .end local v0           #acOnline:I
    .end local v2           #batteryTempCutOnOff:I
    .end local v4           #lcdDimgingLevel:I
    .end local v5           #power:Landroid/os/IPowerManager;
    .end local v6           #usbOnline:I
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0

    .line 708
    .restart local v0       #acOnline:I
    .restart local v1       #batteryLevel:I
    .restart local v2       #batteryTempCutOnOff:I
    .restart local v4       #lcdDimgingLevel:I
    .restart local v5       #power:Landroid/os/IPowerManager;
    .restart local v6       #usbOnline:I
    :cond_3
    const/4 v7, 0x1

    if-le v2, v7, :cond_1

    .line 710
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

    .line 712
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 714
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "Exception"

    const-string v8, "Added to remove KlocWork() defect "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 718
    .end local v1           #batteryLevel:I
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v7, 0x1

    if-le v2, v7, :cond_5

    .line 719
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

    .line 723
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 725
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "Exception"

    const-string v8, "Added to remove KlocWork() defect "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 721
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
    .line 620
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 987
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStatus:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->updateLayout(Lcom/android/internal/policy/impl/GlassLockScreen$Status;)V

    .line 989
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 636
    const-string v0, "GlassLockScreen"

    const-string v1, "GlassLock onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMediaOpened:Z

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockMediaController:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->onStop()V

    .line 639
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->forceLayout()V

    .line 612
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->isDualClockEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockDualClock:Lcom/android/internal/policy/impl/UnlockDualClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockDualClock;->refreshTimeAndDateDisplay()V

    .line 616
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClock;->refreshTimeAndDateDisplay()V

    goto :goto_0
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 601
    return-void
.end method
