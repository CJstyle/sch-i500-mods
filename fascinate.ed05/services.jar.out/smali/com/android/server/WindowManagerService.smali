.class public Lcom/android/server/WindowManagerService;
.super Landroid/view/IWindowManager$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;
.implements Lcom/android/server/KeyInputQueue$HapticFeedbackCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$FadeInOutAnimation;,
        Lcom/android/server/WindowManagerService$DimAnimator;,
        Lcom/android/server/WindowManagerService$H;,
        Lcom/android/server/WindowManagerService$StartingData;,
        Lcom/android/server/WindowManagerService$DummyAnimation;,
        Lcom/android/server/WindowManagerService$AppWindowToken;,
        Lcom/android/server/WindowManagerService$WindowToken;,
        Lcom/android/server/WindowManagerService$WindowState;,
        Lcom/android/server/WindowManagerService$Session;,
        Lcom/android/server/WindowManagerService$InputDispatcherThread;,
        Lcom/android/server/WindowManagerService$KeyQ;,
        Lcom/android/server/WindowManagerService$KeyWaiter;,
        Lcom/android/server/WindowManagerService$PolicyThread;,
        Lcom/android/server/WindowManagerService$WMThread;
    }
.end annotation


# static fields
.field static final ADJUST_WALLPAPER_LAYERS_CHANGED:I = 0x2

.field static final ADJUST_WALLPAPER_VISIBILITY_CHANGED:I = 0x4

.field private static final ALLOW_DISABLE_NO:I = 0x0

.field private static final ALLOW_DISABLE_UNKNOWN:I = -0x1

.field private static final ALLOW_DISABLE_YES:I = 0x1

.field static final BLUR:Z = true

.field private static final CHEEK_THRESHOLD:F = 0.6f

.field static final DEBUG:Z = false

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_APP_TRANSITIONS:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_FREEZE:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_INPUT_METHOD:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_REORDER:Z = false

.field static final DEBUG_RESIZE:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_WALLPAPER:Z = false

.field static final DEBUG_WINDOW_MOVEMENT:Z = false

.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final DEFAULT_FADE_IN_OUT_DURATION:I = 0x190

.field static final DIM_DURATION_MULTIPLIER:I = 0x6

.field private static final EVENT_CHEEK:I = 0x0

.field private static final EVENT_IGNORE_DURATION:I = 0x12c

.field private static final EVENT_NONE:I = 0x0

.field private static final EVENT_UNKNOWN:I = 0x0

.field static final HIDE_STACK_CRAWLS:Z = true

.field static final INJECT_FAILED:I = 0x0

.field static final INJECT_NO_PERMISSION:I = -0x1

.field static final INJECT_SUCCEEDED:I = 0x1

.field static final KEY_REPEAT_DELAY:I = 0x32

.field static final MAX_ANIMATION_DURATION:I = 0x2710

.field static final MEASURE_LATENCY:Z = false

.field static final MIN_TIME_BETWEEN_USERACTIVITIES:I = 0x3e8

.field static final PROFILE_ORIENTATION:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_SECURE:Ljava/lang/String; = "ro.secure"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field static final TYPE_LAYER_MULTIPLIER:I = 0x2710

.field static final TYPE_LAYER_OFFSET:I = 0x3e8

.field static final UPDATE_FOCUS_NORMAL:I = 0x0

.field static final UPDATE_FOCUS_PLACING_SURFACES:I = 0x2

.field static final UPDATE_FOCUS_WILL_ASSIGN_LAYERS:I = 0x1

.field static final UPDATE_FOCUS_WILL_PLACE_SURFACES:I = 0x3

.field static final WALLPAPER_TIMEOUT:J = 0x96L

.field static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L

.field static final WINDOW_LAYER_MULTIPLIER:I = 0x5

.field static final localLOGV:Z

.field private static lt:Landroid/os/LatencyTimer;

.field static final sDummyAnimation:Landroid/view/animation/Animation;


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field private mAllowDisableKeyguard:I

.field mAnimationPending:Z

.field final mAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppTransitionReady:Z

.field mAppTransitionRunning:Z

.field mAppTransitionTimeout:Z

.field mAppsFreezingScreen:I

.field mBackgroundFillerShown:Z

.field mBackgroundFillerSurface:Landroid/view/Surface;

.field final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBlurShown:Z

.field mBlurSurface:Landroid/view/Surface;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClosingApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mCompatibleScreenFrame:Landroid/graphics/Rect;

.field final mContext:Landroid/content/Context;

.field mCurConfiguration:Landroid/content/res/Configuration;

.field mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

.field final mDestroySurface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

.field mDisplay:Landroid/view/Display;

.field mDisplayEnabled:Z

.field mDisplayFrozen:Z

.field private mEventSize:F

.field private mEventState:I

.field final mExitingAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFatTouch:Z

.field final mFinishedStarting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mFocusMayChange:Z

.field mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mForceRemoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mForcedAppOrientation:I

.field mFreezeGcPending:J

.field mFxSession:Landroid/view/SurfaceSession;

.field mH:Lcom/android/server/WindowManagerService$H;

.field final mHaveInputMethods:Z

.field mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

.field private mInLayout:Z

.field mInTouchMode:Z

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInputMethodAnimLayerAdjustment:I

.field final mInputMethodDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

.field final mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

.field final mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

.field private mKeyguardDisabled:Z

.field final mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

.field mKeytraceEnabled:Z

.field mLastBatteryStatsCallTime:J

.field mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

.field mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

.field mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

.field mLastRotationFlags:I

.field mLastTouchEventTime:J

.field mLastTouchEventType:I

.field mLastUserActivityCallTime:J

.field mLastWallpaperTimeoutTime:J

.field mLastWallpaperX:F

.field mLastWallpaperXStep:F

.field mLastWallpaperY:F

.field mLastWallpaperYStep:F

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field final mLimitedAlphaCompositing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLosingFocus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mMinWaitTimeBetweenTouchEvents:I

.field mMouseSurface:Landroid/view/Surface;

.field mMx:I

.field mMy:I

.field mNextAppTransition:I

.field mNextAppTransitionEnter:I

.field mNextAppTransitionExit:I

.field mNextAppTransitionPackage:Ljava/lang/String;

.field final mOpeningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPowerManager:Lcom/android/server/PowerManagerService;

.field final mQueue:Lcom/android/server/WindowManagerService$KeyQ;

.field mRequestedRotation:I

.field final mResizingWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mRotation:I

.field mRotationWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/IRotationWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mSafeMode:Z

.field mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

.field mScreenLayout:I

.field mSendingPointersToWallpaper:Z

.field final mSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/WindowManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field mShowMouse:I

.field mSkipAppTransitionAnimation:Z

.field mStartingIconInTransition:Z

.field mSystemBooted:Z

.field final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTempRect:Landroid/graphics/Rect;

.field final mTmpFloats:[F

.field final mToBottomApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mToTopApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransactionSequence:I

.field mTransitionAnimationScale:F

.field mTurnOnScreen:Z

.field mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field private mViewServer:Lcom/android/server/ViewServer;

.field mWaitingForConfig:Z

.field mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

.field mWallpaperAnimLayerAdjustment:I

.field mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

.field final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/WindowManagerService$WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mWindowAnimationScale:F

.field final mWindowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/WindowManagerService$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mWindows:Ljava/util/ArrayList;

.field mWindowsFreezingScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9189
    new-instance v0, Lcom/android/server/WindowManagerService$DummyAnimation;

    invoke-direct {v0}, Lcom/android/server/WindowManagerService$DummyAnimation;-><init>()V

    sput-object v0, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V
    .locals 7
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 630
    invoke-direct {p0}, Landroid/view/IWindowManager$Stub;-><init>()V

    .line 219
    const/16 v4, 0x1c

    iput v4, p0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    .line 222
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    .line 225
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    .line 232
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    .line 235
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastBatteryStatsCallTime:J

    .line 238
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mKeytraceEnabled:Z

    .line 250
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z

    .line 251
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 256
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    .line 258
    new-instance v4, Lcom/android/server/WindowManagerService$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    const-string v6, "WindowManagerService.mKeyguardTokenWatcher"

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/WindowManagerService$1;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    .line 277
    new-instance v4, Lcom/android/server/WindowManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$2;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    invoke-static {}, Lcom/android/internal/policy/PolicyManager;->makeNewWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 304
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    .line 310
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    .line 315
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    .line 322
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    .line 328
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    .line 335
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    .line 341
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    .line 347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    .line 364
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 376
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    .line 381
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    .line 387
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 398
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 404
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mShowMouse:I

    .line 409
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 411
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTmpFloats:[F

    .line 414
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    .line 415
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 416
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    .line 417
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    .line 418
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 419
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 420
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 422
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    .line 425
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 426
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 427
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 428
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 429
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 430
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 431
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 433
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    .line 438
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 450
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 454
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 455
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 456
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 457
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 458
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 459
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    .line 460
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    .line 461
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    .line 462
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    .line 465
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 468
    new-instance v4, Lcom/android/server/WindowManagerService$H;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$H;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    .line 470
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 471
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 475
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 476
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 480
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 481
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 483
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 487
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 490
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 493
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 495
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 496
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 497
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    .line 498
    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    .line 499
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mSendingPointersToWallpaper:Z

    .line 510
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 514
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 515
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 517
    new-instance v4, Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$KeyWaiter;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    .line 530
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 534
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTempRect:Landroid/graphics/Rect;

    .line 536
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 537
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 540
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    .line 542
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    .line 543
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    .line 5068
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/WindowManagerService;->mEventState:I

    .line 9716
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 635
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 636
    iput-boolean p3, p0, Lcom/android/server/WindowManagerService;->mHaveInputMethods:Z

    .line 637
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLimitedAlphaCompositing:Z

    .line 640
    iput-object p2, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 641
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual {v4, v5}, Lcom/android/server/PowerManagerService;->setPolicy(Landroid/view/WindowManagerPolicy;)V

    .line 642
    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 643
    .local v2, pmc:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "SCREEN_FROZEN"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    .line 645
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 647
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 648
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 651
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_animation_scale"

    iget v6, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 653
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "transition_animation_scale"

    iget v6, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 657
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 658
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 661
    const/16 v1, 0x23

    .line 663
    .local v1, max_events_per_sec:I
    :try_start_0
    const-string v4, "windowsmgr.max_events_per_sec"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 665
    const/4 v4, 0x1

    if-ge v1, v4, :cond_0

    .line 666
    const/16 v1, 0x23

    .line 670
    :cond_0
    :goto_0
    const/16 v4, 0x3e8

    div-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    .line 672
    new-instance v4, Lcom/android/server/WindowManagerService$KeyQ;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$KeyQ;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    .line 674
    new-instance v4, Lcom/android/server/WindowManagerService$InputDispatcherThread;

    invoke-direct {v4, p0}, Lcom/android/server/WindowManagerService$InputDispatcherThread;-><init>(Lcom/android/server/WindowManagerService;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

    .line 676
    new-instance v3, Lcom/android/server/WindowManagerService$PolicyThread;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-direct {v3, v4, p0, p1, p2}, Lcom/android/server/WindowManagerService$PolicyThread;-><init>(Landroid/view/WindowManagerPolicy;Lcom/android/server/WindowManagerService;Landroid/content/Context;Lcom/android/server/PowerManagerService;)V

    .line 677
    .local v3, thr:Lcom/android/server/WindowManagerService$PolicyThread;
    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$PolicyThread;->start()V

    .line 679
    monitor-enter v3

    .line 680
    :goto_1
    :try_start_1
    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$PolicyThread;->mRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 682
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 683
    :catch_0
    move-exception v4

    goto :goto_1

    .line 686
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 688
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputThread:Lcom/android/server/WindowManagerService$InputDispatcherThread;

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$InputDispatcherThread;->start()V

    .line 691
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 692
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/WindowManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 693
    return-void

    .line 686
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 668
    .end local v3           #thr:Lcom/android/server/WindowManagerService$PolicyThread;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZLcom/android/server/WindowManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WindowManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->shouldAllowDisableKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/WindowManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->wakeupIfNeeded(Lcom/android/server/WindowManagerService$WindowState;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->eventType(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/WindowManagerService;Landroid/view/KeyEvent;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->dispatchKey(Landroid/view/KeyEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WindowManagerService;->dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/WindowManagerService;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WindowManagerService;->dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/WindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/WindowManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/WindowManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    return p1
.end method

.method private addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V
    .locals 28
    .parameter "win"
    .parameter "addToToken"

    .prologue
    .line 745
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v10, v0

    .line 746
    .local v10, client:Landroid/view/IWindow;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v20, v0

    .line 747
    .local v20, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v14, v0

    .line 749
    .local v14, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 750
    .local v3, N:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v8, v0

    .line 752
    .local v8, attached:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v8, :cond_12

    .line 753
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 754
    .local v21, tokenWindowsPos:I
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 755
    const/16 v26, 0x1

    sub-int v12, v21, v26

    .line 756
    .local v12, index:I
    if-ltz v12, :cond_5

    .line 760
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 762
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 763
    const/16 v21, 0x0

    .line 881
    .end local v3           #N:I
    .end local v12           #index:I
    .end local p0
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 882
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v21

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 937
    .end local v21           #tokenWindowsPos:I
    :cond_1
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    if-eqz p2, :cond_2

    .line 938
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_2
    return-void

    .line 765
    .restart local v3       #N:I
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    .restart local p0
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v7, v0

    .line 766
    .local v7, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v7, :cond_4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 768
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 769
    add-int/lit8 v21, v21, -0x1

    goto :goto_0

    .line 771
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I

    move-result v16

    .line 772
    .local v16, newIdx:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 780
    add-int/lit8 v26, v16, 0x1

    move-object v0, v14

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 790
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v16           #newIdx:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 791
    .local v4, NA:I
    const/16 v17, 0x0

    .line 792
    .local v17, pos:Ljava/lang/Object;
    const/16 v26, 0x1

    sub-int v11, v4, v26

    .local v11, i:I
    move-object/from16 v4, v17

    .end local v4           #NA:I
    .end local v17           #pos:Ljava/lang/Object;
    :goto_2
    if-ltz v11, :cond_6

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 794
    .local v19, t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 795
    add-int/lit8 v11, v11, -0x1

    .line 809
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_6
    if-eqz v4, :cond_9

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object v0, v4

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    .end local v3           #N:I
    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 813
    .local v7, atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_1e

    .line 814
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 815
    .local v5, NC:I
    if-lez v5, :cond_1e

    .line 816
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 817
    .local v9, bottom:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v9

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-gez v26, :cond_1e

    .line 818
    move-object/from16 v17, v9

    .local v17, pos:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v26, v17

    .line 822
    .end local v5           #NC:I
    .end local v9           #bottom:Lcom/android/server/WindowManagerService$WindowState;
    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_0

    .line 802
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_7
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    move/from16 v26, v0

    if-nez v26, :cond_1f

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_1f

    .line 803
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .local v17, pos:Ljava/lang/Object;
    move-object/from16 v26, v17

    .line 792
    .end local v17           #pos:Ljava/lang/Object;
    :goto_4
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v4, v26

    goto/16 :goto_2

    .line 833
    .local v6, NW:I
    :cond_8
    add-int/lit8 v11, v11, -0x1

    .line 826
    .end local v6           #NW:I
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_9
    if-ltz v11, :cond_a

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 828
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 829
    .restart local v6       #NW:I
    if-lez v6, :cond_8

    .line 830
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v6, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .restart local v17       #pos:Ljava/lang/Object;
    move-object/from16 v4, v17

    .line 835
    .end local v6           #NW:I
    .end local v17           #pos:Ljava/lang/Object;
    .end local v19           #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_a
    if-eqz v4, :cond_b

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object v0, v4

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    .end local v3           #N:I
    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 840
    .restart local v7       #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v7, :cond_1d

    .line 841
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 842
    .restart local v5       #NC:I
    if-lez v5, :cond_1d

    .line 843
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    sub-int v27, v5, v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowState;

    .line 844
    .local v22, top:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v26, v0

    if-ltz v26, :cond_1d

    .line 845
    move-object/from16 v17, v22

    .local v17, pos:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v26, v17

    .line 849
    .end local v5           #NC:I
    .end local v17           #pos:Lcom/android/server/WindowManagerService$WindowState;
    .end local v22           #top:Lcom/android/server/WindowManagerService$WindowState;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_0

    .line 852
    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 853
    .local v15, myLayer:I
    const/4 v11, 0x0

    :goto_6
    if-ge v11, v3, :cond_c

    .line 854
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 855
    .local v23, w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-le v0, v1, :cond_d

    .line 862
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 853
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 868
    .end local v11           #i:I
    .end local v12           #index:I
    .end local v15           #myLayer:I
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v15, v0

    .line 869
    .restart local v15       #myLayer:I
    const/16 v26, 0x1

    sub-int v11, v3, v26

    .end local p0
    .restart local v11       #i:I
    :goto_7
    if-ltz v11, :cond_f

    .line 870
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v26, v0

    move/from16 v0, v26

    move v1, v15

    if-gt v0, v1, :cond_11

    .line 871
    add-int/lit8 v11, v11, 0x1

    .line 875
    :cond_f
    if-gez v11, :cond_10

    const/4 v11, 0x0

    .line 879
    :cond_10
    move-object v0, v14

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 869
    :cond_11
    add-int/lit8 v11, v11, -0x1

    goto :goto_7

    .line 888
    .end local v11           #i:I
    .end local v15           #myLayer:I
    .end local v21           #tokenWindowsPos:I
    .restart local p0
    :cond_12
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 889
    .restart local v4       #NA:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v18, v0

    .line 890
    .local v18, sublayer:I
    const/high16 v13, -0x8000

    .line 891
    .local v13, largestSublayer:I
    const/16 v25, 0x0

    .line 892
    .local v25, windowWithLargestSublayer:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_8
    if-ge v11, v4, :cond_15

    .line 893
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/WindowManagerService$WindowState;

    .line 894
    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    move/from16 v24, v0

    .line 895
    .local v24, wSublayer:I
    move/from16 v0, v24

    move v1, v13

    if-lt v0, v1, :cond_13

    .line 896
    move/from16 v13, v24

    .line 897
    move-object/from16 v25, v23

    .line 899
    :cond_13
    if-gez v18, :cond_18

    .line 902
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    .line 903
    if-eqz p2, :cond_14

    .line 904
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 906
    :cond_14
    if-ltz v24, :cond_17

    move-object/from16 v26, v8

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 922
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_15
    :goto_a
    if-lt v11, v4, :cond_1

    .line 923
    if-eqz p2, :cond_16

    .line 924
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_16
    if-gez v18, :cond_1b

    .line 927
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_1

    .restart local v23       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v24       #wSublayer:I
    :cond_17
    move-object/from16 v26, v23

    .line 906
    goto :goto_9

    .line 913
    :cond_18
    move/from16 v0, v24

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    .line 914
    if-eqz p2, :cond_19

    .line 915
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 917
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto :goto_a

    .line 892
    :cond_1a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 929
    .end local v23           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v24           #wSublayer:I
    :cond_1b
    if-ltz v13, :cond_1c

    move-object/from16 v26, v25

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v26, v8

    goto :goto_b

    .end local v3           #N:I
    .end local v4           #NA:I
    .end local v13           #largestSublayer:I
    .end local v18           #sublayer:I
    .end local v25           #windowWithLargestSublayer:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v12       #index:I
    .restart local v21       #tokenWindowsPos:I
    :cond_1d
    move-object/from16 v26, v4

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v26, v4

    goto/16 :goto_3

    .end local v7           #atoken:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v3       #N:I
    .restart local v19       #t:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1f
    move-object/from16 v26, v4

    goto/16 :goto_4
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z
    .locals 4
    .parameter "wtoken"
    .parameter "lp"
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 2807
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2809
    if-eqz p2, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2810
    new-instance v0, Lcom/android/server/WindowManagerService$FadeInOutAnimation;

    invoke-direct {v0, p4}, Lcom/android/server/WindowManagerService$FadeInOutAnimation;-><init>(Z)V

    .line 2876
    .local v0, a:Landroid/view/animation/Animation;
    :goto_0
    if-eqz v0, :cond_0

    .line 2885
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$AppWindowToken;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2891
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    :goto_1
    iget-object v2, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 2813
    :cond_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2814
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p4, :cond_2

    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_0

    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_2
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    goto :goto_3

    .line 2817
    :cond_3
    const/4 v1, 0x0

    .line 2818
    .local v1, animAttr:I
    sparse-switch p3, :sswitch_data_0

    .line 2870
    :goto_4
    if-eqz v1, :cond_e

    invoke-direct {p0, p2, v1}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object v0, v2

    .restart local v0       #a:Landroid/view/animation/Animation;
    :goto_5
    goto :goto_0

    .line 2820
    .end local v0           #a:Landroid/view/animation/Animation;
    :sswitch_0
    if-eqz p4, :cond_4

    const/4 v2, 0x4

    move v1, v2

    .line 2823
    :goto_6
    goto :goto_4

    .line 2820
    :cond_4
    const/4 v2, 0x5

    move v1, v2

    goto :goto_6

    .line 2825
    :sswitch_1
    if-eqz p4, :cond_5

    const/4 v2, 0x6

    move v1, v2

    .line 2828
    :goto_7
    goto :goto_4

    .line 2825
    :cond_5
    const/4 v2, 0x7

    move v1, v2

    goto :goto_7

    .line 2830
    :sswitch_2
    if-eqz p4, :cond_6

    const/16 v2, 0x8

    move v1, v2

    .line 2833
    :goto_8
    goto :goto_4

    .line 2830
    :cond_6
    const/16 v2, 0x9

    move v1, v2

    goto :goto_8

    .line 2835
    :sswitch_3
    if-eqz p4, :cond_7

    const/16 v2, 0xa

    move v1, v2

    .line 2838
    :goto_9
    goto :goto_4

    .line 2835
    :cond_7
    const/16 v2, 0xb

    move v1, v2

    goto :goto_9

    .line 2840
    :sswitch_4
    if-eqz p4, :cond_8

    const/16 v2, 0xc

    move v1, v2

    .line 2843
    :goto_a
    goto :goto_4

    .line 2840
    :cond_8
    const/16 v2, 0xd

    move v1, v2

    goto :goto_a

    .line 2845
    :sswitch_5
    if-eqz p4, :cond_9

    const/16 v2, 0xe

    move v1, v2

    .line 2848
    :goto_b
    goto :goto_4

    .line 2845
    :cond_9
    const/16 v2, 0xf

    move v1, v2

    goto :goto_b

    .line 2850
    :sswitch_6
    if-eqz p4, :cond_a

    const/16 v2, 0x10

    move v1, v2

    .line 2853
    :goto_c
    goto :goto_4

    .line 2850
    :cond_a
    const/16 v2, 0x11

    move v1, v2

    goto :goto_c

    .line 2855
    :sswitch_7
    if-eqz p4, :cond_b

    const/16 v2, 0x12

    move v1, v2

    .line 2858
    :goto_d
    goto :goto_4

    .line 2855
    :cond_b
    const/16 v2, 0x13

    move v1, v2

    goto :goto_d

    .line 2860
    :sswitch_8
    if-eqz p4, :cond_c

    const/16 v2, 0x14

    move v1, v2

    .line 2863
    :goto_e
    goto :goto_4

    .line 2860
    :cond_c
    const/16 v2, 0x15

    move v1, v2

    goto :goto_e

    .line 2865
    :sswitch_9
    if-eqz p4, :cond_d

    const/16 v2, 0x16

    move v1, v2

    :goto_f
    goto :goto_4

    :cond_d
    const/16 v2, 0x17

    move v1, v2

    goto :goto_f

    .line 2870
    :cond_e
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_5

    .line 2888
    .end local v1           #animAttr:I
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->clearAnimation()V

    goto/16 :goto_1

    .line 2891
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2818
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_2
        0x100a -> :sswitch_4
        0x100d -> :sswitch_6
        0x100e -> :sswitch_8
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_3
        0x200b -> :sswitch_5
        0x200c -> :sswitch_7
        0x200f -> :sswitch_9
    .end sparse-switch
.end method

.method private applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z
    .locals 5
    .parameter "win"
    .parameter "transit"
    .parameter "isEntrance"

    .prologue
    const/4 v4, 0x1

    .line 2711
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mLocalAnimating:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    if-ne v3, p3, :cond_0

    move v3, v4

    .line 2766
    :goto_0
    return v3

    .line 2721
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2722
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p1, p2}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    .line 2723
    .local v1, anim:I
    const/4 v2, -0x1

    .line 2724
    .local v2, attr:I
    const/4 v0, 0x0

    .line 2725
    .local v0, a:Landroid/view/animation/Animation;
    if-eqz v1, :cond_3

    .line 2726
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2750
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2759
    invoke-virtual {p1, v0}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2760
    iput-boolean p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimationIsEntrance:Z

    .line 2766
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_2
    :goto_2
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_0

    .line 2728
    .restart local v0       #a:Landroid/view/animation/Animation;
    .restart local v1       #anim:I
    .restart local v2       #attr:I
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 2742
    :goto_3
    if-ltz v2, :cond_1

    .line 2743
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v2}, Lcom/android/server/WindowManagerService;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_1

    .line 2730
    :sswitch_0
    const/4 v2, 0x0

    .line 2731
    goto :goto_3

    .line 2733
    :sswitch_1
    const/4 v2, 0x1

    .line 2734
    goto :goto_3

    .line 2736
    :sswitch_2
    const/4 v2, 0x2

    .line 2737
    goto :goto_3

    .line 2739
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_3

    .line 2763
    .end local v0           #a:Landroid/view/animation/Animation;
    .end local v1           #anim:I
    .end local v2           #attr:I
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_2

    .line 2766
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 2728
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
        0x2004 -> :sswitch_3
    .end sparse-switch
.end method

.method private applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 2700
    const/16 v0, 0x1003

    .line 2701
    .local v0, transit:I
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    if-eqz v1, :cond_0

    .line 2702
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2703
    const/16 v0, 0x1001

    .line 2706
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 2707
    return-void
.end method

.method private final assignLayersLocked()V
    .locals 7

    .prologue
    .line 9682
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9683
    .local v0, N:I
    const/4 v1, 0x0

    .line 9684
    .local v1, curBaseLayer:I
    const/4 v2, 0x0

    .line 9687
    .local v2, curLayer:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_6

    .line 9688
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 9689
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    if-eq v5, v1, :cond_0

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v5, :cond_0

    if-lez v3, :cond_2

    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_2

    .line 9691
    :cond_0
    add-int/lit8 v2, v2, 0x5

    .line 9692
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    .line 9697
    :goto_1
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_3

    .line 9698
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 9704
    :goto_2
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_5

    .line 9705
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 9687
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9694
    :cond_2
    iget v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move v1, v2

    .line 9695
    iput v2, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    goto :goto_1

    .line 9699
    :cond_3
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_4

    .line 9700
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2

    .line 9702
    :cond_4
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_2

    .line 9706
    :cond_5
    iget-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    if-eqz v5, :cond_1

    .line 9707
    iget v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v6, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_3

    .line 9714
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    return-void
.end method

.method static canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 3
    .parameter "w"

    .prologue
    const v2, 0x20008

    .line 943
    iget-object v1, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v1, v2

    .line 945
    .local v0, fl:I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v1

    .line 948
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 11333
    const/4 v4, 0x0

    .line 11336
    .local v4, result:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v8

    .line 11337
    .local v0, i:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v2, v7, v8

    .line 11338
    .local v2, nextAppIndex:I
    if-ltz v2, :cond_0

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v1, v7

    .line 11341
    .local v1, nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :goto_0
    if-ltz v0, :cond_6

    .line 11342
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 11350
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 11353
    .local v5, thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_1

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v7, :cond_1

    .line 11354
    add-int/lit8 v0, v0, -0x1

    .line 11355
    goto :goto_0

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    move-object v1, v9

    .line 11338
    goto :goto_0

    .line 11361
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    if-eq v5, v1, :cond_5

    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5

    .line 11363
    move v3, v2

    .line 11364
    .local v3, origAppIndex:I
    :cond_2
    if-lez v2, :cond_4

    .line 11365
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v1, v7, :cond_3

    move-object v7, v9

    .line 11398
    .end local v3           #origAppIndex:I
    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    return-object v7

    .line 11372
    .restart local v3       #origAppIndex:I
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 11373
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11374
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    if-ne v1, v5, :cond_2

    .line 11378
    :cond_4
    if-eq v5, v1, :cond_5

    .line 11382
    move v2, v3

    .line 11383
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    check-cast v1, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11388
    .end local v3           #origAppIndex:I
    .restart local v1       #nextApp:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_5
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 11391
    move-object v4, v6

    .end local v5           #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    move-object v7, v4

    .line 11398
    goto :goto_1

    .line 11395
    .restart local v5       #thisApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v6       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 11396
    goto :goto_0
.end method

.method private dispatchKey(Landroid/view/KeyEvent;II)I
    .locals 12
    .parameter "event"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 5602
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->notifyKeytracer(Landroid/view/KeyEvent;)V

    .line 5604
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v11

    .line 5606
    .local v11, focusObj:Ljava/lang/Object;
    if-nez v11, :cond_0

    .line 5607
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No focus window, dropping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5608
    const/4 v1, 0x0

    .line 5670
    :goto_0
    return v1

    .line 5610
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    if-ne v11, v1, :cond_1

    .line 5611
    const/4 v1, 0x1

    goto :goto_0

    .line 5620
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v1, p1}, Lcom/android/server/WindowManagerService$KeyQ;->hasKeyUpEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5621
    const/4 v1, 0x1

    goto :goto_0

    .line 5624
    :cond_2
    move-object v0, v11

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v10, v0

    .line 5629
    .local v10, focus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz p3, :cond_3

    iget-object v1, v10, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v1, v1, Lcom/android/server/WindowManagerService$Session;->mUid:I

    if-eq p3, v1, :cond_3

    .line 5630
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INJECT_EVENTS"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    .line 5633
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: injecting key event from pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owned by uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v3, v3, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5636
    const/4 v1, -0x1

    goto :goto_0

    .line 5640
    :cond_3
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5641
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v2, v10}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 5642
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5645
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v1, p1, v10}, Lcom/android/server/WindowManagerService$KeyWaiter;->recordDispatchState(Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 5651
    :try_start_1
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_4

    .line 5652
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dsptch key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5658
    :goto_1
    iget-object v1, v10, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1}, Landroid/view/IWindow;->dispatchKey(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5659
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 5642
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5655
    :cond_4
    :try_start_3
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dsptch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 5660
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 5661
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WINDOW DIED during key dispatch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5663
    :try_start_4
    iget-object v1, v10, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v2, v10, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1

    .line 5670
    :goto_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 5664
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .locals 29
    .parameter "qev"
    .parameter "ev"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 5111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v28

    .line 5118
    .local v28, targetObj:Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 5121
    .local v13, action:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->notifyKeytracer(Landroid/view/MotionEvent;)V

    .line 5123
    const/4 v5, 0x1

    if-ne v13, v5, :cond_3

    .line 5125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService;->logPointerUpEvent()V

    .line 5131
    :cond_0
    :goto_0
    if-nez v28, :cond_4

    .line 5137
    const/4 v5, 0x2

    if-eq v13, v5, :cond_1

    .line 5138
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No window to dispatch pointer action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5140
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    .line 5141
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 5142
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5143
    if-eqz p1, :cond_2

    .line 5144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5146
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5147
    const/4 v5, 0x0

    .line 5356
    :goto_1
    return v5

    .line 5127
    :cond_3
    if-nez v13, :cond_0

    .line 5128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/PowerManagerService;->logPointerDownEvent()V

    goto :goto_0

    .line 5142
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 5149
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object/from16 v0, v28

    move-object v1, v5

    if-ne v0, v1, :cond_6

    .line 5150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    .line 5151
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x1

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 5152
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5153
    if-eqz p1, :cond_5

    .line 5154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5156
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5157
    const/4 v5, 0x1

    goto :goto_1

    .line 5152
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 5160
    :cond_6
    move-object/from16 v0, v28

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object v6, v0

    .line 5162
    .local v6, target:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    .line 5163
    .local v16, eventTime:J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v18

    .line 5167
    .local v18, eventTimeNano:J
    if-eqz p4, :cond_8

    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v5, v5, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_8

    .line 5168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v7, "android.permission.INJECT_EVENTS"

    move-object v0, v5

    move-object v1, v7

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_8

    .line 5171
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission denied: injecting pointer event from pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " owned by uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    .end local v6           #target:Lcom/android/server/WindowManagerService$WindowState;
    iget v6, v6, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    if-eqz p1, :cond_7

    .line 5175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5177
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5178
    const/4 v5, -0x1

    goto/16 :goto_1

    .line 5186
    .restart local v6       #target:Lcom/android/server/WindowManagerService$WindowState;
    :cond_8
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v7, 0x8000

    and-int/2addr v5, v7

    if-eqz v5, :cond_f

    .line 5189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->isCheekPressedAgainstScreen(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 5191
    .local v14, cheekPress:Z
    const/16 v27, 0x0

    .line 5192
    .local v27, returnFlag:Z
    if-nez v13, :cond_b

    .line 5193
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 5194
    if-eqz v14, :cond_9

    .line 5195
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 5196
    const/16 v27, 0x1

    .line 5226
    :cond_9
    :goto_2
    if-eqz v27, :cond_f

    .line 5228
    if-eqz p1, :cond_a

    .line 5229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5231
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5232
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 5199
    :cond_b
    const/4 v5, 0x1

    if-ne v13, v5, :cond_d

    .line 5200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    move v5, v0

    if-eqz v5, :cond_c

    .line 5202
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    .line 5203
    const/16 v27, 0x1

    goto :goto_2

    .line 5204
    :cond_c
    if-eqz v14, :cond_9

    .line 5206
    const/4 v5, 0x3

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5207
    const/4 v13, 0x3

    goto :goto_2

    .line 5209
    :cond_d
    const/4 v5, 0x2

    if-ne v13, v5, :cond_9

    .line 5210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 5214
    const/16 v27, 0x1

    goto :goto_2

    .line 5215
    :cond_e
    if-eqz v14, :cond_9

    .line 5218
    const/4 v5, 0x3

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5219
    const/4 v13, 0x3

    .line 5222
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFatTouch:Z

    goto :goto_2

    .line 5254
    .end local v14           #cheekPress:Z
    .end local v27           #returnFlag:Z
    :cond_f
    const/4 v5, 0x2

    if-ne v13, v5, :cond_10

    .line 5255
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMinWaitTimeBetweenTouchEvents:I

    move v5, v0

    int-to-long v9, v5

    add-long v21, v7, v9

    .line 5256
    .local v21, nextEventTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 5257
    .local v23, now:J
    cmp-long v5, v23, v21

    if-gez v5, :cond_12

    .line 5259
    sub-long v7, v21, v23

    :try_start_4
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5262
    :goto_3
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    .line 5272
    .end local v21           #nextEventTime:J
    .end local v23           #now:J
    :cond_10
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v12, v0

    monitor-enter v12

    .line 5273
    :try_start_5
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_13

    .line 5276
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .end local v6           #target:Lcom/android/server/WindowManagerService$WindowState;
    move-result-wide v9

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 5277
    if-eqz p1, :cond_11

    .line 5278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5280
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5281
    const/4 v5, 0x1

    monitor-exit v12

    goto/16 :goto_1

    .line 5315
    :catchall_2
    move-exception v5

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 5264
    .restart local v6       #target:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #nextEventTime:J
    .restart local v23       #now:J
    :cond_12
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastTouchEventTime:J

    goto :goto_4

    .line 5284
    .end local v21           #nextEventTime:J
    .end local v23           #now:J
    :cond_13
    if-eqz p1, :cond_15

    const/4 v5, 0x2

    if-ne v13, v5, :cond_15

    .line 5285
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v7, 0x1

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5287
    const/16 p2, 0x0

    .line 5315
    :goto_5
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 5325
    const/4 v5, 0x2

    if-eq v13, v5, :cond_14

    .line 5326
    :try_start_7
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v5

    if-nez v5, :cond_18

    .line 5327
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dsptch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5340
    :cond_14
    :goto_6
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, p2

    move-wide/from16 v2, v16

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindow;->dispatchPointer(Landroid/view/MotionEvent;JZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 5345
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 5289
    :cond_15
    if-nez v13, :cond_17

    .line 5290
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 5291
    .local v26, out:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v26, :cond_17

    .line 5292
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v25

    .line 5293
    .local v25, oev:Landroid/view/MotionEvent;
    const/4 v5, 0x4

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5295
    :cond_16
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 5296
    .local v20, frame:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    neg-float v5, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    neg-float v7, v7

    move-object/from16 v0, v25

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 5298
    :try_start_9
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v5, v0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v25

    move-wide/from16 v2, v16

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindow;->dispatchPointer(Landroid/view/MotionEvent;JZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 5302
    :goto_7
    :try_start_a
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, v25

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5303
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 5304
    if-nez v26, :cond_16

    .line 5305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    .line 5309
    .end local v20           #frame:Landroid/graphics/Rect;
    .end local v25           #oev:Landroid/view/MotionEvent;
    .end local v26           #out:Lcom/android/server/WindowManagerService$WindowState;
    :cond_17
    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/WindowManagerService;->dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V

    .line 5311
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 5312
    .restart local v20       #frame:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    int-to-float v5, v5

    neg-float v5, v5

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    neg-float v7, v7

    move-object/from16 v0, p2

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    goto/16 :goto_5

    .line 5299
    .restart local v25       #oev:Landroid/view/MotionEvent;
    .restart local v26       #out:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v5

    move-object v15, v5

    .line 5300
    .local v15, e:Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WINDOW DIED during outside motion dispatch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_7

    .line 5330
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v20           #frame:Landroid/graphics/Rect;
    .end local v25           #oev:Landroid/view/MotionEvent;
    .end local v26           #out:Lcom/android/server/WindowManagerService$WindowState;
    :cond_18
    :try_start_b
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dsptch > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_6

    .line 5346
    :catch_1
    move-exception v5

    move-object v15, v5

    .line 5347
    .restart local v15       #e:Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WINDOW DIED during motion dispatch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5350
    :try_start_c
    iget-object v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v6, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    .end local v6           #target:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_c} :catch_3

    .line 5356
    :goto_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 5260
    .end local v15           #e:Landroid/os/RemoteException;
    .restart local v6       #target:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #nextEventTime:J
    .restart local v23       #now:J
    :catch_2
    move-exception v5

    goto/16 :goto_3

    .line 5351
    .end local v6           #target:Lcom/android/server/WindowManagerService$WindowState;
    .end local v21           #nextEventTime:J
    .end local v23           #now:J
    .restart local v15       #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v5

    goto :goto_8
.end method

.method private dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I
    .locals 18
    .parameter "qev"
    .parameter "ev"
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 5366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    move-result-object v17

    .line 5368
    .local v17, focusObj:Ljava/lang/Object;
    if-nez v17, :cond_1

    .line 5369
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No focus window, dropping trackball: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5370
    if-eqz p1, :cond_0

    .line 5371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5373
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5374
    const/4 v5, 0x0

    .line 5428
    :goto_0
    return v5

    .line 5376
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object v1, v5

    if-ne v0, v1, :cond_3

    .line 5377
    if-eqz p1, :cond_2

    .line 5378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5380
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5381
    const/4 v5, 0x1

    goto :goto_0

    .line 5384
    :cond_3
    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v16, v0

    .line 5386
    .local v16, focus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz p4, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_5

    .line 5387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "android.permission.INJECT_EVENTS"

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_5

    .line 5390
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied: injecting key event from pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v7, v0

    iget v7, v7, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5393
    if-eqz p1, :cond_4

    .line 5394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5396
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->recycle()V

    .line 5397
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 5401
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 5403
    .local v14, eventTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v5, v0

    monitor-enter v5

    .line 5404
    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 5405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v6, v0

    const/4 v7, 0x2

    move-object v0, v6

    move-object/from16 v1, v16

    move v2, v7

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5409
    const/16 p2, 0x0

    .line 5413
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5416
    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p2

    move-wide v2, v14

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/IWindow;->dispatchTrackball(Landroid/view/MotionEvent;JZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5417
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5411
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    goto :goto_1

    .line 5413
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 5418
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 5419
    .local v13, e:Landroid/os/RemoteException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WINDOW DIED during key dispatch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5421
    :try_start_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5428
    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 5422
    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private eventType(Landroid/view/MotionEvent;)I
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const v4, 0x3f19999a

    .line 5072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    .line 5073
    .local v2, size:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5096
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 5075
    :pswitch_0
    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 5076
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v9

    goto :goto_0

    .line 5078
    :pswitch_1
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 5079
    :cond_1
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    .line 5081
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 5082
    .local v0, N:I
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 5083
    :cond_3
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    move v3, v5

    goto :goto_0

    .line 5084
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 5085
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalSize(I)F

    move-result v2

    .line 5086
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    iput v2, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    .line 5087
    :cond_5
    iget v3, p0, Lcom/android/server/WindowManagerService;->mEventSize:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    move v3, v5

    goto :goto_0

    .line 5084
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5089
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    move v3, v9

    .line 5090
    goto :goto_0

    .line 5092
    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    .line 5073
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findIdxBasedOnAppTokens(Lcom/android/server/WindowManagerService$WindowState;)I
    .locals 7
    .parameter "win"

    .prologue
    const/4 v6, -0x1

    .line 730
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 731
    .local v2, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 732
    .local v1, jmax:I
    if-nez v1, :cond_0

    move v4, v6

    .line 741
    :goto_0
    return v4

    .line 735
    :cond_0
    const/4 v4, 0x1

    sub-int v0, v1, v4

    .local v0, j:I
    :goto_1
    if-ltz v0, :cond_2

    .line 736
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 737
    .local v3, wentry:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v4, v5, :cond_1

    move v4, v0

    .line 738
    goto :goto_0

    .line 735
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v3           #wentry:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    move v4, v6

    .line 741
    goto :goto_0
.end method

.method private findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    .locals 6
    .parameter "hashCode"

    .prologue
    .line 4916
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 4917
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v4

    .line 4932
    :goto_0
    return-object v4

    .line 4920
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 4921
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 4922
    .local v3, windows:Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4924
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 4925
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4926
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 4927
    monitor-exit v4

    move-object v4, v2

    goto :goto_0

    .line 4924
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4930
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    monitor-exit v4

    .line 4932
    const/4 v4, 0x0

    goto :goto_0

    .line 4930
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #windows:Ljava/util/ArrayList;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private findWindowOffsetLocked(I)I
    .locals 10
    .parameter "tokenPos"

    .prologue
    const/4 v9, 0x1

    .line 3969
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3971
    .local v0, NW:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    .line 3972
    move v2, v0

    .line 3973
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 3974
    add-int/lit8 v2, v2, -0x1

    .line 3975
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3976
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3977
    add-int/lit8 v7, v2, 0x1

    .line 4022
    .end local v2           #i:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v7

    .line 3982
    :cond_1
    :goto_1
    if-lez p1, :cond_9

    .line 3985
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    sub-int v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3988
    .local v6, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    if-eqz v7, :cond_2

    .line 3991
    add-int/lit8 p1, p1, -0x1

    .line 3992
    goto :goto_1

    .line 3994
    :cond_2
    iget-object v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3995
    .restart local v2       #i:I
    :cond_3
    if-lez v2, :cond_8

    .line 3996
    add-int/lit8 v2, v2, -0x1

    .line 3997
    iget-object v7, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 3998
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3999
    .local v3, j:I
    :cond_4
    if-lez v3, :cond_6

    .line 4000
    add-int/lit8 v3, v3, -0x1

    .line 4001
    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 4002
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v7, :cond_4

    .line 4003
    sub-int v4, v0, v9

    .local v4, pos:I
    :goto_2
    if-ltz v4, :cond_4

    .line 4004
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    .line 4007
    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    .line 4003
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 4012
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #pos:I
    :cond_6
    sub-int v4, v0, v9

    .restart local v4       #pos:I
    :goto_3
    if-ltz v4, :cond_3

    .line 4013
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_7

    .line 4015
    add-int/lit8 v7, v4, 0x1

    goto :goto_0

    .line 4012
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 4019
    .end local v3           #j:I
    .end local v4           #pos:I
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 4020
    goto :goto_1

    .line 4022
    .end local v2           #i:I
    .end local v6           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_9
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static fixScale(F)F
    .locals 1
    .parameter "scale"

    .prologue
    .line 4353
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    .line 4355
    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 4354
    :cond_1
    const/high16 v0, 0x41a0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 p0, 0x41a0

    goto :goto_0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 4
    .parameter "lp"

    .prologue
    .line 2667
    if-eqz p1, :cond_2

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_2

    .line 2671
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object v0, v2

    .line 2672
    .local v0, packageName:Ljava/lang/String;
    :goto_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2673
    .local v1, resId:I
    const/high16 v2, -0x100

    and-int/2addr v2, v1

    const/high16 v3, 0x100

    if-ne v2, v3, :cond_0

    .line 2674
    const-string v0, "android"

    .line 2678
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2681
    .end local v0           #packageName:Ljava/lang/String;
    .end local v1           #resId:I
    :goto_1
    return-object v2

    .line 2671
    :cond_1
    const-string v2, "android"

    move-object v0, v2

    goto :goto_0

    .line 2681
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 2
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2687
    if-eqz p1, :cond_1

    .line 2688
    const/high16 v0, -0x100

    and-int/2addr v0, p2

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    .line 2689
    const-string p1, "android"

    .line 2693
    :cond_0
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 2696
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusedWindow()Lcom/android/server/WindowManagerService$WindowState;
    .locals 2

    .prologue
    .line 5812
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5813
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5814
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;
    .locals 1

    .prologue
    .line 5818
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    return-object v0
.end method

.method private isSystemSecure()Z
    .locals 4

    .prologue
    const-string v3, "1"

    const-string v2, "0"

    .line 4732
    const-string v0, "1"

    const-string v0, "ro.secure"

    const-string v1, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v0, "ro.debuggable"

    const-string v1, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 5
    .parameter "lp"
    .parameter "animAttr"

    .prologue
    .line 2770
    const/4 v0, 0x0

    .line 2771
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2772
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 2773
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2774
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 2775
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2776
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2779
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 2780
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2782
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 4
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 2786
    const/4 v0, 0x0

    .line 2787
    .local v0, anim:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2788
    .local v1, context:Landroid/content/Context;
    if-ltz p2, :cond_0

    .line 2789
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2790
    .local v2, ent:Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_0

    .line 2791
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 2792
    move v0, p2

    .line 2795
    .end local v2           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_0
    if-eqz v0, :cond_1

    .line 2796
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2798
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static logSurface(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 4
    .parameter "w"
    .parameter "msg"
    .parameter "where"

    .prologue
    const-string v3, "WindowManager"

    .line 2254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  SURFACE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    .local v0, str:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 2257
    const-string v1, "WindowManager"

    invoke-static {v3, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2261
    :goto_0
    return-void

    .line 2259
    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;
    .locals 2
    .parameter "context"
    .parameter "pm"
    .parameter "haveInputMethods"

    .prologue
    .line 547
    new-instance v0, Lcom/android/server/WindowManagerService$WMThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$WMThread;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)V

    .line 548
    .local v0, thr:Lcom/android/server/WindowManagerService$WMThread;
    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WMThread;->start()V

    .line 550
    monitor-enter v0

    .line 551
    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 553
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    goto :goto_0

    .line 557
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WMThread;->mService:Lcom/android/server/WindowManagerService;

    return-object v1

    .line 557
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private moveAppWindowsLocked(Lcom/android/server/WindowManagerService$AppWindowToken;IZ)V
    .locals 2
    .parameter "wtoken"
    .parameter "tokenPos"
    .parameter "updateFocusAndLayout"

    .prologue
    .line 4115
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 4118
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v0

    .line 4121
    .local v0, pos:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v0

    .line 4123
    if-eqz p3, :cond_1

    .line 4124
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4125
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 4127
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4128
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4130
    :cond_1
    return-void
.end method

.method private moveAppWindowsLocked(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter "tokenPos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4134
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4136
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4137
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4138
    .local v3, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_0

    .line 4139
    invoke-direct {p0, v3}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    .line 4136
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4144
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v2

    .line 4147
    .local v2, pos:I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 4148
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowToken;

    .line 4149
    .restart local v3       #token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v3, :cond_2

    .line 4150
    invoke-direct {p0, v2, v3}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 4147
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4154
    .end local v3           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_3
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4155
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 4157
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4158
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4161
    return-void
.end method

.method private notifyKeytracer(Landroid/view/KeyEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5522
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_0

    .line 5523
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 5524
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mKeytraceEnabled:Z

    .line 5533
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mKeytraceEnabled:Z

    if-nez v3, :cond_3

    .line 5555
    :cond_1
    :goto_1
    return-void

    .line 5528
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mKeytraceEnabled:Z

    goto :goto_0

    .line 5535
    :cond_3
    const/4 v3, 0x7

    new-array v0, v3, [I

    .line 5536
    .local v0, dataArry:[I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.keytracer.sendKeytraceData"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5537
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->translateKeycodeForKeytracer(Landroid/view/KeyEvent;)I

    move-result v2

    .line 5539
    .local v2, keycode:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 5540
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v0, v5

    .line 5541
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    aput v3, v0, v6

    .line 5542
    int-to-char v3, v2

    aput v3, v0, v7

    .line 5543
    const/4 v3, 0x3

    aput v5, v0, v3

    .line 5544
    const/4 v3, 0x4

    aput v5, v0, v3

    .line 5545
    const/4 v3, 0x5

    aput v5, v0, v3

    .line 5546
    const/4 v3, 0x6

    aput v5, v0, v3

    .line 5548
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5549
    aput v7, v0, v6

    .line 5551
    :cond_4
    const-string v3, "KEYTRACE_DATA"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5553
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private notifyKeytracer(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5559
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mKeytraceEnabled:Z

    if-nez v2, :cond_0

    .line 5589
    :goto_0
    return-void

    .line 5561
    :cond_0
    const/4 v2, 0x7

    new-array v0, v2, [I

    .line 5562
    .local v0, dataArry:[I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.keytracer.sendKeytraceData"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5564
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v0, v5

    .line 5565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    aput v2, v0, v4

    .line 5566
    const/4 v2, 0x2

    aput v5, v0, v2

    .line 5567
    const/4 v2, 0x3

    aput v5, v0, v2

    .line 5568
    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    .line 5569
    const/4 v2, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    .line 5570
    const/4 v2, 0x6

    aput v5, v0, v2

    .line 5572
    aget v2, v0, v4

    packed-switch v2, :pswitch_data_0

    .line 5582
    :pswitch_0
    const/16 v2, 0x11

    aput v2, v0, v4

    .line 5586
    :goto_1
    const-string v2, "KEYTRACE_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5588
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 5574
    :pswitch_1
    const/16 v2, 0xf

    aput v2, v0, v4

    goto :goto_1

    .line 5577
    :pswitch_2
    const/16 v2, 0x10

    aput v2, v0, v4

    goto :goto_1

    .line 5572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final performLayoutAndPlaceSurfacesLocked()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "WindowManager"

    .line 9718
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-eqz v6, :cond_1

    .line 9722
    const-string v6, "WindowManager"

    const-string v6, "performLayoutAndPlaceSurfacesLocked called while in layout"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9781
    :cond_0
    :goto_0
    return-void

    .line 9726
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    if-nez v6, :cond_0

    .line 9733
    const/4 v2, 0x0

    .line 9734
    .local v2, recoveringMemory:Z
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 9735
    const/4 v2, 0x1

    .line 9737
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 9738
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 9739
    .local v5, ws:Lcom/android/server/WindowManagerService$WindowState;
    const-string v6, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9740
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v5}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 9737
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9742
    .end local v5           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 9743
    const-string v6, "WindowManager"

    const-string v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9744
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 9745
    .local v3, tmp:Ljava/lang/Object;
    monitor-enter v3

    .line 9747
    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9750
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9753
    .end local v1           #i:I
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_3
    iput-boolean v10, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 9755
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLockedInner(Z)V

    .line 9757
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v10

    .line 9758
    .restart local v1       #i:I
    if-ltz v1, :cond_5

    .line 9759
    :goto_3
    if-ltz v1, :cond_4

    .line 9760
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 9761
    .local v4, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-direct {p0, v6, v4}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 9762
    add-int/lit8 v1, v1, -0x1

    .line 9763
    goto :goto_3

    .line 9750
    .end local v4           #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v3       #tmp:Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 9764
    .end local v3           #tmp:Ljava/lang/Object;
    :cond_4
    :try_start_4
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 9766
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 9767
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9768
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9769
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 9777
    .end local v1           #i:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 9778
    .local v0, e:Ljava/lang/RuntimeException;
    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 9779
    const-string v6, "WindowManager"

    const-string v6, "Unhandled exception while layout out windows"

    invoke-static {v8, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 9772
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #i:I
    :cond_5
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    .line 9773
    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-eqz v6, :cond_0

    .line 9774
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 9748
    .restart local v3       #tmp:Ljava/lang/Object;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method private final performLayoutAndPlaceSurfacesLockedInner(Z)V
    .locals 96
    .parameter "recoveringMemory"

    .prologue
    .line 9887
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v54

    .line 9888
    .local v54, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v21

    .line 9889
    .local v21, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v22

    .line 9893
    .local v22, dh:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 9894
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 9895
    const/4 v5, 0x3

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 9898
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 9899
    new-instance v5, Landroid/view/SurfaceSession;

    invoke-direct {v5}, Landroid/view/SurfaceSession;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 9902
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 9903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v93

    .line 9904
    .local v93, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v64

    .line 9910
    .local v64, height:I
    const/16 v9, 0x12

    .line 9911
    .local v9, mMw:I
    const/16 v10, 0x1e

    .line 9913
    .local v10, mMh:I
    sub-int v5, v93, v9

    div-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mMx:I

    .line 9914
    sub-int v5, v64, v10

    div-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mMy:I

    .line 9918
    :try_start_0
    new-instance v5, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const/4 v8, 0x0

    const/4 v11, -0x2

    const/4 v12, 0x4

    invoke-direct/range {v5 .. v12}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;IIIIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    .line 9925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v68

    .line 9927
    .local v68, mCanvas:Landroid/graphics/Canvas;
    new-instance v83, Landroid/graphics/Paint;

    invoke-direct/range {v83 .. v83}, Landroid/graphics/Paint;-><init>()V

    .line 9928
    .local v83, tPaint:Landroid/graphics/Paint;
    const/high16 v5, -0x100

    move-object/from16 v0, v83

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9929
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v83

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9930
    const/high16 v5, 0x4000

    move-object/from16 v0, v83

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9933
    new-instance v69, Landroid/graphics/Path;

    invoke-direct/range {v69 .. v69}, Landroid/graphics/Path;-><init>()V

    .line 9934
    .local v69, mPath:Landroid/graphics/Path;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 9935
    const/high16 v5, 0x4190

    const/high16 v6, 0x4184

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9936
    const/high16 v5, 0x4128

    const/high16 v6, 0x4184

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9937
    const/high16 v5, 0x4184

    const/high16 v6, 0x41e4

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9938
    const/high16 v5, 0x4140

    const/high16 v6, 0x41f0

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9939
    const/high16 v5, 0x40c0

    const/high16 v6, 0x4190

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9940
    const/4 v5, 0x0

    const/high16 v6, 0x41c0

    move-object/from16 v0, v69

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9941
    invoke-virtual/range {v69 .. v69}, Landroid/graphics/Path;->close()V

    .line 9943
    invoke-virtual/range {v68 .. v69}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 9944
    const/4 v5, -0x1

    move-object/from16 v0, v68

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 9945
    move-object/from16 v0, v68

    move-object/from16 v1, v69

    move-object/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 9948
    invoke-static {}, Landroid/view/Surface;->openTransactionLocked()V

    .line 9949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMx:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mMy:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 9950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mMouseSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V

    .line 9951
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9960
    .end local v9           #mMw:I
    .end local v10           #mMh:I
    .end local v64           #height:I
    .end local v68           #mCanvas:Landroid/graphics/Canvas;
    .end local v69           #mPath:Landroid/graphics/Path;
    .end local v83           #tPaint:Landroid/graphics/Paint;
    .end local v93           #width:I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v66, v5, v6

    .local v66, i:I
    :goto_1
    if-ltz v66, :cond_3

    .line 9961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 9960
    add-int/lit8 v66, v66, -0x1

    goto :goto_1

    .line 9952
    .end local v66           #i:I
    .restart local v9       #mMw:I
    .restart local v10       #mMh:I
    .restart local v64       #height:I
    .restart local v93       #width:I
    :catch_0
    move-exception v5

    move-object/from16 v59, v5

    .line 9953
    .local v59, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating mouse surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 9965
    .end local v9           #mMw:I
    .end local v10           #mMh:I
    .end local v59           #e:Ljava/lang/Exception;
    .end local v64           #height:I
    .end local v93           #width:I
    .restart local v66       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v66, v5, v6

    :goto_2
    if-ltz v66, :cond_4

    .line 9966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->hasVisible:Z

    .line 9965
    add-int/lit8 v66, v66, -0x1

    goto :goto_2

    .line 9969
    :cond_4
    const/16 v77, 0x1

    .line 9970
    .local v77, orientationChangeComplete:Z
    const/16 v65, 0x0

    .line 9971
    .local v65, holdScreen:Lcom/android/server/WindowManagerService$Session;
    const/high16 v80, -0x4080

    .line 9972
    .local v80, screenBrightness:F
    const/high16 v48, -0x4080

    .line 9973
    .local v48, buttonBrightness:F
    const/16 v60, 0x0

    .line 9974
    .local v60, focusDisplayed:Z
    const/16 v41, 0x0

    .line 9976
    .local v41, animating:Z
    invoke-static {}, Landroid/view/Surface;->openTransactionLocked()V

    .line 9978
    const/16 v90, 0x0

    .line 9979
    .local v90, wallpaperForceHidingChanged:Z
    const/16 v78, 0x0

    .line 9980
    .local v78, repeats:I
    const/16 v51, 0x0

    .line 9983
    .local v51, changes:I
    :cond_5
    add-int/lit8 v78, v78, 0x1

    .line 9984
    const/4 v5, 0x6

    move/from16 v0, v78

    move v1, v5

    if-le v0, v1, :cond_20

    .line 9985
    :try_start_1
    const-string v5, "WindowManager"

    const-string v6, "Animation repeat aborted after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9986
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 10544
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_6c

    const/4 v5, 0x1

    move/from16 v81, v5

    .line 10546
    .local v81, someoneLosingFocus:Z
    :goto_4
    const/16 v73, 0x0

    .line 10547
    .local v73, obscured:Z
    const/16 v47, 0x0

    .line 10548
    .local v47, blurring:Z
    const/16 v57, 0x0

    .line 10549
    .local v57, dimming:Z
    const/16 v53, 0x0

    .line 10550
    .local v53, covered:Z
    const/16 v82, 0x0

    .line 10551
    .local v82, syswin:Z
    const/16 v45, 0x0

    .line 10553
    .local v45, backgroundFillerShown:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 10555
    .local v32, N:I
    const/4 v5, 0x1

    sub-int v66, v32, v5

    :goto_5
    if-ltz v66, :cond_84

    .line 10556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/android/server/WindowManagerService$WindowState;

    .line 10558
    .local v88, w:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v58, 0x0

    .line 10559
    .local v58, displayed:Z
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 10560
    .local v44, attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v43, v0

    .line 10562
    .local v43, attrFlags:I
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_7b

    .line 10577
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 10585
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_6e

    .line 10586
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move v6, v0

    if-ne v5, v6, :cond_6

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move v6, v0

    if-eq v5, v6, :cond_6d

    :cond_6
    const/4 v5, 0x1

    move/from16 v79, v5

    .line 10590
    .local v79, resize:Z
    :goto_6
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    move/from16 v93, v0

    .line 10591
    .restart local v93       #width:I
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    move/from16 v64, v0

    .line 10592
    .restart local v64       #height:I
    move/from16 v0, v93

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedWidth:I

    .line 10593
    move/from16 v0, v64

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastRequestedHeight:I

    .line 10594
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10599
    :try_start_2
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 10600
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 10601
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 10615
    :cond_7
    :goto_7
    if-eqz v79, :cond_a

    .line 10616
    const/4 v5, 0x1

    move/from16 v0, v93

    move v1, v5

    if-ge v0, v1, :cond_8

    const/16 v93, 0x1

    .line 10617
    :cond_8
    const/4 v5, 0x1

    move/from16 v0, v64

    move v1, v5

    if-ge v0, v1, :cond_9

    const/16 v64, 0x1

    .line 10618
    :cond_9
    :try_start_3
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v5, :cond_a

    .line 10625
    const/4 v5, 0x1

    :try_start_4
    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z

    .line 10626
    move/from16 v0, v93

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceW:I

    .line 10627
    move/from16 v0, v64

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceH:I

    .line 10628
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v93

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 10629
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceX:I

    .line 10630
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceY:I

    .line 10631
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 10647
    :cond_a
    :goto_8
    :try_start_5
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_f

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    move v6, v0

    if-ne v5, v6, :cond_f

    .line 10648
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    const/4 v5, 0x1

    :goto_9
    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 10650
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    const/4 v5, 0x1

    :goto_a
    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 10652
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_72

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_72

    :cond_b
    const/4 v5, 0x1

    move/from16 v52, v5

    .line 10663
    .local v52, configChanged:Z
    :goto_b
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_c

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    move v5, v0

    if-nez v5, :cond_c

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z

    move v5, v0

    if-nez v5, :cond_c

    if-eqz v52, :cond_73

    .line 10668
    :cond_c
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10669
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10670
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 10677
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 10678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-nez v5, :cond_d

    .line 10679
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 10682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v6, v0

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10692
    :cond_d
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 10696
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    .line 10697
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    .line 10698
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    .line 10699
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    if-eqz v5, :cond_e

    .line 10700
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 10705
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10716
    .end local v52           #configChanged:Z
    :cond_f
    :goto_c
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    move v5, v0

    if-nez v5, :cond_10

    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_74

    .line 10717
    :cond_10
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-nez v5, :cond_12

    .line 10725
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 10728
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_11

    .line 10729
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 10731
    :try_start_6
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 10736
    :cond_11
    :goto_d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 10744
    :cond_12
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_13

    .line 10745
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 10811
    :cond_13
    :goto_e
    if-eqz v58, :cond_17

    .line 10812
    if-nez v53, :cond_14

    .line 10813
    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_14

    .line 10815
    const/16 v53, 0x1

    .line 10818
    :cond_14
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_16

    .line 10819
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_15

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-eqz v5, :cond_7a

    .line 10820
    :cond_15
    const/16 v77, 0x0

    .line 10829
    :cond_16
    :goto_f
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    .line 10837
    .end local v64           #height:I
    .end local v79           #resize:Z
    .end local v93           #width:I
    :cond_17
    :goto_10
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isDisplayedLw()Z

    move-result v49

    .line 10839
    .local v49, canBeSeen:Z
    if-eqz v81, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v88

    move-object v1, v5

    if-ne v0, v1, :cond_18

    if-eqz v49, :cond_18

    .line 10840
    const/16 v60, 0x1

    .line 10843
    :cond_18
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    move v5, v0

    move v0, v5

    move/from16 v1, v73

    if-eq v0, v1, :cond_7c

    const/4 v5, 0x1

    move/from16 v74, v5

    .line 10846
    .local v74, obscuredChanged:Z
    :goto_11
    move/from16 v0, v73

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-nez v73, :cond_1e

    .line 10847
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_1d

    .line 10848
    move/from16 v0, v43

    and-int/lit16 v0, v0, 0x80

    move v5, v0

    if-eqz v5, :cond_19

    .line 10849
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    move-object/from16 v65, v0

    .line 10851
    :cond_19
    if-nez v82, :cond_1a

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1a

    const/4 v5, 0x0

    cmpg-float v5, v80, v5

    if-gez v5, :cond_1a

    .line 10853
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    move/from16 v80, v0

    .line 10855
    :cond_1a
    if-nez v82, :cond_1b

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1b

    const/4 v5, 0x0

    cmpg-float v5, v48, v5

    if-gez v5, :cond_1b

    .line 10857
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    move/from16 v48, v0

    .line 10859
    :cond_1b
    if-eqz v49, :cond_1d

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_1c

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7d4

    if-eq v5, v6, :cond_1c

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v5, v0

    const/16 v6, 0x7da

    if-ne v5, v6, :cond_1d

    .line 10863
    :cond_1c
    const/16 v82, 0x1

    .line 10867
    :cond_1d
    if-eqz v49, :cond_7d

    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isOpaqueDrawn()Z

    move-result v5

    if-eqz v5, :cond_7d

    const/4 v5, 0x1

    move/from16 v76, v5

    .line 10868
    .local v76, opaqueDrawn:Z
    :goto_12
    if-eqz v76, :cond_7e

    move-object/from16 v0, v88

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->isFullscreen(II)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 10872
    const/16 v73, 0x1

    .line 10957
    .end local v76           #opaqueDrawn:Z
    :cond_1e
    :goto_13
    if-eqz v74, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    if-ne v0, v1, :cond_1f

    .line 10961
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateWallpaperVisibilityLocked()V

    .line 10555
    :cond_1f
    add-int/lit8 v66, v66, -0x1

    goto/16 :goto_5

    .line 9990
    .end local v32           #N:I
    .end local v43           #attrFlags:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v45           #backgroundFillerShown:Z
    .end local v47           #blurring:Z
    .end local v49           #canBeSeen:Z
    .end local v53           #covered:Z
    .end local v57           #dimming:Z
    .end local v58           #displayed:Z
    .end local v73           #obscured:Z
    .end local v74           #obscuredChanged:Z
    .end local v81           #someoneLosingFocus:Z
    .end local v82           #syswin:Z
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_20
    and-int/lit8 v5, v51, 0x7

    if-eqz v5, :cond_23

    .line 9993
    and-int/lit8 v5, v51, 0x4

    if-eqz v5, :cond_21

    .line 9994
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_21

    .line 9995
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 9996
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9999
    :cond_21
    and-int/lit8 v5, v51, 0x2

    if-eqz v5, :cond_22

    .line 10001
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 10002
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 10003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 10006
    :cond_22
    and-int/lit8 v5, v51, 0x1

    if-eqz v5, :cond_23

    .line 10007
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 10012
    :cond_23
    const/4 v5, 0x4

    move/from16 v0, v78

    move v1, v5

    if-ge v0, v1, :cond_25

    .line 10013
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()I

    move-result v51

    .line 10014
    if-eqz v51, :cond_26

    .line 10540
    :cond_24
    :goto_14
    if-nez v51, :cond_5

    goto/16 :goto_3

    .line 10018
    :cond_25
    const-string v5, "WindowManager"

    const-string v6, "Layout repeat skipped after too many iterations"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10019
    const/16 v51, 0x0

    .line 10022
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    move v5, v0

    add-int/lit8 v87, v5, 0x1

    move/from16 v0, v87

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mTransactionSequence:I

    .line 10026
    .local v87, transactionSequence:I
    const/16 v86, 0x0

    .line 10027
    .local v86, tokensAnimating:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 10028
    .local v33, NAT:I
    const/16 v66, 0x0

    :goto_15
    move/from16 v0, v66

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 10029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v54

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 10030
    const/16 v86, 0x1

    .line 10028
    :cond_27
    add-int/lit8 v66, v66, 0x1

    goto :goto_15

    .line 10033
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 10034
    .local v35, NEAT:I
    const/16 v66, 0x0

    :goto_16
    move/from16 v0, v66

    move/from16 v1, v35

    if-ge v0, v1, :cond_2a

    .line 10035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v0, v5

    move-wide/from16 v1, v54

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 10036
    const/16 v86, 0x1

    .line 10034
    :cond_29
    add-int/lit8 v66, v66, 0x1

    goto :goto_16

    .line 10046
    :cond_2a
    move/from16 v41, v86

    .line 10048
    const/16 v85, 0x0

    .line 10049
    .local v85, tokenMayBeDrawn:Z
    const/16 v91, 0x0

    .line 10050
    .local v91, wallpaperMayChange:Z
    const/16 v61, 0x0

    .line 10052
    .local v61, forceHiding:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->beginAnimationLw(II)V

    .line 10054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 10056
    .restart local v32       #N:I
    const/4 v5, 0x1

    sub-int v66, v32, v5

    :goto_17
    if-ltz v66, :cond_48

    .line 10057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/android/server/WindowManagerService$WindowState;

    .line 10059
    .restart local v88       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 10061
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_2f

    .line 10063
    move-object/from16 v0, v88

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->commitFinishDrawingLocked(J)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 10064
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b

    .line 10068
    const/16 v91, 0x1

    .line 10072
    :cond_2b
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move/from16 v92, v0

    .line 10073
    .local v92, wasAnimating:Z
    move-object/from16 v0, v88

    move-wide/from16 v1, v54

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowState;->stepAnimationLocked(JII)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 10074
    const/16 v41, 0x1

    .line 10077
    :cond_2c
    if-eqz v92, :cond_2d

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    if-ne v0, v1, :cond_2d

    .line 10078
    const/16 v91, 0x1

    .line 10081
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 10082
    if-nez v92, :cond_35

    if-eqz v41, :cond_35

    .line 10086
    const/16 v90, 0x1

    .line 10087
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 10128
    :cond_2e
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->animatingWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    .line 10131
    .end local v92           #wasAnimating:Z
    :cond_2f
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v42, v0

    .line 10132
    .local v42, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v42, :cond_47

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    move v5, v0

    if-eqz v5, :cond_30

    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_47

    .line 10133
    :cond_30
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    move v5, v0

    move v0, v5

    move/from16 v1, v87

    if-eq v0, v1, :cond_31

    .line 10134
    move/from16 v0, v87

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->lastTransactionSequence:I

    .line 10135
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 10136
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 10138
    :cond_31
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isOnScreen()Z

    move-result v5

    if-nez v5, :cond_32

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_34

    :cond_32
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move v5, v0

    if-nez v5, :cond_34

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move v5, v0

    if-nez v5, :cond_34

    .line 10155
    move-object/from16 v0, v42

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v88

    move-object v1, v5

    if-eq v0, v1, :cond_46

    .line 10156
    move-object/from16 v0, v42

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_33

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    move v5, v0

    if-nez v5, :cond_34

    .line 10157
    :cond_33
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    .line 10158
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 10159
    move-object/from16 v0, v42

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    .line 10164
    const/16 v85, 0x1

    .line 10056
    :cond_34
    :goto_19
    add-int/lit8 v66, v66, -0x1

    goto/16 :goto_17

    .line 10088
    .end local v42           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v92       #wasAnimating:Z
    :cond_35
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    if-nez v5, :cond_2e

    .line 10089
    const/16 v61, 0x1

    goto/16 :goto_18

    .line 10091
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 10093
    if-eqz v61, :cond_38

    .line 10094
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v88

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->hideLw(ZZ)Z

    move-result v50

    .line 10122
    .local v50, changed:Z
    :cond_37
    :goto_1a
    if-eqz v50, :cond_2e

    move-object/from16 v0, v44

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v5, v0

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-eqz v5, :cond_2e

    .line 10124
    const/16 v91, 0x1

    goto/16 :goto_18

    .line 10098
    .end local v50           #changed:Z
    :cond_38
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v88

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->showLw(ZZ)Z

    move-result v50

    .line 10101
    .restart local v50       #changed:Z
    if-eqz v50, :cond_37

    .line 10102
    if-eqz v90, :cond_39

    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 10108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v38

    .line 10109
    .local v38, a:Landroid/view/animation/Animation;
    if-eqz v38, :cond_39

    .line 10110
    move-object/from16 v0, v88

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$WindowState;->setAnimation(Landroid/view/animation/Animation;)V

    .line 10113
    .end local v38           #a:Landroid/view/animation/Animation;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move v6, v0

    if-ge v5, v6, :cond_37

    .line 10118
    :cond_3a
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1a

    .line 10992
    .end local v32           #N:I
    .end local v33           #NAT:I
    .end local v35           #NEAT:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v50           #changed:Z
    .end local v61           #forceHiding:Z
    .end local v85           #tokenMayBeDrawn:Z
    .end local v86           #tokensAnimating:Z
    .end local v87           #transactionSequence:I
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v91           #wallpaperMayChange:Z
    .end local v92           #wasAnimating:Z
    :catch_1
    move-exception v5

    move-object/from16 v59, v5

    .line 10993
    .local v59, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception in Window Manager"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10996
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_3b
    :goto_1b
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    .line 11001
    if-eqz v77, :cond_3d

    .line 11002
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_3c

    .line 11003
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 11004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11006
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 11009
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v66

    .line 11010
    if-lez v66, :cond_40

    .line 11012
    :cond_3e
    add-int/lit8 v66, v66, -0x1

    .line 11013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Lcom/android/server/WindowManagerService$WindowState;

    .line 11017
    .local v94, win:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v56, 0x0

    .line 11018
    .local v56, diff:I
    :try_start_8
    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    if-eq v5, v6, :cond_89

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    if-eqz v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v56

    if-eqz v56, :cond_89

    :cond_3f
    const/4 v5, 0x1

    move/from16 v52, v5

    .line 11029
    .restart local v52       #configChanged:Z
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v94

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 11030
    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v23, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v24

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v25

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v94

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v28, v0

    if-eqz v52, :cond_8a

    move-object/from16 v0, v94

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object v5, v0

    move-object/from16 v29, v5

    :goto_1d
    invoke-interface/range {v23 .. v29}, Landroid/view/IWindow;->resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    .line 11034
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mContentInsetsChanged:Z

    .line 11035
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsetsChanged:Z

    .line 11036
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceResized:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_c

    .line 11040
    .end local v52           #configChanged:Z
    :goto_1e
    if-gtz v66, :cond_3e

    .line 11041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 11045
    .end local v56           #diff:I
    .end local v94           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_40
    const/16 v89, 0x0

    .line 11046
    .local v89, wallpaperDestroyed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v66

    .line 11047
    if-lez v66, :cond_44

    .line 11049
    :cond_41
    add-int/lit8 v66, v66, -0x1

    .line 11050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v94

    check-cast v94, Lcom/android/server/WindowManagerService$WindowState;

    .line 11051
    .restart local v94       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 11052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v94

    if-ne v0, v1, :cond_42

    .line 11053
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 11055
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object/from16 v0, v94

    move-object v1, v5

    if-ne v0, v1, :cond_43

    .line 11056
    const/16 v89, 0x1

    .line 11058
    :cond_43
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    .line 11059
    if-gtz v66, :cond_41

    .line 11060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 11064
    .end local v94           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v66, v5, v6

    :goto_1f
    if-ltz v66, :cond_8b

    .line 11065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11066
    .local v84, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v84

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_45

    .line 11067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11068
    move-object/from16 v0, v84

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    move v5, v0

    const/16 v6, 0x7dd

    if-ne v5, v6, :cond_45

    .line 11069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11064
    :cond_45
    add-int/lit8 v66, v66, -0x1

    goto :goto_1f

    .line 10167
    .end local v84           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v89           #wallpaperDestroyed:Z
    .restart local v32       #N:I
    .restart local v33       #NAT:I
    .restart local v35       #NEAT:I
    .restart local v42       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v61       #forceHiding:Z
    .restart local v85       #tokenMayBeDrawn:Z
    .restart local v86       #tokensAnimating:Z
    .restart local v87       #transactionSequence:I
    .restart local v88       #w:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v91       #wallpaperMayChange:Z
    :cond_46
    :try_start_9
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 10168
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v42

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_19

    .line 10171
    :cond_47
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-eqz v5, :cond_34

    .line 10172
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->performShowLocked()Z

    goto/16 :goto_19

    .line 10176
    .end local v42           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->finishAnimationLw()I

    move-result v5

    or-int v51, v51, v5

    .line 10178
    if-eqz v85, :cond_4c

    .line 10181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v37

    .line 10182
    .local v37, NT:I
    const/16 v66, 0x0

    :goto_20
    move/from16 v0, v66

    move/from16 v1, v37

    if-ge v0, v1, :cond_4c

    .line 10183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowToken;

    iget-object v12, v5, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10184
    .local v12, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v12, :cond_4a

    .line 10182
    :cond_49
    :goto_21
    add-int/lit8 v66, v66, 0x1

    goto :goto_20

    .line 10187
    :cond_4a
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v5, :cond_4b

    .line 10188
    move-object v0, v12

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v72, v0

    .line 10189
    .local v72, numInteresting:I
    if-lez v72, :cond_49

    iget v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v72

    if-lt v0, v1, :cond_49

    .line 10194
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 10195
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 10196
    const/16 v77, 0x1

    goto :goto_21

    .line 10198
    .end local v72           #numInteresting:I
    :cond_4b
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_49

    .line 10199
    move-object v0, v12

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->numInterestingWindows:I

    move/from16 v72, v0

    .line 10200
    .restart local v72       #numInteresting:I
    if-lez v72, :cond_49

    iget v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->numDrawnWindows:I

    move v0, v5

    move/from16 v1, v72

    if-lt v0, v1, :cond_49

    .line 10205
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 10206
    or-int/lit8 v51, v51, 0x8

    .line 10209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 10210
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    goto :goto_21

    .line 10220
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v37           #NT:I
    .end local v72           #numInteresting:I
    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-eqz v5, :cond_62

    .line 10221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 10222
    .local v36, NN:I
    const/16 v63, 0x1

    .line 10227
    .local v63, goodToGo:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_4e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    move v5, v0

    if-nez v5, :cond_4e

    .line 10231
    const/16 v66, 0x0

    :goto_22
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_4e

    if-eqz v63, :cond_4e

    .line 10232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10237
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-nez v5, :cond_4d

    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    if-nez v5, :cond_4d

    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    if-nez v5, :cond_4d

    .line 10239
    const/16 v63, 0x0

    .line 10231
    :cond_4d
    add-int/lit8 v66, v66, 0x1

    goto :goto_22

    .line 10243
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_4e
    if-eqz v63, :cond_62

    .line 10245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move v15, v0

    .line 10246
    .local v15, transit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    move v5, v0

    if-eqz v5, :cond_4f

    .line 10247
    const/4 v15, -0x1

    .line 10249
    :cond_4f
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 10250
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 10251
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 10252
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 10253
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 10254
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 10256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 10263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_52

    .line 10264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 10265
    const/16 v66, 0x0

    :goto_23
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_51

    .line 10266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10267
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    if-eqz v5, :cond_50

    .line 10268
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 10269
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v36

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Lcom/android/server/WindowManagerService$AppWindowToken;IZ)V

    .line 10265
    :cond_50
    add-int/lit8 v66, v66, 0x1

    goto :goto_23

    .line 10272
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10275
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v75, v0

    .line 10277
    .local v75, oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 10278
    const/16 v91, 0x0

    .line 10282
    const/4 v13, 0x0

    .line 10283
    .local v13, animLp:Landroid/view/WindowManager$LayoutParams;
    const/16 v40, 0x0

    .line 10284
    .local v40, animToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v46, -0x1

    .line 10290
    .local v46, bestAnimLayer:I
    const/16 v62, 0x0

    .line 10301
    .local v62, foundWallpapers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 10302
    .local v34, NC:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v36, v34, v5

    .line 10303
    const/16 v66, 0x0

    :goto_24
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_58

    .line 10306
    move/from16 v0, v66

    move/from16 v1, v34

    if-ge v0, v1, :cond_56

    .line 10307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10308
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v70, 0x1

    .line 10313
    .local v70, mode:I
    :goto_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_54

    .line 10314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v12, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v5, v12, :cond_54

    .line 10316
    :cond_53
    or-int v62, v62, v70

    .line 10319
    :cond_54
    iget-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    if-eqz v5, :cond_55

    .line 10320
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->findMainWindow()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v95

    .line 10321
    .local v95, ws:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v95, :cond_55

    .line 10324
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x2000

    and-int/2addr v5, v6

    if-eqz v5, :cond_57

    .line 10325
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 10326
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v40, v0

    .line 10327
    const v46, 0x7fffffff

    .line 10303
    .end local v95           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_55
    :goto_26
    add-int/lit8 v66, v66, 0x1

    goto :goto_24

    .line 10310
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v70           #mode:I
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    sub-int v6, v66, v34

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10311
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/16 v70, 0x2

    .restart local v70       #mode:I
    goto :goto_25

    .line 10328
    .restart local v95       #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_57
    move-object/from16 v0, v95

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move v5, v0

    move v0, v5

    move/from16 v1, v46

    if-le v0, v1, :cond_55

    .line 10329
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 10330
    move-object/from16 v0, v95

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v40, v0

    .line 10331
    move-object/from16 v0, v95

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move/from16 v46, v0

    goto :goto_26

    .line 10337
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v70           #mode:I
    .end local v95           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_58
    const/4 v5, 0x3

    move/from16 v0, v62

    move v1, v5

    if-ne v0, v1, :cond_5c

    .line 10340
    sparse-switch v15, :sswitch_data_0

    .line 10368
    :cond_59
    :goto_27
    and-int/lit16 v5, v15, 0x1000

    if-eqz v5, :cond_5e

    .line 10369
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10370
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 10381
    :cond_5a
    :goto_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 10382
    const/4 v13, 0x0

    .line 10385
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 10386
    const/16 v66, 0x0

    :goto_29
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_5f

    .line 10387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10390
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->reportedVisible:Z

    .line 10391
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 10392
    const/4 v5, 0x0

    iput-object v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 10393
    const/4 v14, 0x1

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 10394
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 10395
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 10396
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->showAllWindowsLocked()V

    .line 10386
    add-int/lit8 v66, v66, 0x1

    goto :goto_29

    .line 10344
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :sswitch_0
    const/16 v15, 0x100e

    .line 10345
    goto :goto_27

    .line 10349
    :sswitch_1
    const/16 v15, 0x200f

    goto :goto_27

    .line 10354
    :cond_5c
    if-eqz v75, :cond_5d

    .line 10357
    const/16 v15, 0x200c

    goto :goto_27

    .line 10360
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_59

    .line 10363
    const/16 v15, 0x100d

    goto :goto_27

    .line 10371
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    move-object v5, v0

    if-eqz v5, :cond_5a

    .line 10372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    move-object v13, v0

    .line 10373
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10374
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    goto :goto_28

    .line 10398
    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v36

    .line 10399
    const/16 v66, 0x0

    :goto_2a
    move/from16 v0, v66

    move/from16 v1, v36

    if-ge v0, v1, :cond_60

    .line 10400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 10403
    .restart local v12       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 10404
    const/4 v5, 0x0

    iput-object v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 10405
    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 10406
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 10407
    const/4 v5, 0x0

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    .line 10411
    const/4 v5, 0x1

    iput-boolean v5, v12, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 10399
    add-int/lit8 v66, v66, 0x1

    goto :goto_2a

    .line 10414
    .end local v12           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_60
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 10416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10421
    or-int/lit8 v51, v51, 0x1

    .line 10422
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 10423
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v5

    if-nez v5, :cond_61

    .line 10424
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 10426
    :cond_61
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 10427
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 10431
    .end local v13           #animLp:Landroid/view/WindowManager$LayoutParams;
    .end local v15           #transit:I
    .end local v34           #NC:I
    .end local v36           #NN:I
    .end local v40           #animToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v46           #bestAnimLayer:I
    .end local v62           #foundWallpapers:I
    .end local v63           #goodToGo:Z
    .end local v75           #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_62
    const/16 v39, 0x0

    .line 10433
    .local v39, adjResult:I
    if-nez v41, :cond_63

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_63

    .line 10440
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 10442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 10445
    or-int/lit8 v51, v51, 0x1

    .line 10446
    or-int/lit8 v39, v39, 0x2

    .line 10447
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 10448
    const/16 v91, 0x1

    .line 10452
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 10455
    :cond_63
    if-eqz v90, :cond_67

    if-nez v51, :cond_67

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    move v5, v0

    if-nez v5, :cond_67

    .line 10462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v75, v0

    .line 10463
    .restart local v75       #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_64

    .line 10471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-eqz v5, :cond_64

    .line 10475
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 10476
    or-int/lit8 v51, v51, 0x8

    .line 10479
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v39, v39, v5

    .line 10480
    const/16 v91, 0x0

    .line 10481
    const/16 v90, 0x0

    .line 10485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-nez v5, :cond_67

    .line 10488
    const/16 v61, 0x0

    .line 10489
    const/4 v5, 0x1

    sub-int v66, v32, v5

    :goto_2b
    if-ltz v66, :cond_67

    .line 10490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Lcom/android/server/WindowManagerService$WindowState;

    .line 10491
    .restart local v88       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_65

    .line 10492
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v44, v0

    .line 10493
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 10495
    const/16 v61, 0x1

    .line 10489
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_65
    :goto_2c
    add-int/lit8 v66, v66, -0x1

    goto :goto_2b

    .line 10496
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 10497
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    move v5, v0

    if-nez v5, :cond_65

    .line 10500
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/WindowManagerService$WindowState;->clearAnimation()V

    goto :goto_2c

    .line 10508
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v75           #oldWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_67
    if-eqz v91, :cond_68

    .line 10511
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    or-int v39, v39, v5

    .line 10514
    :cond_68
    and-int/lit8 v5, v39, 0x2

    if-eqz v5, :cond_6b

    .line 10517
    or-int/lit8 v51, v51, 0x1

    .line 10518
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 10525
    :cond_69
    :goto_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    move v5, v0

    if-eqz v5, :cond_6a

    .line 10526
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mFocusMayChange:Z

    .line 10527
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 10528
    or-int/lit8 v51, v51, 0x8

    .line 10529
    const/16 v39, 0x0

    .line 10533
    :cond_6a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    move v5, v0

    if-eqz v5, :cond_24

    .line 10534
    or-int/lit8 v51, v51, 0x1

    goto/16 :goto_14

    .line 10519
    :cond_6b
    and-int/lit8 v5, v39, 0x4

    if-eqz v5, :cond_69

    .line 10522
    or-int/lit8 v51, v51, 0x1

    goto :goto_2d

    .line 10544
    .end local v32           #N:I
    .end local v33           #NAT:I
    .end local v35           #NEAT:I
    .end local v39           #adjResult:I
    .end local v61           #forceHiding:Z
    .end local v85           #tokenMayBeDrawn:Z
    .end local v86           #tokensAnimating:Z
    .end local v87           #transactionSequence:I
    .end local v91           #wallpaperMayChange:Z
    :cond_6c
    const/4 v5, 0x0

    move/from16 v81, v5

    goto/16 :goto_4

    .line 10586
    .restart local v32       #N:I
    .restart local v43       #attrFlags:I
    .restart local v44       #attrs:Landroid/view/WindowManager$LayoutParams;
    .restart local v45       #backgroundFillerShown:Z
    .restart local v47       #blurring:Z
    .restart local v53       #covered:Z
    .restart local v57       #dimming:Z
    .restart local v58       #displayed:Z
    .restart local v73       #obscured:Z
    .restart local v81       #someoneLosingFocus:Z
    .restart local v82       #syswin:Z
    .restart local v88       #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6d
    const/4 v5, 0x0

    move/from16 v79, v5

    goto/16 :goto_6

    .line 10602
    .restart local v64       #height:I
    .restart local v79       #resize:Z
    .restart local v93       #width:I
    :catch_2
    move-exception v5

    move-object/from16 v59, v5

    .line 10603
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error positioning surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10604
    if-nez p1, :cond_7

    .line 10605
    const-string v5, "position"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 10609
    .end local v59           #e:Ljava/lang/RuntimeException;
    .end local v64           #height:I
    .end local v79           #resize:Z
    .end local v93           #width:I
    :cond_6e
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    const/4 v5, 0x1

    move/from16 v79, v5

    .line 10610
    .restart local v79       #resize:Z
    :goto_2e
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v93

    .line 10611
    .restart local v93       #width:I
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v64

    .line 10612
    .restart local v64       #height:I
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastShownFrame:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 10609
    .end local v64           #height:I
    .end local v79           #resize:Z
    .end local v93           #width:I
    :cond_6f
    const/4 v5, 0x0

    move/from16 v79, v5

    goto :goto_2e

    .line 10633
    .restart local v64       #height:I
    .restart local v79       #resize:Z
    .restart local v93       #width:I
    :catch_3
    move-exception v5

    move-object/from16 v59, v5

    .line 10637
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure updating surface of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "size=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), pos=("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownFrame:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10641
    if-nez p1, :cond_a

    .line 10642
    const-string v5, "size"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 10648
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_70
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 10650
    :cond_71
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 10652
    :cond_72
    const/4 v5, 0x0

    move/from16 v52, v5

    goto/16 :goto_b

    .line 10706
    .restart local v52       #configChanged:Z
    :cond_73
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 10707
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_f

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_f

    .line 10711
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_c

    .line 10732
    .end local v52           #configChanged:Z
    :catch_4
    move-exception v5

    move-object/from16 v59, v5

    .line 10733
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception hiding surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 10749
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_74
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    if-ne v5, v6, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    move v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v6, v0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_75

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_79

    .line 10758
    :cond_75
    const/16 v58, 0x1

    .line 10759
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastAlpha:F

    .line 10760
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastLayer:I

    .line 10761
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDx:F

    .line 10762
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDx:F

    .line 10763
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDsDy:F

    .line 10764
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastDtDy:F

    .line 10765
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHScale:F

    .line 10766
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastVScale:F

    .line 10773
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v5, :cond_76

    .line 10775
    :try_start_a
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceAlpha:F

    .line 10776
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mShownAlpha:F

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setAlpha(F)V

    .line 10777
    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, v88

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceLayer:I

    .line 10778
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 10779
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDx:F

    move v6, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v7, v0

    mul-float/2addr v6, v7

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDx:F

    move v7, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v8, v0

    mul-float/2addr v7, v8

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDsDy:F

    move v8, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    move v9, v0

    mul-float/2addr v8, v9

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDtDy:F

    move v9, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move v10, v0

    mul-float/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    .line 10790
    :cond_76
    :goto_2f
    :try_start_b
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    move v5, v0

    if-eqz v5, :cond_77

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move v5, v0

    if-nez v5, :cond_77

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move v5, v0

    if-nez v5, :cond_77

    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mReadyToShow:Z

    move v5, v0

    if-nez v5, :cond_77

    .line 10797
    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 10798
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHasDrawn:Z

    .line 10799
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mLastHidden:Z

    .line 10804
    :cond_77
    :goto_30
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_13

    .line 10805
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowToken;->hasVisible:Z

    goto/16 :goto_e

    .line 10782
    :catch_5
    move-exception v5

    move-object/from16 v59, v5

    .line 10783
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error updating surface in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10784
    if-nez p1, :cond_76

    .line 10785
    const-string v5, "update"

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    goto :goto_2f

    .line 10801
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_78
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto :goto_30

    .line 10808
    :cond_79
    const/16 v58, 0x1

    goto/16 :goto_e

    .line 10824
    :cond_7a
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_f

    .line 10831
    .end local v64           #height:I
    .end local v79           #resize:Z
    .end local v93           #width:I
    :cond_7b
    move-object/from16 v0, v88

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_17

    .line 10834
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v88

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_10

    .line 10843
    .restart local v49       #canBeSeen:Z
    :cond_7c
    const/4 v5, 0x0

    move/from16 v74, v5

    goto/16 :goto_11

    .line 10867
    .restart local v74       #obscuredChanged:Z
    :cond_7d
    const/4 v5, 0x0

    move/from16 v76, v5

    goto/16 :goto_12

    .line 10873
    .restart local v76       #opaqueDrawn:Z
    :cond_7e
    if-eqz v76, :cond_80

    move-object/from16 v0, v88

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$WindowState;->needsBackgroundFiller(II)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 10876
    const/16 v73, 0x1

    .line 10877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    if-nez v5, :cond_7f

    .line 10879
    :try_start_c
    new-instance v16, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "BackGroundFiller"

    const/16 v20, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    invoke-direct/range {v16 .. v24}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_1

    .line 10889
    :cond_7f
    :goto_31
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 10890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 10893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 10894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7

    .line 10898
    :goto_32
    const/16 v45, 0x1

    .line 10899
    const/4 v5, 0x1

    :try_start_e
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    goto/16 :goto_13

    .line 10884
    :catch_6
    move-exception v5

    move-object/from16 v59, v5

    .line 10885
    .local v59, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 10895
    .end local v59           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v5

    move-object/from16 v59, v5

    .line 10896
    .local v59, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception showing filler surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 10900
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_80
    if-eqz v49, :cond_1e

    if-nez v73, :cond_1e

    and-int/lit8 v5, v43, 0x4

    or-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1e

    .line 10906
    and-int/lit8 v5, v43, 0x2

    if-eqz v5, :cond_82

    .line 10907
    if-nez v57, :cond_82

    .line 10909
    const/16 v57, 0x1

    .line 10910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-nez v5, :cond_81

    .line 10911
    new-instance v5, Lcom/android/server/WindowManagerService$DimAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/server/WindowManagerService$DimAnimator;-><init>(Landroid/view/SurfaceSession;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    .line 10913
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$DimAnimator;->show(II)V

    .line 10914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v88

    move-wide/from16 v2, v54

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$DimAnimator;->updateParameters(Lcom/android/server/WindowManagerService$WindowState;J)V

    .line 10917
    :cond_82
    and-int/lit8 v5, v43, 0x4

    if-eqz v5, :cond_1e

    .line 10918
    if-nez v47, :cond_1e

    .line 10920
    const/16 v47, 0x1

    .line 10921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1

    if-nez v5, :cond_83

    .line 10925
    :try_start_f
    new-instance v23, Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "BlurSurface"

    const/16 v27, -0x1

    const/16 v28, 0x10

    const/16 v29, 0x10

    const/16 v30, -0x1

    const/high16 v31, 0x1

    invoke-direct/range {v23 .. v31}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    .line 10934
    :cond_83
    :goto_33
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    if-eqz v5, :cond_1e

    .line 10938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/Surface;->setPosition(II)V

    .line 10939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/Surface;->setSize(II)V

    .line 10940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    move-object/from16 v0, v88

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/Surface;->setLayer(I)V

    .line 10941
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1

    if-nez v5, :cond_1e

    .line 10945
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->show()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_9

    .line 10949
    :goto_34
    const/4 v5, 0x1

    :try_start_12
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_13

    .line 10930
    :catch_8
    move-exception v5

    move-object/from16 v59, v5

    .line 10931
    .local v59, e:Ljava/lang/Exception;
    const-string v5, "WindowManager"

    const-string v6, "Exception creating Blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 10946
    .end local v59           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v5

    move-object/from16 v59, v5

    .line 10947
    .local v59, e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Failure showing blur surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 10965
    .end local v43           #attrFlags:I
    .end local v44           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v49           #canBeSeen:Z
    .end local v58           #displayed:Z
    .end local v59           #e:Ljava/lang/RuntimeException;
    .end local v74           #obscuredChanged:Z
    .end local v76           #opaqueDrawn:Z
    .end local v88           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_84
    if-nez v45, :cond_85

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z

    move v5, v0

    if-eqz v5, :cond_85

    .line 10966
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBackgroundFillerShown:Z
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1

    .line 10969
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBackgroundFillerSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_a

    .line 10975
    :cond_85
    :goto_35
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    if-eqz v5, :cond_87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    if-eqz v5, :cond_87

    .line 10976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v6, v0

    if-nez v6, :cond_86

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_88

    :cond_86
    const/4 v6, 0x1

    :goto_36
    move-object v0, v5

    move/from16 v1, v57

    move-wide/from16 v2, v54

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$DimAnimator;->updateSurface(ZJZ)Z

    move-result v5

    or-int v41, v41, v5

    .line 10980
    :cond_87
    if-nez v47, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    move v5, v0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1

    if-eqz v5, :cond_3b

    .line 10984
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mBlurSurface:Landroid/view/Surface;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/Surface;->hide()V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    .line 10988
    :goto_37
    const/4 v5, 0x0

    :try_start_16
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    goto/16 :goto_1b

    .line 10970
    :catch_a
    move-exception v5

    move-object/from16 v59, v5

    .line 10971
    .restart local v59       #e:Ljava/lang/RuntimeException;
    const-string v5, "WindowManager"

    const-string v6, "Exception hiding filler surface"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 10976
    .end local v59           #e:Ljava/lang/RuntimeException;
    :cond_88
    const/4 v6, 0x0

    goto :goto_36

    .line 10985
    :catch_b
    move-exception v5

    move-object/from16 v59, v5

    .line 10986
    .local v59, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "WindowManager"

    const-string v6, "Illegal argument exception hiding blur surface"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1

    goto :goto_37

    .line 11018
    .end local v32           #N:I
    .end local v45           #backgroundFillerShown:Z
    .end local v47           #blurring:Z
    .end local v53           #covered:Z
    .end local v57           #dimming:Z
    .end local v59           #e:Ljava/lang/IllegalArgumentException;
    .end local v73           #obscured:Z
    .end local v81           #someoneLosingFocus:Z
    .end local v82           #syswin:Z
    .restart local v56       #diff:I
    .restart local v94       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_89
    const/4 v5, 0x0

    move/from16 v52, v5

    goto/16 :goto_1c

    .line 11030
    .restart local v52       #configChanged:Z
    :cond_8a
    const/4 v5, 0x0

    move-object/from16 v29, v5

    goto/16 :goto_1d

    .line 11037
    .end local v52           #configChanged:Z
    :catch_c
    move-exception v5

    move-object/from16 v59, v5

    .line 11038
    .local v59, e:Landroid/os/RemoteException;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v94

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    goto/16 :goto_1e

    .line 11075
    .end local v56           #diff:I
    .end local v59           #e:Landroid/os/RemoteException;
    .end local v94           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v89       #wallpaperDestroyed:Z
    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v66, v5, v6

    :goto_38
    if-ltz v66, :cond_8d

    .line 11076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 11077
    .local v84, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    move-object/from16 v0, v84

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hasVisible:Z

    move v5, v0

    if-nez v5, :cond_8c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 11081
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v84

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 11082
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v84

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 11083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v84

    if-ne v0, v1, :cond_8c

    .line 11086
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 11087
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 11075
    :cond_8c
    add-int/lit8 v66, v66, -0x1

    goto :goto_38

    .line 11092
    .end local v84           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_8d
    const/16 v71, 0x0

    .line 11094
    .local v71, needRelayout:Z
    if-nez v41, :cond_8e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    move v5, v0

    if-eqz v5, :cond_8e

    .line 11101
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    .line 11102
    const/16 v71, 0x1

    .line 11103
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 11104
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 11106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 11109
    :cond_8e
    if-eqz v60, :cond_8f

    .line 11110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 11112
    :cond_8f
    if-eqz v89, :cond_90

    .line 11113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v5

    if-eqz v5, :cond_96

    const/4 v5, 0x1

    move/from16 v71, v5

    .line 11115
    :cond_90
    :goto_39
    if-eqz v71, :cond_97

    .line 11116
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    .line 11123
    :cond_91
    :goto_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v5, v0

    if-nez v5, :cond_94

    .line 11124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v5, v0

    if-eqz v65, :cond_98

    const/4 v6, 0x1

    :goto_3b
    invoke-virtual {v5, v6}, Lcom/android/server/WindowManagerService$KeyQ;->setHoldScreenLocked(Z)V

    .line 11125
    const/4 v5, 0x0

    cmpg-float v5, v80, v5

    if-ltz v5, :cond_92

    const/high16 v5, 0x3f80

    cmpl-float v5, v80, v5

    if-lez v5, :cond_99

    .line 11126
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    .line 11131
    :goto_3c
    const/4 v5, 0x0

    cmpg-float v5, v48, v5

    if-ltz v5, :cond_93

    const/high16 v5, 0x3f80

    cmpl-float v5, v48, v5

    if-lez v5, :cond_9a

    .line 11132
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    .line 11137
    :goto_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    move-object v5, v0

    move-object/from16 v0, v65

    move-object v1, v5

    if-eq v0, v1, :cond_94

    .line 11138
    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mHoldingScreenOn:Lcom/android/server/WindowManagerService$Session;

    .line 11139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    const/16 v6, 0xc

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v67

    .line 11140
    .local v67, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 11144
    .end local v67           #m:Landroid/os/Message;
    :cond_94
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z

    move v5, v0

    if-eqz v5, :cond_95

    .line 11146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const/16 v26, 0x0

    const/16 v27, 0x5

    const/16 v28, 0x1

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    .line 11148
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z

    .line 11153
    :cond_95
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 11154
    return-void

    .line 11113
    :cond_96
    const/4 v5, 0x0

    move/from16 v71, v5

    goto/16 :goto_39

    .line 11117
    :cond_97
    if-eqz v41, :cond_91

    .line 11118
    const-wide/16 v5, 0x10

    add-long v5, v5, v54

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->requestAnimationLocked(J)V

    goto/16 :goto_3a

    .line 11124
    :cond_98
    const/4 v6, 0x0

    goto/16 :goto_3b

    .line 11128
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v80

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setScreenBrightnessOverride(I)V

    goto/16 :goto_3c

    .line 11134
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move-object v5, v0

    const/high16 v6, 0x437f

    mul-float v6, v6, v48

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lcom/android/server/PowerManagerService;->setButtonBrightnessOverride(I)V

    goto/16 :goto_3d

    .line 10340
    nop

    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method private final performLayoutLockedInner()I
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 9784
    iget-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    if-nez v9, :cond_0

    move v9, v12

    .line 9882
    :goto_0
    return v9

    .line 9788
    :cond_0
    iput-boolean v12, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 9790
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 9791
    .local v3, dw:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 9793
    .local v2, dh:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9799
    .local v0, N:I
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9, v3, v2}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(II)V

    .line 9801
    iget v9, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v6, v9, 0x1

    .line 9802
    .local v6, seq:I
    if-gez v6, :cond_1

    const/4 v6, 0x0

    .line 9803
    :cond_1
    iput v6, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    .line 9807
    const/4 v7, -0x1

    .line 9808
    .local v7, topAttached:I
    sub-int v5, v0, v13

    .local v5, i:I
    :goto_1
    if-ltz v5, :cond_9

    .line 9809
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 9814
    .local v8, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v1, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 9815
    .local v1, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v9, v9, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_3

    if-eqz v1, :cond_2

    iget-boolean v9, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v9, :cond_3

    :cond_2
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedHidden:Z

    if-nez v9, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v9, :cond_3

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    if-eqz v9, :cond_7

    :cond_3
    move v4, v13

    .line 9822
    .local v4, gone:Z
    :goto_2
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_4

    .line 9839
    :cond_4
    if-eqz v4, :cond_5

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_6

    .line 9840
    :cond_5
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-nez v9, :cond_8

    .line 9841
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/4 v11, 0x0

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 9842
    iput v6, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 9808
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .end local v4           #gone:Z
    :cond_7
    move v4, v12

    .line 9815
    goto :goto_2

    .line 9848
    .restart local v4       #gone:Z
    :cond_8
    if-gez v7, :cond_6

    move v7, v5

    goto :goto_3

    .line 9857
    .end local v1           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #gone:Z
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    move v5, v7

    :goto_4
    if-ltz v5, :cond_d

    .line 9858
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 9865
    .restart local v8       #win:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutAttached:Z

    if-eqz v9, :cond_c

    .line 9870
    iget v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    if-eq v9, v14, :cond_a

    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    if-nez v9, :cond_b

    :cond_a
    iget-boolean v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mHaveFrame:Z

    if-nez v9, :cond_c

    .line 9872
    :cond_b
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v10, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-interface {v9, v8, v10, v11}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 9873
    iput v6, v8, Lcom/android/server/WindowManagerService$WindowState;->mLayoutSeq:I

    .line 9857
    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 9882
    .end local v8           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_d
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()I

    move-result v9

    goto/16 :goto_0
.end method

.method private placeWindowAfter(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 3
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 715
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 716
    return-void
.end method

.method private placeWindowBefore(Ljava/lang/Object;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 723
    .local v0, i:I
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 724
    return-void
.end method

.method private final reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I
    .locals 3
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4052
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4053
    .local v0, NW:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4054
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 4053
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4056
    :cond_0
    return p1
.end method

.method private final reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .locals 5
    .parameter "index"
    .parameter "win"

    .prologue
    .line 4026
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4027
    .local v0, NCW:I
    const/4 v1, 0x0

    .line 4028
    .local v1, added:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 4029
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4030
    .local v2, cwin:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_0

    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-ltz v4, :cond_0

    .line 4033
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4034
    add-int/lit8 p1, p1, 0x1

    .line 4035
    const/4 v1, 0x1

    .line 4039
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4040
    add-int/lit8 p1, p1, 0x1

    .line 4028
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4042
    .end local v2           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-nez v1, :cond_2

    .line 4045
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4046
    add-int/lit8 p1, p1, 0x1

    .line 4048
    :cond_2
    return p1
.end method

.method private reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 2
    .parameter "win"

    .prologue
    .line 1146
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1150
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1151
    .local v0, wpos:I
    if-ltz v0, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1155
    invoke-direct {p0, v0, p1}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1157
    :cond_0
    return-void
.end method

.method private removeAppTokensLocked(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4099
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4100
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4101
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 4102
    .local v2, token:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v3

    .line 4103
    .local v3, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4104
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4106
    add-int/lit8 v1, v1, -0x1

    .line 4107
    add-int/lit8 v0, v0, -0x1

    .line 4100
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4110
    .end local v2           #token:Landroid/os/IBinder;
    .end local v3           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1
    return-void
.end method

.method private removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 8
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2169
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 2171
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 2172
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 2174
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    .line 2176
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_0

    .line 2177
    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2186
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v3, p2}, Landroid/view/WindowManagerPolicy;->removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2187
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->removeLocked()V

    .line 2189
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2193
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_7

    .line 2194
    iput-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2199
    :cond_1
    :goto_0
    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 2200
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2201
    .local v0, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2202
    if-eqz v0, :cond_2

    .line 2203
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2208
    :cond_2
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 2209
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowToken;->explicit:Z

    if-nez v3, :cond_8

    .line 2210
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2217
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2218
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v3, p2, :cond_9

    .line 2219
    iput-object v7, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2236
    :cond_4
    :goto_2
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dd

    if-ne v3, v4, :cond_b

    .line 2237
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2238
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2243
    :cond_5
    :goto_3
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mInLayout:Z

    if-nez v3, :cond_6

    .line 2244
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2245
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2246
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2247
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_6

    .line 2248
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2251
    :cond_6
    return-void

    .line 2195
    .end local v0           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_7
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-ne v3, v4, :cond_1

    .line 2196
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2212
    .restart local v0       #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v2       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_8
    if-eqz v0, :cond_3

    .line 2213
    iput-boolean v6, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    goto :goto_1

    .line 2220
    :cond_9
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v3, :cond_a

    .line 2223
    iput-object v7, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    goto :goto_2

    .line 2224
    :cond_a
    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2231
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v0}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2232
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 2239
    .end local v1           #m:Landroid/os/Message;
    :cond_b
    iget-object v3, p2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto :goto_3
.end method

.method private setTransparentRegionWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "region"

    .prologue
    .line 2264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2266
    .local v0, origId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2267
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2268
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    .line 2270
    invoke-static {}, Landroid/view/Surface;->openTransactionLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2274
    :try_start_2
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, p3}, Landroid/view/Surface;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2277
    :try_start_3
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    .line 2280
    :cond_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2282
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2284
    return-void

    .line 2276
    :catchall_0
    move-exception v4

    .line 2277
    :try_start_4
    invoke-static {}, Landroid/view/Surface;->closeTransactionLocked()V

    throw v4

    .line 2280
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2282
    :catchall_2
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private shouldAllowDisableKeyguard()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4235
    iget v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4236
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 4238
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    .line 4239
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_0
    iput v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    .line 4244
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    iget v1, p0, Lcom/android/server/WindowManagerService;->mAllowDisableKeyguard:I

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_1
    return v1

    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    move v1, v4

    .line 4239
    goto :goto_0

    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    move v1, v4

    .line 4244
    goto :goto_1
.end method

.method private startFreezingDisplayLocked()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 11402
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_0

    .line 11409
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v2

    .line 11410
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 11411
    monitor-exit v2

    .line 11444
    :goto_0
    return-void

    .line 11411
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 11415
    :cond_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 11417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 11419
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 11420
    iget-wide v2, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 11422
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11423
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 11424
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    .line 11432
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 11433
    iget v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v2, v7, :cond_2

    .line 11434
    iput v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 11435
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 11436
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 11443
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/Surface;->freezeDisplay(I)V

    goto :goto_0

    .line 11427
    :cond_3
    iput-wide v0, p0, Lcom/android/server/WindowManagerService;->mFreezeGcPending:J

    goto :goto_1
.end method

.method private stopFreezingDisplayLocked()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    .line 11447
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_1

    .line 11489
    :cond_0
    :goto_0
    return-void

    .line 11451
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    if-nez v0, :cond_0

    .line 11457
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    .line 11458
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11462
    invoke-static {v2}, Landroid/view/Surface;->unfreezeDisplay(I)V

    .line 11466
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v0

    .line 11467
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 11468
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 11469
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11475
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11476
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 11484
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v3}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11485
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v1, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11488
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mScreenFrozenLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 11469
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z
    .locals 6
    .parameter "token"

    .prologue
    .line 3939
    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3940
    .local v0, NW:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3941
    iget-object v5, p1, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 3943
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3944
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3945
    .local v3, j:I
    :goto_1
    if-lez v3, :cond_0

    .line 3946
    add-int/lit8 v3, v3, -0x1

    .line 3947
    iget-object v5, v4, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 3950
    .local v1, cwin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3940
    .end local v1           #cwin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3953
    .end local v3           #j:I
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-lez v0, :cond_2

    const/4 v5, 0x1

    :goto_2
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I
    .locals 5
    .parameter "interestingPos"
    .parameter "win"

    .prologue
    .line 1124
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1125
    .local v3, wpos:I
    if-ltz v3, :cond_3

    .line 1126
    if-ge v3, p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1128
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1129
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1130
    .local v0, NC:I
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 1131
    add-int/lit8 v0, v0, -0x1

    .line 1132
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1133
    .local v2, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1134
    .local v1, cpos:I
    if-ltz v1, :cond_1

    .line 1135
    if-ge v1, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 1138
    :cond_2
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1142
    .end local v0           #NC:I
    .end local v1           #cpos:I
    .end local v2           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    return p1
.end method

.method private translateKeycodeForKeytracer(Landroid/view/KeyEvent;)I
    .locals 2
    .parameter "event"

    .prologue
    .line 5433
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 5436
    .local v0, inKeyCode:I
    packed-switch v0, :pswitch_data_0

    .line 5514
    :pswitch_0
    const/4 v1, -0x1

    .line 5517
    .local v1, outKeyCode:I
    :goto_0
    return v1

    .line 5438
    .end local v1           #outKeyCode:I
    :pswitch_1
    const/16 v1, 0x30

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5439
    .end local v1           #outKeyCode:I
    :pswitch_2
    const/16 v1, 0x31

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5440
    .end local v1           #outKeyCode:I
    :pswitch_3
    const/16 v1, 0x32

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5441
    .end local v1           #outKeyCode:I
    :pswitch_4
    const/16 v1, 0x33

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5442
    .end local v1           #outKeyCode:I
    :pswitch_5
    const/16 v1, 0x34

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5443
    .end local v1           #outKeyCode:I
    :pswitch_6
    const/16 v1, 0x35

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5444
    .end local v1           #outKeyCode:I
    :pswitch_7
    const/16 v1, 0x36

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5445
    .end local v1           #outKeyCode:I
    :pswitch_8
    const/16 v1, 0x37

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5446
    .end local v1           #outKeyCode:I
    :pswitch_9
    const/16 v1, 0x38

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5447
    .end local v1           #outKeyCode:I
    :pswitch_a
    const/16 v1, 0x39

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5448
    .end local v1           #outKeyCode:I
    :pswitch_b
    const/16 v1, 0x50

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5449
    .end local v1           #outKeyCode:I
    :pswitch_c
    const/16 v1, 0x51

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5450
    .end local v1           #outKeyCode:I
    :pswitch_d
    const/16 v1, 0x23

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5451
    .end local v1           #outKeyCode:I
    :pswitch_e
    const/16 v1, 0x2a

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5452
    .end local v1           #outKeyCode:I
    :pswitch_f
    const/16 v1, 0x52

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5453
    .end local v1           #outKeyCode:I
    :pswitch_10
    const/16 v1, 0x63

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5454
    .end local v1           #outKeyCode:I
    :pswitch_11
    const/16 v1, 0x64

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5455
    .end local v1           #outKeyCode:I
    :pswitch_12
    const/16 v1, 0x65

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5456
    .end local v1           #outKeyCode:I
    :pswitch_13
    const/16 v1, 0x66

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5457
    .end local v1           #outKeyCode:I
    :pswitch_14
    const/16 v1, 0x8d

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5458
    .end local v1           #outKeyCode:I
    :pswitch_15
    const/16 v1, 0x8c

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5459
    .end local v1           #outKeyCode:I
    :pswitch_16
    const/16 v1, 0x5b

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5460
    .end local v1           #outKeyCode:I
    :pswitch_17
    const/16 v1, 0x5c

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5461
    .end local v1           #outKeyCode:I
    :pswitch_18
    const/16 v1, 0x95

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5462
    .end local v1           #outKeyCode:I
    :pswitch_19
    const/16 v1, 0x98

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5463
    .end local v1           #outKeyCode:I
    :pswitch_1a
    const/16 v1, 0xb6

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5464
    .end local v1           #outKeyCode:I
    :pswitch_1b
    const/16 v1, 0xb6

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5465
    .end local v1           #outKeyCode:I
    :pswitch_1c
    const/16 v1, 0xe3

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5466
    .end local v1           #outKeyCode:I
    :pswitch_1d
    const/16 v1, 0xf1

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5467
    .end local v1           #outKeyCode:I
    :pswitch_1e
    const/16 v1, 0xef

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5468
    .end local v1           #outKeyCode:I
    :pswitch_1f
    const/16 v1, 0xe5

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5469
    .end local v1           #outKeyCode:I
    :pswitch_20
    const/16 v1, 0xf8

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5470
    .end local v1           #outKeyCode:I
    :pswitch_21
    const/16 v1, 0xe6

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5471
    .end local v1           #outKeyCode:I
    :pswitch_22
    const/16 v1, 0xe7

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5472
    .end local v1           #outKeyCode:I
    :pswitch_23
    const/16 v1, 0xe8

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5473
    .end local v1           #outKeyCode:I
    :pswitch_24
    const/16 v1, 0xc4

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5474
    .end local v1           #outKeyCode:I
    :pswitch_25
    const/16 v1, 0xe9

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5475
    .end local v1           #outKeyCode:I
    :pswitch_26
    const/16 v1, 0xea

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5476
    .end local v1           #outKeyCode:I
    :pswitch_27
    const/16 v1, 0xeb

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5477
    .end local v1           #outKeyCode:I
    :pswitch_28
    const/16 v1, 0xf3

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5478
    .end local v1           #outKeyCode:I
    :pswitch_29
    const/16 v1, 0xf2

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5479
    .end local v1           #outKeyCode:I
    :pswitch_2a
    const/16 v1, 0xc5

    .restart local v1       #outKeyCode:I
    goto :goto_0

    .line 5480
    .end local v1           #outKeyCode:I
    :pswitch_2b
    const/16 v1, 0xc6

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5481
    .end local v1           #outKeyCode:I
    :pswitch_2c
    const/16 v1, 0xc0

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5482
    .end local v1           #outKeyCode:I
    :pswitch_2d
    const/16 v1, 0xec

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5483
    .end local v1           #outKeyCode:I
    :pswitch_2e
    const/16 v1, 0xe4

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5484
    .end local v1           #outKeyCode:I
    :pswitch_2f
    const/16 v1, 0xc1

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5485
    .end local v1           #outKeyCode:I
    :pswitch_30
    const/16 v1, 0xc3

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5486
    .end local v1           #outKeyCode:I
    :pswitch_31
    const/16 v1, 0xf0

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5487
    .end local v1           #outKeyCode:I
    :pswitch_32
    const/16 v1, 0xc7

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5488
    .end local v1           #outKeyCode:I
    :pswitch_33
    const/16 v1, 0xee

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5489
    .end local v1           #outKeyCode:I
    :pswitch_34
    const/16 v1, 0xc2

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5490
    .end local v1           #outKeyCode:I
    :pswitch_35
    const/16 v1, 0xed

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5491
    .end local v1           #outKeyCode:I
    :pswitch_36
    const/16 v1, 0xf7

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5492
    .end local v1           #outKeyCode:I
    :pswitch_37
    const/16 v1, 0xe1

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5493
    .end local v1           #outKeyCode:I
    :pswitch_38
    const/16 v1, 0xe1

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5494
    .end local v1           #outKeyCode:I
    :pswitch_39
    const/16 v1, 0xf4

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5495
    .end local v1           #outKeyCode:I
    :pswitch_3a
    const/16 v1, 0xc8

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5496
    .end local v1           #outKeyCode:I
    :pswitch_3b
    const/16 v1, 0x5c

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5497
    .end local v1           #outKeyCode:I
    :pswitch_3c
    const/16 v1, 0x54

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5498
    .end local v1           #outKeyCode:I
    :pswitch_3d
    const/16 v1, 0x55

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5499
    .end local v1           #outKeyCode:I
    :pswitch_3e
    const/16 v1, 0x1b

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5501
    .end local v1           #outKeyCode:I
    :pswitch_3f
    const/16 v1, 0xf6

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5502
    .end local v1           #outKeyCode:I
    :pswitch_40
    const/16 v1, 0x1f

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5503
    .end local v1           #outKeyCode:I
    :pswitch_41
    const/16 v1, 0x20

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5504
    .end local v1           #outKeyCode:I
    :pswitch_42
    const/16 v1, 0x21

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5505
    .end local v1           #outKeyCode:I
    :pswitch_43
    const/16 v1, 0xf5

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5506
    .end local v1           #outKeyCode:I
    :pswitch_44
    const/16 v1, 0x23

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5507
    .end local v1           #outKeyCode:I
    :pswitch_45
    const/16 v1, 0x24

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5508
    .end local v1           #outKeyCode:I
    :pswitch_46
    const/16 v1, 0x25

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5509
    .end local v1           #outKeyCode:I
    :pswitch_47
    const/16 v1, 0xb

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5510
    .end local v1           #outKeyCode:I
    :pswitch_48
    const/16 v1, 0xb5

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5511
    .end local v1           #outKeyCode:I
    :pswitch_49
    const/16 v1, 0xfe

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5512
    .end local v1           #outKeyCode:I
    :pswitch_4a
    const/16 v1, 0x26

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5513
    .end local v1           #outKeyCode:I
    :pswitch_4b
    const/16 v1, 0xca

    .restart local v1       #outKeyCode:I
    goto/16 :goto_0

    .line 5436
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_17
        :pswitch_19
        :pswitch_3b
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_3c
        :pswitch_3d
        :pswitch_18
        :pswitch_14
        :pswitch_f
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_3a
        :pswitch_43
        :pswitch_37
        :pswitch_38
        :pswitch_1a
        :pswitch_1b
        :pswitch_3e
        :pswitch_36
        :pswitch_0
        :pswitch_48
        :pswitch_47
        :pswitch_39
        :pswitch_3f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_41
        :pswitch_42
        :pswitch_0
        :pswitch_0
        :pswitch_44
        :pswitch_40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_4a
        :pswitch_0
        :pswitch_45
        :pswitch_49
        :pswitch_46
        :pswitch_4b
    .end packed-switch
.end method

.method private updateFocusedWindowLocked(I)Z
    .locals 9
    .parameter "mode"

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 11284
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 11285
    .local v1, newFocus:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v3, v1, :cond_5

    .line 11288
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11289
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 11292
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 11293
    .local v2, oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 11294
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11296
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 11297
    .local v0, imWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eq v1, v0, :cond_1

    if-eq v2, v0, :cond_1

    .line 11298
    if-eq p1, v6, :cond_3

    if-eq p1, v8, :cond_3

    move v3, v6

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11301
    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 11304
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->computeFocusedWindowLocked()Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v1

    .line 11305
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    if-eq v3, v1, :cond_0

    .line 11306
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 11307
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v7}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 11308
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Test Code - Changing focus from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11309
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    .line 11310
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11315
    :cond_0
    if-ne p1, v7, :cond_4

    .line 11316
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutLockedInner()I

    .line 11324
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    if-eq p1, v6, :cond_2

    .line 11325
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v3, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    :cond_2
    move v3, v6

    .line 11329
    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2
    return v3

    .restart local v0       #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    move v3, v4

    .line 11298
    goto :goto_0

    .line 11317
    :cond_4
    if-ne p1, v8, :cond_1

    .line 11320
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    goto :goto_1

    .end local v0           #imWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #oldFocus:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    move v3, v4

    .line 11329
    goto :goto_2
.end method

.method private final wakeupIfNeeded(Lcom/android/server/WindowManagerService$WindowState;I)V
    .locals 8
    .parameter "targetWin"
    .parameter "eventType"

    .prologue
    const/4 v3, 0x0

    .line 5045
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 5047
    .local v1, curTime:J
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 5048
    :cond_0
    iget v0, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    if-ne v0, p2, :cond_2

    iget-wide v4, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    .line 5060
    :cond_1
    :goto_0
    return-void

    .line 5052
    :cond_2
    iput-wide v1, p0, Lcom/android/server/WindowManagerService;->mLastUserActivityCallTime:J

    .line 5053
    iput p2, p0, Lcom/android/server/WindowManagerService;->mLastTouchEventType:I

    .line 5056
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-eq v0, v4, :cond_1

    .line 5058
    :cond_4
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPowerManager:Lcom/android/server/PowerManagerService;

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->userActivity(JZIZ)V

    goto :goto_0
.end method


# virtual methods
.method public addAppToken(ILandroid/view/IApplicationToken;IIZ)V
    .locals 5
    .parameter "addPos"
    .parameter "token"
    .parameter "groupId"
    .parameter "requestedOrientation"
    .parameter "fullscreen"

    .prologue
    .line 3030
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addAppToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3032
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3035
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3036
    :try_start_0
    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3037
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v0, :cond_1

    .line 3038
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    monitor-exit v1

    .line 3056
    :goto_0
    return-void

    .line 3041
    :cond_1
    new-instance v0, Lcom/android/server/WindowManagerService$AppWindowToken;

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    invoke-direct {v0, p0, p2}, Lcom/android/server/WindowManagerService$AppWindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IApplicationToken;)V

    .line 3042
    .restart local v0       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iput p3, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3043
    iput-boolean p5, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 3044
    iput p4, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3045
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3047
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3048
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3051
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 3052
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3055
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 3
    .parameter "win"

    .prologue
    const/4 v2, 0x1

    .line 1082
    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1083
    .local v0, pos:I
    if-ltz v0, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1087
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1088
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1094
    :goto_0
    return-void

    .line 1091
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1092
    invoke-direct {p0, p1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 1093
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_0
.end method

.method public addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    .locals 24
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"

    .prologue
    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 1884
    .local v20, res:I
    if-eqz v20, :cond_0

    move/from16 v6, v20

    .line 2087
    :goto_0
    return v6

    .line 1888
    :cond_0
    const/16 v19, 0x0

    .line 1889
    .local v19, reportNewConfig:Z
    const/4 v10, 0x0

    .line 1890
    .local v10, attachedWindow:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v21, 0x0

    .line 1892
    .local v21, win:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1896
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    if-nez v6, :cond_1

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/WindowManager;

    .line 1898
    .local v22, wm:Landroid/view/WindowManager;
    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$KeyQ;->setDisplay(Landroid/view/Display;)V

    .line 1902
    const/16 v19, 0x1

    .line 1905
    .end local v22           #wm:Landroid/view/WindowManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1906
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already added"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const/4 v6, -0x5

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2075
    :catchall_0
    move-exception v6

    move-object/from16 v5, v21

    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .local v5, win:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 1910
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v21       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    :try_start_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_4

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_4

    .line 1911
    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v10

    .line 1912
    if-nez v10, :cond_3

    .line 1913
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is not a window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const/4 v6, -0x2

    monitor-exit v23

    goto/16 :goto_0

    .line 1917
    :cond_3
    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_4

    iget-object v6, v10, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_4

    .line 1919
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with token that is a sub-window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    const/4 v6, -0x2

    monitor-exit v23

    goto/16 :goto_0

    .line 1925
    :cond_4
    const/4 v13, 0x0

    .line 1926
    .local v13, addToken:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1927
    .local v9, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v9, :cond_9

    .line 1928
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_5

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_5

    .line 1930
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add application window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_0

    .line 1934
    :cond_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_6

    .line 1935
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_0

    .line 1939
    :cond_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_7

    .line 1940
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with unknown token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_0

    .line 1944
    :cond_7
    new-instance v9, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 1945
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v13, 0x1

    .line 1978
    :cond_8
    new-instance v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct/range {v5 .. v12}, Lcom/android/server/WindowManagerService$WindowState;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Lcom/android/server/WindowManagerService$WindowToken;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1980
    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_3
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mDeathRecipient:Lcom/android/server/WindowManagerService$WindowState$DeathRecipient;

    if-nez v6, :cond_e

    .line 1983
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding window client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " that is dead, aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    const/4 v6, -0x4

    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 2075
    .end local v9           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v13           #addToken:Z
    :catchall_1
    move-exception v6

    goto/16 :goto_1

    .line 1946
    .end local v5           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v9       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v13       #addToken:Z
    .restart local v21       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    :try_start_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_c

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x63

    if-gt v6, v7, :cond_c

    .line 1948
    iget-object v14, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1949
    .local v14, atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v14, :cond_a

    .line 1950
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with non-application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const/4 v6, -0x3

    monitor-exit v23

    goto/16 :goto_0

    .line 1953
    :cond_a
    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v6, :cond_b

    .line 1954
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add window with exiting application token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    const/4 v6, -0x4

    monitor-exit v23

    goto/16 :goto_0

    .line 1958
    :cond_b
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    iget-boolean v6, v14, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v6, :cond_8

    .line 1962
    const/4 v6, -0x6

    monitor-exit v23

    goto/16 :goto_0

    .line 1964
    .end local v14           #atoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_c
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_d

    .line 1965
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_8

    .line 1966
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add input method window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/4 v6, -0x1

    monitor-exit v23

    goto/16 :goto_0

    .line 1970
    :cond_d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_8

    .line 1971
    iget v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v7, 0x7dd

    if-eq v6, v7, :cond_8

    .line 1972
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted to add wallpaper window with bad token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".  Aborting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 v6, -0x1

    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1988
    .end local v21           #win:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v20

    .line 1991
    if-eqz v20, :cond_f

    .line 1992
    monitor-exit v23

    move/from16 v6, v20

    goto/16 :goto_0

    .line 1997
    :cond_f
    const/16 v20, 0x0

    .line 1999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2001
    .local v17, origId:J
    if-eqz v13, :cond_10

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    move-object v6, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    move-object v7, v0

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    :cond_10
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->attach()V

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v6, v0

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_11

    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_11

    .line 2010
    iget-object v6, v9, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v5, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2013
    :cond_11
    const/16 v16, 0x1

    .line 2015
    .local v16, imMayMove:Z
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_1b

    .line 2016
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2017
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->addInputMethodWindowToListLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2018
    const/16 v16, 0x0

    .line 2034
    :cond_12
    :goto_2
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->getContentInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)V

    .line 2038
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v6, v0

    if-eqz v6, :cond_13

    .line 2039
    or-int/lit8 v20, v20, 0x1

    .line 2041
    :cond_13
    if-eqz v5, :cond_14

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v6, :cond_14

    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-nez v6, :cond_15

    .line 2042
    :cond_14
    or-int/lit8 v20, v20, 0x2

    .line 2045
    :cond_15
    const/4 v15, 0x0

    .line 2046
    .local v15, focusChanged:Z
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 2047
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v15

    const/4 v6, 0x1

    if-ne v15, v6, :cond_16

    .line 2049
    const/16 v16, 0x0

    .line 2053
    :cond_16
    if-eqz v16, :cond_17

    .line 2054
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    .line 2057
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2063
    if-eqz v15, :cond_18

    .line 2064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v6, v0

    if-eqz v6, :cond_18

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2072
    :cond_18
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleOrAdding()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2073
    const/16 v19, 0x1

    .line 2075
    :cond_19
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2081
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2082
    if-eqz v19, :cond_1a

    .line 2083
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 2085
    :cond_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v6, v20

    .line 2087
    goto/16 :goto_0

    .line 2019
    .end local v15           #focusChanged:Z
    :cond_1b
    :try_start_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_1c

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustInputMethodDialogsLocked()V

    .line 2023
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 2025
    :cond_1c
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 2026
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move v6, v0

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_1d

    .line 2027
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 2028
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    goto/16 :goto_2

    .line 2029
    :cond_1d
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move v6, v0

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-eqz v6, :cond_12

    .line 2030
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "type"

    .prologue
    .line 2954
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "addWindowToken()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2956
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2959
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2960
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2961
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 2962
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to add existing input method token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    monitor-exit v1

    .line 2972
    :goto_0
    return-void

    .line 2965
    :cond_1
    new-instance v0, Lcom/android/server/WindowManagerService$WindowToken;

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/android/server/WindowManagerService$WindowToken;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;IZ)V

    .line 2966
    .restart local v0       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2968
    const/16 v2, 0x7dd

    if-ne p2, v2, :cond_2

    .line 2969
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2971
    :cond_2
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method adjustInputMethodDialogsLocked()V
    .locals 1

    .prologue
    .line 1311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1312
    return-void
.end method

.method adjustWallpaperWindowsLocked()I
    .locals 32

    .prologue
    .line 1332
    const/4 v6, 0x0

    .line 1334
    .local v6, changed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 1335
    .local v10, dw:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 1339
    .local v9, dh:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v15, v0

    .line 1340
    .local v15, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1341
    .local v5, N:I
    const/16 v27, 0x0

    .line 1342
    .local v27, w:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v13, 0x0

    .line 1343
    .local v13, foundW:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v12, 0x0

    .line 1344
    .local v12, foundI:I
    const/16 v24, 0x0

    .line 1345
    .local v24, topCurW:Lcom/android/server/WindowManagerService$WindowState;
    const/16 v23, 0x0

    .line 1346
    .local v23, topCurI:I
    move v14, v5

    .line 1347
    .local v14, i:I
    :cond_0
    :goto_0
    if-lez v14, :cond_5

    .line 1348
    add-int/lit8 v14, v14, -0x1

    .line 1349
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v27, Lcom/android/server/WindowManagerService$WindowState;

    .line 1350
    .restart local v27       #w:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v31, 0x7dd

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    .line 1351
    if-nez v24, :cond_0

    .line 1352
    move-object/from16 v24, v27

    .line 1353
    move/from16 v23, v14

    goto :goto_0

    .line 1357
    :cond_1
    const/16 v24, 0x0

    .line 1358
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 1361
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_2

    .line 1364
    const/16 v24, 0x0

    .line 1365
    goto :goto_0

    .line 1371
    :cond_2
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v30, v0

    const/high16 v31, 0x10

    and-int v30, v30, v31

    if-eqz v30, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/WindowManagerService$WindowState;->isReadyForDisplay()Z

    move-result v30

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_3

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 1376
    :cond_3
    move-object/from16 v13, v27

    .line 1377
    move v12, v14

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    :cond_4
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_0

    .line 1392
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    .line 1404
    const/16 v30, 0x0

    .line 1630
    .end local v5           #N:I
    :goto_1
    return v30

    .line 1406
    .restart local v5       #N:I
    :cond_6
    if-eqz v13, :cond_7

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_7

    .line 1409
    const/16 v30, 0x0

    goto :goto_1

    .line 1413
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v13

    if-eq v0, v1, :cond_16

    .line 1419
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1420
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v21, v0

    .line 1423
    .local v21, oldW:Lcom/android/server/WindowManagerService$WindowState;
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1427
    if-eqz v13, :cond_b

    if-eqz v21, :cond_b

    .line 1428
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_8

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_13

    :cond_8
    const/16 v30, 0x1

    move/from16 v18, v30

    .line 1430
    .local v18, oldAnim:Z
    :goto_2
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_9

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_14

    :cond_9
    const/16 v30, 0x1

    move/from16 v11, v30

    .line 1436
    .local v11, foundAnim:Z
    :goto_3
    if-eqz v11, :cond_b

    if-eqz v18, :cond_b

    .line 1437
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 1441
    .local v19, oldI:I
    if-ltz v19, :cond_b

    .line 1449
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_a

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    move/from16 v30, v0

    if-eqz v30, :cond_a

    .line 1453
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1459
    :cond_a
    move v0, v12

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    .line 1464
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1465
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1466
    move-object/from16 v13, v21

    .line 1467
    move/from16 v12, v19

    .line 1497
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b
    :goto_4
    if-eqz v13, :cond_1c

    const/16 v30, 0x1

    move/from16 v26, v30

    .line 1498
    .local v26, visible:Z
    :goto_5
    if-eqz v26, :cond_c

    .line 1501
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v26

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-nez v30, :cond_1d

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1d

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    move/from16 v30, v0

    :goto_6
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v30

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v30, v0

    move/from16 v0, v30

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .line 1519
    .local v17, maxLayer:I
    :goto_7
    if-lez v12, :cond_c

    .line 1520
    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/WindowManagerService$WindowState;

    .line 1521
    .local v29, wb:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mBaseLayer:I

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v17

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttachedWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v13

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v30, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_1e

    .line 1536
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    if-nez v13, :cond_1f

    if-eqz v24, :cond_1f

    .line 1539
    move-object/from16 v13, v24

    .line 1540
    add-int/lit8 v12, v23, 0x1

    .line 1547
    .end local v5           #N:I
    :goto_8
    if-eqz v26, :cond_e

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_d

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    .line 1552
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move/from16 v30, v0

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-ltz v30, :cond_e

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    .line 1560
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1561
    .local v7, curTokenIndex:I
    :cond_f
    if-lez v7, :cond_25

    .line 1562
    add-int/lit8 v7, v7, -0x1

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1564
    .local v22, token:Lcom/android/server/WindowManagerService$WindowToken;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 1565
    or-int/lit8 v6, v6, 0x4

    .line 1566
    if-nez v26, :cond_21

    const/16 v30, 0x1

    :goto_9
    move/from16 v0, v30

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 1569
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1572
    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1573
    .local v8, curWallpaperIndex:I
    :goto_a
    if-lez v8, :cond_f

    .line 1574
    add-int/lit8 v8, v8, -0x1

    .line 1575
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/WindowManagerService$WindowState;

    .line 1577
    .local v28, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v26, :cond_11

    .line 1578
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v10

    move v3, v9

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 1583
    :cond_11
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v26

    if-eq v0, v1, :cond_12

    .line 1584
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    .line 1589
    :try_start_0
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    :cond_12
    :goto_b
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1600
    move-object/from16 v0, v28

    move-object v1, v13

    if-ne v0, v1, :cond_23

    .line 1601
    add-int/lit8 v12, v12, -0x1

    .line 1602
    if-lez v12, :cond_22

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v5

    .line 1604
    :goto_c
    goto :goto_a

    .line 1428
    .end local v7           #curTokenIndex:I
    .end local v8           #curWallpaperIndex:I
    .end local v22           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v26           #visible:Z
    .end local v28           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v5       #N:I
    .restart local v21       #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_13
    const/16 v30, 0x0

    move/from16 v18, v30

    goto/16 :goto_2

    .line 1430
    .restart local v18       #oldAnim:Z
    :cond_14
    const/16 v30, 0x0

    move/from16 v11, v30

    goto/16 :goto_3

    .line 1473
    .restart local v11       #foundAnim:Z
    .restart local v19       #oldI:I
    :cond_15
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1474
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_4

    .line 1480
    .end local v11           #foundAnim:Z
    .end local v18           #oldAnim:Z
    .end local v19           #oldI:I
    .end local v21           #oldW:Lcom/android/server/WindowManagerService$WindowState;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    if-eqz v30, :cond_b

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1a

    :cond_17
    const/16 v30, 0x1

    move/from16 v16, v30

    .line 1485
    .local v16, lowerAnimating:Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-nez v30, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1b

    :cond_18
    const/16 v30, 0x1

    move/from16 v25, v30

    .line 1488
    .local v25, upperAnimating:Z
    :goto_e
    if-eqz v16, :cond_19

    if-nez v25, :cond_b

    .line 1492
    :cond_19
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1493
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_4

    .line 1482
    .end local v16           #lowerAnimating:Z
    .end local v25           #upperAnimating:Z
    :cond_1a
    const/16 v30, 0x0

    move/from16 v16, v30

    goto :goto_d

    .line 1485
    .restart local v16       #lowerAnimating:Z
    :cond_1b
    const/16 v30, 0x0

    move/from16 v25, v30

    goto :goto_e

    .line 1497
    .end local v16           #lowerAnimating:Z
    :cond_1c
    const/16 v30, 0x0

    move/from16 v26, v30

    goto/16 :goto_5

    .line 1507
    .restart local v26       #visible:Z
    :cond_1d
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 1529
    .restart local v17       #maxLayer:I
    .restart local v29       #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1e
    move-object/from16 v13, v29

    .line 1530
    add-int/lit8 v12, v12, -0x1

    .line 1531
    goto/16 :goto_7

    .line 1544
    .end local v17           #maxLayer:I
    .end local v29           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1f
    if-lez v12, :cond_20

    const/16 v30, 0x1

    sub-int v30, v12, v30

    move-object v0, v15

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #N:I
    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    move-object v13, v5

    :goto_f
    goto/16 :goto_8

    .restart local v5       #N:I
    :cond_20
    const/16 v30, 0x0

    move-object/from16 v13, v30

    goto :goto_f

    .line 1566
    .end local v5           #N:I
    .restart local v7       #curTokenIndex:I
    .restart local v22       #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_21
    const/16 v30, 0x0

    goto/16 :goto_9

    .line 1602
    .restart local v8       #curWallpaperIndex:I
    .restart local v28       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_22
    const/16 v30, 0x0

    move-object/from16 v13, v30

    goto/16 :goto_c

    .line 1610
    :cond_23
    move-object v0, v15

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 1611
    .local v20, oldIndex:I
    if-ltz v20, :cond_24

    .line 1614
    move-object v0, v15

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1615
    move/from16 v0, v20

    move v1, v12

    if-ge v0, v1, :cond_24

    .line 1616
    add-int/lit8 v12, v12, -0x1

    .line 1625
    :cond_24
    move-object v0, v15

    move v1, v12

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1626
    or-int/lit8 v6, v6, 0x2

    .line 1627
    goto/16 :goto_a

    .end local v8           #curWallpaperIndex:I
    .end local v20           #oldIndex:I
    .end local v22           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v28           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_25
    move/from16 v30, v6

    .line 1630
    goto/16 :goto_1

    .line 1590
    .restart local v8       #curWallpaperIndex:I
    .restart local v22       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v28       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v30

    goto/16 :goto_b
.end method

.method checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "permission"
    .parameter "func"

    .prologue
    const/4 v3, 0x1

    .line 2929
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 2942
    :goto_0
    return v1

    .line 2933
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 2935
    goto :goto_0

    .line 2937
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2941
    .local v0, msg:Ljava/lang/String;
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 4339
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4340
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 4341
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 4342
    .local v1, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4344
    :try_start_1
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4340
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4349
    .end local v1           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    :try_start_2
    monitor-exit v2

    .line 4350
    return-void

    .line 4349
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4345
    .restart local v0       #i:I
    .restart local v1       #w:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method computeForcedAppOrientationLocked()I
    .locals 2

    .prologue
    .line 3245
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromWindowsLocked()I

    move-result v0

    .line 3246
    .local v0, req:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3247
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->getOrientationFromAppTokensLocked()I

    move-result v0

    .line 3249
    :cond_0
    return v0
.end method

.method public computeNewConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 4947
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4948
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4949
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method computeNewConfigurationLocked()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 4953
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4954
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4955
    const/4 v1, 0x0

    .line 4957
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z
    .locals 12
    .parameter "config"

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 4961
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    if-nez v8, :cond_0

    move v8, v9

    .line 5037
    :goto_0
    return v8

    .line 4964
    :cond_0
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v8, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getInputConfiguration(Landroid/content/res/Configuration;)V

    .line 4967
    iget v8, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v8, v10, :cond_1

    iget v8, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-ne v8, v11, :cond_5

    :cond_1
    move v5, v10

    .line 4969
    .local v5, rotated:Z
    :goto_1
    if-eqz v5, :cond_6

    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v2, v8

    .line 4970
    .local v2, dw:I
    :goto_2
    if-eqz v5, :cond_7

    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v0, v8

    .line 4972
    .local v0, dh:I
    :goto_3
    const/4 v4, 0x3

    .line 4973
    .local v4, orientation:I
    if-ge v2, v0, :cond_8

    .line 4974
    const/4 v4, 0x1

    .line 4978
    :cond_2
    :goto_4
    iput v4, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4980
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4981
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4982
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mCompatibleScreenFrame:Landroid/graphics/Rect;

    invoke-static {v1, v4, v8}, Landroid/content/res/CompatibilityInfo;->updateCompatibleScreenFrame(Landroid/util/DisplayMetrics;ILandroid/graphics/Rect;)V

    .line 4984
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    if-nez v8, :cond_4

    .line 4988
    move v3, v2

    .line 4989
    .local v3, longSize:I
    move v6, v0

    .line 4990
    .local v6, shortSize:I
    if-ge v3, v6, :cond_3

    .line 4991
    move v7, v3

    .line 4992
    .local v7, tmp:I
    move v3, v6

    .line 4993
    move v6, v7

    .line 4995
    .end local v7           #tmp:I
    :cond_3
    int-to-float v8, v3

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 4996
    int-to-float v8, v6

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v8, v9

    float-to-int v6, v8

    .line 5001
    const/16 v8, 0x1d6

    if-ge v3, v8, :cond_9

    .line 5004
    const/16 v8, 0x11

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5032
    .end local v3           #longSize:I
    .end local v6           #shortSize:I
    :cond_4
    :goto_5
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    iput v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 5034
    iput v10, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 5035
    iput v10, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 5036
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8, p1}, Landroid/view/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;)V

    move v8, v10

    .line 5037
    goto :goto_0

    .end local v0           #dh:I
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v2           #dw:I
    .end local v4           #orientation:I
    .end local v5           #rotated:Z
    :cond_5
    move v5, v9

    .line 4967
    goto :goto_1

    .line 4969
    .restart local v5       #rotated:Z
    :cond_6
    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayWidth:I

    move v2, v8

    goto :goto_2

    .line 4970
    .restart local v2       #dw:I
    :cond_7
    iget v8, p0, Lcom/android/server/WindowManagerService;->mInitialDisplayHeight:I

    move v0, v8

    goto :goto_3

    .line 4975
    .restart local v0       #dh:I
    .restart local v4       #orientation:I
    :cond_8
    if-le v2, v0, :cond_2

    .line 4976
    const/4 v4, 0x2

    goto :goto_4

    .line 5008
    .restart local v1       #dm:Landroid/util/DisplayMetrics;
    .restart local v3       #longSize:I
    .restart local v6       #shortSize:I
    :cond_9
    const/16 v8, 0x280

    if-le v3, v8, :cond_b

    const/16 v8, 0x1e0

    if-lt v6, v8, :cond_b

    .line 5011
    iput v11, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5024
    :cond_a
    :goto_6
    mul-int/lit8 v8, v3, 0x3

    div-int/lit8 v8, v8, 0x5

    sub-int v9, v6, v10

    if-lt v8, v9, :cond_d

    .line 5026
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_5

    .line 5013
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    .line 5018
    const/16 v8, 0x141

    if-gt v6, v8, :cond_c

    const/16 v8, 0x23a

    if-le v3, v8, :cond_a

    .line 5019
    :cond_c
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    const/high16 v9, 0x1000

    or-int/2addr v8, v9

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_6

    .line 5028
    :cond_d
    iget v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/server/WindowManagerService;->mScreenLayout:I

    goto :goto_5
.end method

.method public detectSafeMode()Z
    .locals 1

    .prologue
    .line 6747
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->detectSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    .line 6748
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSafeMode:Z

    return v0
.end method

.method public disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4250
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4253
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    .line 4254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v1, p1, p2}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4255
    monitor-exit v0

    .line 4256
    return-void

    .line 4255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dispatchPointerElsewhereLocked(Lcom/android/server/WindowManagerService$WindowState;Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;JZ)V
    .locals 3
    .parameter "srcWin"
    .parameter "relWin"
    .parameter "pointer"
    .parameter "eventTime"
    .parameter "skipped"

    .prologue
    const/4 v1, 0x0

    .line 1856
    if-eqz p2, :cond_2

    .line 1857
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, p3, v1, v2}, Landroid/view/WindowManagerPolicy;->dispatchedPointerEventLw(Landroid/view/MotionEvent;II)V

    .line 1864
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSendingPointersToWallpaper:Z

    if-eqz v0, :cond_3

    .line 1865
    if-eqz p6, :cond_0

    .line 1866
    const-string v0, "WindowManager"

    const-string v1, "Sending skipped pointer to wallpaper!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/WindowManagerService;->sendPointerToWallpaperLocked(Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;J)V

    .line 1878
    :cond_1
    :goto_1
    return-void

    .line 1859
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p3, v1, v1}, Landroid/view/WindowManagerPolicy;->dispatchedPointerEventLw(Landroid/view/MotionEvent;II)V

    goto :goto_0

    .line 1872
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v0, p1, :cond_1

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d4

    if-eq v0, v1, :cond_1

    .line 1876
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/WindowManagerService;->sendPointerToWallpaperLocked(Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;J)V

    goto :goto_1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v9, 0x1

    const-string v6, "    "

    const-string v8, " "

    .line 11493
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 11495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WindowManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11727
    :goto_0
    return-void

    .line 11501
    :cond_0
    const-string v6, "Input State:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11502
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    const-string v7, "  "

    invoke-virtual {v6, p2, v7}, Lcom/android/server/WindowManagerService$KeyQ;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11503
    const-string v6, " "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11505
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 11506
    :try_start_0
    const-string v7, "Current Window Manager state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11507
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 11508
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11509
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Window #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11510
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11511
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11507
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 11513
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 11514
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11515
    const-string v7, "  Input method dialogs:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11516
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_2
    if-ltz v0, :cond_2

    .line 11517
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11518
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  IM Dialog #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11516
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 11521
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 11522
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11523
    const-string v7, "  Remove pending for:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11524
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_3
    if-ltz v0, :cond_3

    .line 11525
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11526
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Remove #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11527
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11528
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11524
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 11531
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 11532
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11533
    const-string v7, "  Windows force removing:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11534
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_4
    if-ltz v0, :cond_4

    .line 11535
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11536
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Removing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11537
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11538
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11534
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 11541
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 11542
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11543
    const-string v7, "  Windows waiting to destroy their surface:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11544
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_5
    if-ltz v0, :cond_5

    .line 11545
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11546
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Destroy #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11547
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11548
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11544
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 11551
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 11552
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11553
    const-string v7, "  Windows losing focus:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11554
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_6
    if-ltz v0, :cond_6

    .line 11555
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11556
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Losing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11557
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11558
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11554
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 11561
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_6
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 11562
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11563
    const-string v7, "  Windows waiting to resize:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11564
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_7
    if-ltz v0, :cond_7

    .line 11565
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 11566
    .restart local v5       #w:Lcom/android/server/WindowManagerService$WindowState;
    const-string v7, "  Resizing #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 11567
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11568
    const-string v7, "    "

    invoke-virtual {v5, p2, v7}, Lcom/android/server/WindowManagerService$WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11564
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 11571
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 11572
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11573
    const-string v7, "  All active sessions:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11574
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 11575
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 11576
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$Session;

    .line 11577
    .local v3, s:Lcom/android/server/WindowManagerService$Session;
    const-string v7, "  Session "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11578
    const-string v7, "    "

    invoke-virtual {v3, p2, v7}, Lcom/android/server/WindowManagerService$Session;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_8

    .line 11726
    .end local v0           #i:I
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$Session;>;"
    .end local v3           #s:Lcom/android/server/WindowManagerService$Session;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 11581
    .restart local v0       #i:I
    :cond_8
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 11582
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11583
    const-string v7, "  All tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11584
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 11585
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 11586
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11587
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Token "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11588
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9

    .line 11591
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/WindowManagerService$WindowToken;>;"
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_9
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 11592
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11593
    const-string v7, "  Window token list:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11594
    const/4 v0, 0x0

    :goto_a
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_a

    .line 11595
    const-string v7, "  #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11596
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11594
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 11599
    :cond_a
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 11600
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11601
    const-string v7, "  Wallpaper tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11602
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_b
    if-ltz v0, :cond_b

    .line 11603
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11604
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Wallpaper #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11605
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11606
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11602
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 11609
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_b
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 11610
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11611
    const-string v7, "  Application tokens in Z order:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11612
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_c
    if-ltz v0, :cond_c

    .line 11613
    const-string v7, "  App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11614
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11612
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 11617
    :cond_c
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 11618
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11619
    const-string v7, "  Finishing start of application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11620
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_d
    if-ltz v0, :cond_d

    .line 11621
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11622
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Finished Starting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11623
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11624
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11620
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 11627
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_d
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 11628
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11629
    const-string v7, "  Exiting tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11630
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_e
    if-ltz v0, :cond_e

    .line 11631
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11632
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11633
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11634
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11630
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 11637
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_e
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_f

    .line 11638
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11639
    const-string v7, "  Exiting application tokens:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11640
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int v0, v7, v9

    :goto_f
    if-ltz v0, :cond_f

    .line 11641
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 11642
    .restart local v4       #token:Lcom/android/server/WindowManagerService$WindowToken;
    const-string v7, "  Exiting App #"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 11643
    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 11644
    const-string v7, "    "

    invoke-virtual {v4, p2, v7}, Lcom/android/server/WindowManagerService$WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 11640
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 11647
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_f
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11648
    const-string v7, "  mCurrentFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurrentFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11649
    const-string v7, "  mLastFocus="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastFocus:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11650
    const-string v7, "  mFocusedApp="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11651
    const-string v7, "  mInputMethodTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11652
    const-string v7, "  mInputMethodWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11653
    const-string v7, "  mWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11654
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v7, :cond_10

    .line 11655
    const-string v7, "  mLowerWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11656
    const-string v7, "  mUpperWallpaperTarget="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11658
    :cond_10
    const-string v7, "  mCurConfiguration="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11659
    const-string v7, "  mInTouchMode="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11660
    const-string v7, " mLayoutSeq="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLayoutSeq:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11661
    const-string v7, "  mSystemBooted="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11662
    const-string v7, " mDisplayEnabled="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11663
    const-string v7, "  mLayoutNeeded="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11664
    const-string v7, " mBlurShown="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mBlurShown:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11665
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    if-eqz v7, :cond_18

    .line 11666
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDimAnimator:Lcom/android/server/WindowManagerService$DimAnimator;

    invoke-virtual {v7, p2}, Lcom/android/server/WindowManagerService$DimAnimator;->printTo(Ljava/io/PrintWriter;)V

    .line 11670
    :goto_10
    const-string v7, "  mInputMethodAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11671
    iget v7, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11672
    const-string v7, "  mWallpaperAnimLayerAdjustment="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11673
    iget v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11674
    const-string v7, "  mLastWallpaperX="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 11675
    const-string v7, " mLastWallpaperY="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 11676
    const-string v7, "  mDisplayFrozen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11677
    const-string v7, " mWindowsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11678
    const-string v7, " mAppsFreezingScreen="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11679
    const-string v7, " mWaitingForConfig="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11680
    const-string v7, "  mRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11681
    const-string v7, ", mForcedAppOrientation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11682
    const-string v7, ", mRequestedRotation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11683
    const-string v7, "  mAnimationPending="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11684
    const-string v7, " mWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(F)V

    .line 11685
    const-string v7, " mTransitionWindowAnimationScale="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(F)V

    .line 11686
    const-string v7, "  mNextAppTransition=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11687
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11688
    const-string v7, ", mAppTransitionReady="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11689
    const-string v7, ", mAppTransitionRunning="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionRunning:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11690
    const-string v7, ", mAppTransitionTimeout="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11691
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v7, :cond_11

    .line 11692
    const-string v7, "  mNextAppTransitionPackage="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11693
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11694
    const-string v7, ", mNextAppTransitionEnter=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11695
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11696
    const-string v7, ", mNextAppTransitionExit=0x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11697
    iget v7, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11699
    :cond_11
    const-string v7, "  mStartingIconInTransition="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11700
    const-string v7, ", mSkipAppTransitionAnimation="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 11701
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v7, :cond_12

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v7, :cond_13

    .line 11702
    :cond_12
    const-string v7, "  mLastEnterAnimToken="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 11703
    const-string v7, ", mLastEnterAnimParams="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11705
    :cond_13
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_14

    .line 11706
    const-string v7, "  mOpeningApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11708
    :cond_14
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_15

    .line 11709
    const-string v7, "  mClosingApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11711
    :cond_15
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_16

    .line 11712
    const-string v7, "  mToTopApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11714
    :cond_16
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_17

    .line 11715
    const-string v7, "  mToBottomApps="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11717
    :cond_17
    const-string v7, "  DisplayWidth="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 11718
    const-string v7, " DisplayHeight="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 11719
    const-string v7, "  KeyWaiter state:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11720
    const-string v7, "    mLastWin="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$500(Lcom/android/server/WindowManagerService$KeyWaiter;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 11721
    const-string v7, " mLastBinder="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$600(Lcom/android/server/WindowManagerService$KeyWaiter;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11722
    const-string v7, "    mFinished="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$700(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11723
    const-string v7, " mGotFirstWindow="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$800(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11724
    const-string v7, " mEventDispatching="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$900(Lcom/android/server/WindowManagerService$KeyWaiter;)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    .line 11725
    const-string v7, " mTimeToSwitch="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-static {v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->access$1000(Lcom/android/server/WindowManagerService$KeyWaiter;)J

    move-result-wide v7

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->println(J)V

    .line 11726
    monitor-exit v6

    goto/16 :goto_0

    .line 11668
    :cond_18
    const-string v7, "  no DimAnimator "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_10
.end method

.method dumpAppTokensLocked()V
    .locals 4

    .prologue
    .line 3957
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3958
    const-string v2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3960
    :cond_0
    return-void
.end method

.method dumpWindowsLocked()V
    .locals 4

    .prologue
    .line 3963
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 3964
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3963
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3966
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 2

    .prologue
    .line 4492
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4493
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_0

    .line 4494
    monitor-exit v0

    .line 4500
    :goto_0
    return-void

    .line 4496
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    .line 4497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4499
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->performEnableScreen()V

    goto :goto_0

    .line 4497
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableScreenIfNeededLocked()V
    .locals 3

    .prologue
    .line 4503
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_1

    .line 4510
    :cond_0
    :goto_0
    return-void

    .line 4506
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-eqz v0, :cond_0

    .line 4509
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public executeAppTransition()V
    .locals 5

    .prologue
    .line 3374
    const-string v2, "android.permission.MANAGE_APP_TOKENS"

    const-string v3, "executeAppTransition()"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3376
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3379
    :cond_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3386
    :try_start_0
    iget v3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 3387
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 3388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3389
    .local v0, origId:J
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3390
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3392
    .end local v0           #origId:J
    :cond_1
    monitor-exit v2

    .line 3393
    return-void

    .line 3392
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4319
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 4321
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4323
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/WindowManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WindowManagerService$3;-><init>(Lcom/android/server/WindowManagerService;Landroid/view/IOnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 4332
    return-void
.end method

.method findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;
    .locals 2
    .parameter "token"

    .prologue
    .line 2946
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2947
    .local v0, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    if-nez v0, :cond_0

    .line 2948
    const/4 v1, 0x0

    .line 2950
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    goto :goto_0
.end method

.method findDesiredInputMethodWindowIndexLocked(Z)I
    .locals 13
    .parameter "willMove"

    .prologue
    .line 952
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 953
    .local v5, localmWindows:Ljava/util/ArrayList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 954
    .local v0, N:I
    const/4 v8, 0x0

    .line 955
    .local v8, w:Lcom/android/server/WindowManagerService$WindowState;
    move v4, v0

    .line 956
    .local v4, i:I
    :cond_0
    if-lez v4, :cond_1

    .line 957
    add-int/lit8 v4, v4, -0x1

    .line 958
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #w:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    .line 962
    .restart local v8       #w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v8}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 970
    if-nez p1, :cond_1

    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    if-lez v4, :cond_1

    .line 973
    const/4 v11, 0x1

    sub-int v11, v4, v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 974
    .local v9, wb:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v12, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v11, v12, :cond_1

    invoke-static {v9}, Lcom/android/server/WindowManagerService;->canBeImeTarget(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 975
    add-int/lit8 v4, v4, -0x1

    .line 976
    move-object v8, v9

    .line 983
    .end local v9           #wb:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mUpcomingInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 988
    if-eqz p1, :cond_8

    if-eqz v8, :cond_8

    .line 989
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 990
    .local v1, curTarget:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_8

    iget-object v11, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v11, :cond_8

    .line 996
    iget-object v7, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 997
    .local v7, token:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v3, 0x0

    .line 998
    .local v3, highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v2, 0x0

    .line 999
    .local v2, highestPos:I
    iget-boolean v11, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    if-nez v11, :cond_2

    iget-object v11, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v11, :cond_3

    .line 1000
    :cond_2
    const/4 v6, 0x0

    .line 1001
    .local v6, pos:I
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1002
    :goto_0
    if-ltz v6, :cond_3

    .line 1003
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowState;

    .line 1004
    .local v10, win:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v11, v7, :cond_4

    .line 1018
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    if-eqz v3, :cond_8

    .line 1025
    iget v11, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    .line 1028
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    .line 1029
    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1030
    add-int/lit8 v11, v2, 0x1

    .line 1078
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_1
    return v11

    .line 1007
    .restart local v1       #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v2       #highestPos:I
    .restart local v3       #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v6       #pos:I
    .restart local v7       #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    .restart local v10       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget-boolean v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mRemoved:Z

    if-nez v11, :cond_6

    .line 1008
    if-eqz v3, :cond_5

    iget v11, v10, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v12, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_6

    .line 1010
    :cond_5
    move-object v3, v10

    .line 1011
    move v2, v6

    .line 1014
    :cond_6
    add-int/lit8 v6, v6, -0x1

    .line 1015
    goto :goto_0

    .line 1031
    .end local v6           #pos:I
    .end local v10           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_8

    iget v11, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    iget v12, v8, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    if-le v11, v12, :cond_8

    .line 1037
    iput-object v3, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1038
    add-int/lit8 v11, v2, 0x1

    goto :goto_1

    .line 1045
    .end local v1           #curTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v2           #highestPos:I
    .end local v3           #highestTarget:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #token:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_8
    if-eqz v8, :cond_b

    .line 1046
    if-eqz p1, :cond_9

    .line 1056
    iput-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1057
    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v11, :cond_a

    .line 1058
    iget-object v11, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget v11, v11, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1063
    :cond_9
    :goto_2
    add-int/lit8 v11, v4, 0x1

    goto :goto_1

    .line 1060
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    goto :goto_2

    .line 1065
    :cond_b
    if-eqz p1, :cond_c

    .line 1075
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1076
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->setInputMethodAnimLayerAdjustment(I)V

    .line 1078
    :cond_c
    const/4 v11, -0x1

    goto :goto_1
.end method

.method public finishDrawingWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .locals 6
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2649
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2650
    .local v0, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2651
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2652
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->finishDrawingLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2653
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 2654
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    .line 2656
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2657
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2659
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2660
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2661
    return-void

    .line 2659
    .end local v2           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getAnimationScale(I)F
    .locals 1
    .parameter "which"

    .prologue
    .line 4396
    packed-switch p1, :pswitch_data_0

    .line 4400
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 4397
    :pswitch_0
    iget v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_0

    .line 4398
    :pswitch_1
    iget v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_0

    .line 4396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAnimationScales()[F
    .locals 3

    .prologue
    .line 4404
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    aput v2, v0, v1

    return-object v0
.end method

.method public getAppOrientation(Landroid/view/IApplicationToken;)I
    .locals 3
    .parameter "token"

    .prologue
    .line 3283
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3284
    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3285
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_0

    .line 3286
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    .line 3289
    :goto_0
    return v1

    :cond_0
    iget v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 3290
    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDPadKeycodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4480
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4482
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4484
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getDPadKeycodeState(I)I

    move-result v0

    return v0
.end method

.method public getDPadScancodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4448
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getDPadScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4450
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4452
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getDPadScancodeState(I)I

    move-result v0

    return v0
.end method

.method public getKeycodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4456
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4458
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4460
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getKeycodeState(I)I

    move-result v0

    return v0
.end method

.method public getKeycodeStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4464
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getKeycodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4466
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4468
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WindowManagerService$KeyQ;->getKeycodeState(II)I

    move-result v0

    return v0
.end method

.method public getOrientationFromAppTokensLocked()I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 3099
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int v6, v8, v9

    .line 3100
    .local v6, pos:I
    const/4 v0, 0x0

    .line 3101
    .local v0, curGroup:I
    const/4 v4, -0x1

    .line 3102
    .local v4, lastOrientation:I
    const/4 v1, 0x0

    .line 3103
    .local v1, findingBehind:Z
    const/4 v2, 0x0

    .line 3104
    .local v2, haveGroup:Z
    const/4 v3, 0x0

    .line 3105
    .local v3, lastFullscreen:Z
    :cond_0
    :goto_0
    if-ltz v6, :cond_8

    .line 3106
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3107
    .local v7, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    add-int/lit8 v6, v6, -0x1

    .line 3110
    if-nez v1, :cond_1

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v8, :cond_1

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    .line 3115
    :cond_1
    if-nez v2, :cond_3

    .line 3117
    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v8, :cond_0

    iget-boolean v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    if-nez v8, :cond_0

    .line 3120
    const/4 v2, 0x1

    .line 3121
    iget v0, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3122
    iget v4, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3134
    :cond_2
    iget v5, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3138
    .local v5, or:I
    iget-boolean v3, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->appFullscreen:Z

    .line 3139
    if-eqz v3, :cond_4

    if-eq v5, v10, :cond_4

    move v8, v5

    .line 3154
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :goto_1
    return v8

    .line 3123
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    iget v8, v7, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    if-eq v0, v8, :cond_2

    .line 3129
    if-eq v4, v10, :cond_2

    if-eqz v3, :cond_2

    move v8, v4

    .line 3131
    goto :goto_1

    .line 3145
    .restart local v5       #or:I
    :cond_4
    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_5

    const/4 v8, 0x4

    if-eq v5, v8, :cond_5

    const/4 v8, 0x5

    if-eq v5, v8, :cond_5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    :cond_5
    move v8, v5

    .line 3150
    goto :goto_1

    .line 3152
    :cond_6
    if-ne v5, v10, :cond_7

    move v8, v9

    :goto_2
    or-int/2addr v1, v8

    .line 3153
    goto :goto_0

    .line 3152
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 3154
    .end local v5           #or:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_8
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public getOrientationFromWindowsLocked()I
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 3075
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 3076
    .local v0, pos:I
    :cond_0
    if-ltz v0, :cond_2

    .line 3077
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3078
    .local v2, wtoken:Lcom/android/server/WindowManagerService$WindowState;
    add-int/lit8 v0, v0, -0x1

    .line 3079
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v3, :cond_1

    move v3, v5

    .line 3095
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v3

    .line 3084
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v3, :cond_0

    .line 3087
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 3088
    .local v1, req:I
    if-eq v1, v5, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    move v3, v1

    .line 3092
    goto :goto_0

    .end local v1           #req:I
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    move v3, v5

    .line 3095
    goto :goto_0
.end method

.method public getPendingAppTransition()I
    .locals 1

    .prologue
    .line 3361
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 4655
    iget v0, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    return v0
.end method

.method public getScancodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4424
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4426
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4428
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getScancodeState(I)I

    move-result v0

    return v0
.end method

.method public getScancodeStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4432
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getScancodeStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4434
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4436
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WindowManagerService$KeyQ;->getScancodeState(II)I

    move-result v0

    return v0
.end method

.method public getSwitchState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4408
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4410
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4412
    :cond_0
    invoke-static {p1}, Lcom/android/server/KeyInputQueue;->getSwitchState(I)I

    move-result v0

    return v0
.end method

.method public getSwitchStateForDevice(II)I
    .locals 2
    .parameter "devid"
    .parameter "sw"

    .prologue
    .line 4416
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getSwitchStateForDevice()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4418
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4420
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->getSwitchState(II)I

    move-result v0

    return v0
.end method

.method public getTrackballKeycodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4472
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballKeycodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4474
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4476
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getTrackballKeycodeState(I)I

    move-result v0

    return v0
.end method

.method public getTrackballScancodeState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 4440
    const-string v0, "android.permission.READ_INPUT_STATE"

    const-string v1, "getTrackballScancodeState()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4442
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires READ_INPUT_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4444
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService$KeyQ;->getTrackballScancodeState(I)I

    move-result v0

    return v0
.end method

.method public getWindowDisplayFrame(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "session"
    .parameter "client"
    .parameter "outDisplayFrame"

    .prologue
    .line 2309
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2310
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2311
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_0

    .line 2312
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 2313
    monitor-exit v1

    .line 2317
    :goto_0
    return-void

    .line 2315
    :cond_0
    iget-object v2, v0, Lcom/android/server/WindowManagerService$WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2316
    monitor-exit v1

    goto :goto_0

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasKeys([I[Z)Z
    .locals 1
    .parameter "keycodes"
    .parameter "keyExists"

    .prologue
    .line 4488
    invoke-static {p1, p2}, Lcom/android/server/KeyInputQueue;->hasKeys([I[Z)Z

    move-result v0

    return v0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 1

    .prologue
    .line 4335
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    return v0
.end method

.method public initializeHoldMode(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 11938
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManagerPolicy;->setHoldMode(Ljava/lang/String;Z)V

    .line 11939
    return-void
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 26
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 5721
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    .line 5722
    .local v5, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v7

    .line 5724
    .local v7, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    .line 5725
    .local v9, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 5726
    .local v10, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v11

    .line 5727
    .local v11, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v12

    .line 5728
    .local v12, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v13

    .line 5729
    .local v13, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v14

    .line 5731
    .local v14, scancode:I
    const-wide/16 v15, 0x0

    cmp-long v15, v7, v15

    if-nez v15, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 5732
    :cond_0
    const-wide/16 v15, 0x0

    cmp-long v15, v5, v15

    if-nez v15, :cond_1

    move-wide v5, v7

    .line 5734
    :cond_1
    new-instance v4, Landroid/view/KeyEvent;

    const/16 v15, 0x8

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 5737
    .local v4, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    .line 5738
    .local v21, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 5739
    .local v22, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    .line 5740
    .local v23, ident:J
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->dispatchKey(Landroid/view/KeyEvent;II)I

    move-result v25

    .line 5741
    .local v25, result:I
    if-eqz p2, :cond_2

    .line 5742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v15 .. v22}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 5744
    :cond_2
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5745
    packed-switch v25, :pswitch_data_0

    .line 5752
    :pswitch_0
    const/4 v15, 0x0

    :goto_0
    return v15

    .line 5747
    :pswitch_1
    new-instance v15, Ljava/lang/SecurityException;

    const-string v16, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 5750
    :pswitch_2
    const/4 v15, 0x1

    goto :goto_0

    .line 5745
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .parameter "ev"
    .parameter "sync"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 5765
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 5766
    .local v6, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5767
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5768
    .local v8, ident:J
    invoke-direct {p0, v1, p1, v6, v7}, Lcom/android/server/WindowManagerService;->dispatchPointer(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v10

    .line 5769
    .local v10, result:I
    if-eqz p2, :cond_0

    .line 5770
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 5772
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5773
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move v0, v4

    .line 5780
    :goto_0
    return v0

    .line 5775
    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move v0, v5

    .line 5778
    goto :goto_0

    .line 5773
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .parameter "ev"
    .parameter "sync"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 5793
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 5794
    .local v6, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 5795
    .local v7, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5796
    .local v8, ident:J
    invoke-direct {p0, v1, p1, v6, v7}, Lcom/android/server/WindowManagerService;->dispatchTrackball(Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;II)I

    move-result v10

    .line 5797
    .local v10, result:I
    if-eqz p2, :cond_0

    .line 5798
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v2, v1

    move-object v3, v1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/WindowManagerService$KeyWaiter;->waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;

    .line 5800
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5801
    packed-switch v10, :pswitch_data_0

    :pswitch_0
    move v0, v4

    .line 5808
    :goto_0
    return v0

    .line 5803
    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move v0, v5

    .line 5806
    goto :goto_0

    .line 5801
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 7
    .parameter "client"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9575
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 9578
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 9580
    .local v0, idx:I
    if-lez v0, :cond_0

    .line 9581
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    sub-int v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 9582
    .local v1, imFocus:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v1, :cond_0

    .line 9583
    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 9585
    monitor-exit v2

    move v2, v6

    .line 9590
    .end local v1           #imFocus:Lcom/android/server/WindowManagerService$WindowState;
    :goto_0
    return v2

    .line 9589
    :cond_0
    monitor-exit v2

    move v2, v5

    .line 9590
    goto :goto_0

    .line 9589
    .end local v0           #idx:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isViewServerRunning()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4767
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 4775
    :goto_0
    return v0

    .line 4771
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string v1, "isViewServerRunning"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 4772
    goto :goto_0

    .line 4775
    :cond_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method final isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 1
    .parameter "wallpaperTarget"

    .prologue
    .line 1321
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method logWindowList(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1161
    .local v0, N:I
    :goto_0
    if-lez v0, :cond_0

    .line 1162
    add-int/lit8 v0, v0, -0x1

    .line 1163
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1165
    :cond_0
    return-void
.end method

.method public monitor()V
    .locals 2

    .prologue
    .line 11730
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11731
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11732
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    monitor-enter v0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11733
    return-void

    .line 11730
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 11731
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 11732
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public moveAppToken(ILandroid/os/IBinder;)V
    .locals 7
    .parameter "index"
    .parameter "token"

    .prologue
    .line 4060
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "moveAppToken()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4062
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4065
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4068
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 4069
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4070
    :cond_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to reorder token that doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    monitor-exit v3

    .line 4093
    :goto_0
    return-void

    .line 4074
    :cond_2
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4078
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4081
    .local v0, origId:J
    invoke-direct {p0, v2}, Lcom/android/server/WindowManagerService;->tmpRemoveAppWindowsLocked(Lcom/android/server/WindowManagerService$WindowToken;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4084
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->findWindowOffsetLocked(I)I

    move-result v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    .line 4087
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 4088
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4089
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 4091
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4092
    monitor-exit v3

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public moveAppTokensToBottom(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v8, -0x1

    .line 4195
    const-string v6, "android.permission.MANAGE_APP_TOKENS"

    const-string v7, "moveAppTokensToBottom()"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4197
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4200
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4201
    .local v2, origId:J
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 4202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4204
    .local v0, N:I
    const/4 v4, 0x0

    .line 4205
    .local v4, pos:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 4206
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v5

    .line 4207
    .local v5, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v5, :cond_2

    .line 4208
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4209
    iget v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v6, v8, :cond_1

    .line 4210
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4211
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4212
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4213
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 4214
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    .line 4216
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 4205
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4220
    .end local v5           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    iget v6, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-ne v6, v8, :cond_4

    .line 4221
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4223
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4224
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4225
    return-void

    .line 4223
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v4           #pos:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public moveAppTokensToTop(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, tokens:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v7, -0x1

    .line 4164
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "moveAppTokensToTop()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4166
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4169
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4170
    .local v2, origId:J
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4171
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WindowManagerService;->removeAppTokensLocked(Ljava/util/List;)V

    .line 4172
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4173
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4174
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 4175
    .local v4, wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_1

    .line 4176
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4177
    iget v5, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v5, v7, :cond_1

    .line 4178
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4179
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToBottomApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4180
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mToTopApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4181
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToBottom:Z

    .line 4182
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$AppWindowToken;->sendingToTop:Z

    .line 4173
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4187
    .end local v4           #wt:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    iget v5, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-ne v5, v7, :cond_3

    .line 4188
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/WindowManagerService;->moveAppWindowsLocked(Ljava/util/List;I)V

    .line 4190
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4191
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4192
    return-void

    .line 4190
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method moveInputMethodDialogsLocked(I)V
    .locals 7
    .parameter "pos"

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    .line 1170
    .local v1, dialogs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/WindowManagerService$WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1172
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1173
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    invoke-direct {p0, p1, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1180
    :cond_0
    if-ltz p1, :cond_2

    .line 1181
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1182
    .local v3, targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    .line 1183
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 1184
    .local v5, wp:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-ne v5, v6, :cond_1

    .line 1185
    add-int/lit8 p1, p1, 0x1

    .line 1189
    .end local v5           #wp:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    .line 1190
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1191
    .local v4, win:Lcom/android/server/WindowManagerService$WindowState;
    iput-object v3, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1192
    invoke-direct {p0, p1, v4}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result p1

    .line 1189
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1200
    .end local v3           #targetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 1201
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowState;

    .line 1202
    .restart local v4       #win:Lcom/android/server/WindowManagerService$WindowState;
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1203
    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1200
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1209
    .end local v4           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    return-void
.end method

.method moveInputMethodWindowsIfNeededLocked(Z)Z
    .locals 13
    .parameter "needAssignLayers"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1212
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1213
    .local v6, imWin:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1214
    .local v0, DN:I
    if-nez v6, :cond_0

    if-nez v0, :cond_0

    move v8, v9

    .line 1307
    :goto_0
    return v8

    .line 1218
    :cond_0
    invoke-virtual {p0, v11}, Lcom/android/server/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v5

    .line 1219
    .local v5, imPos:I
    if-ltz v5, :cond_c

    .line 1225
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1226
    .local v1, N:I
    if-ge v5, v1, :cond_4

    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v8

    .line 1231
    .local v4, firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_1
    if-eqz v6, :cond_5

    move-object v2, v6

    .line 1233
    .local v2, baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    :goto_2
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1234
    iget-object v8, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1235
    .local v3, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v8, v3, Lcom/android/server/WindowManagerService$WindowState;->mSubLayer:I

    if-gez v8, :cond_1

    move-object v2, v3

    .line 1238
    .end local v3           #cw:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    if-ne v4, v2, :cond_8

    .line 1241
    add-int/lit8 v7, v5, 0x1

    .line 1242
    .local v7, pos:I
    :goto_3
    if-ge v7, v1, :cond_2

    .line 1243
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-nez v8, :cond_6

    .line 1248
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1250
    :goto_4
    if-ge v7, v1, :cond_3

    .line 1251
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    iget-boolean v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mIsImWindow:Z

    if-eqz v8, :cond_7

    .line 1256
    :cond_3
    if-lt v7, v1, :cond_8

    move v8, v9

    .line 1258
    goto :goto_0

    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v7           #pos:I
    :cond_4
    move-object v4, v12

    .line 1226
    goto :goto_1

    .line 1231
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowState;

    move-object v2, v8

    goto :goto_2

    .line 1246
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v7       #pos:I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1254
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1262
    .end local v7           #pos:I
    :cond_8
    if-eqz v6, :cond_b

    .line 1267
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    move-result v5

    .line 1272
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mInputMethodTarget:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v8, v8, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iput-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1273
    invoke-direct {p0, v5, v6}, Lcom/android/server/WindowManagerService;->reAddWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1278
    if-lez v0, :cond_9

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    .line 1303
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_9
    :goto_5
    if-eqz p1, :cond_a

    .line 1304
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    :cond_a
    move v8, v11

    .line 1307
    goto/16 :goto_0

    .line 1280
    .restart local v1       #N:I
    .restart local v2       #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v4       #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_b
    invoke-virtual {p0, v5}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5

    .line 1287
    .end local v1           #N:I
    .end local v2           #baseImWin:Lcom/android/server/WindowManagerService$WindowState;
    .end local v4           #firstImWin:Lcom/android/server/WindowManagerService$WindowState;
    :cond_c
    if-eqz v6, :cond_d

    .line 1289
    invoke-direct {p0, v9, v6}, Lcom/android/server/WindowManagerService;->tmpRemoveWindowLocked(ILcom/android/server/WindowManagerService$WindowState;)I

    .line 1290
    iput-object v12, v6, Lcom/android/server/WindowManagerService$WindowState;->mTargetAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 1291
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->reAddWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 1296
    if-lez v0, :cond_9

    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5

    .line 1298
    :cond_d
    invoke-virtual {p0, v10}, Lcom/android/server/WindowManagerService;->moveInputMethodDialogsLocked(I)V

    goto :goto_5
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 699
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 700
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 704
    const-string v1, "WindowManager"

    const-string v2, "Window Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 706
    :cond_0
    throw v0
.end method

.method public openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;
    .locals 2
    .parameter "client"
    .parameter "inputContext"

    .prologue
    .line 9569
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9570
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null inputContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9571
    :cond_1
    new-instance v0, Lcom/android/server/WindowManagerService$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$Session;-><init>(Lcom/android/server/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V

    return-object v0
.end method

.method public overridePendingAppTransition(Ljava/lang/String;II)V
    .locals 2
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"

    .prologue
    .line 3366
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3367
    iput-object p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionPackage:Ljava/lang/String;

    .line 3368
    iput p2, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionEnter:I

    .line 3369
    iput p3, p0, Lcom/android/server/WindowManagerService;->mNextAppTransitionExit:I

    .line 3371
    :cond_0
    return-void
.end method

.method public pauseKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    .line 5674
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "pauseKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5676
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5679
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5680
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 5681
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 5682
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->pauseDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 5684
    :cond_1
    monitor-exit v1

    .line 5685
    return-void

    .line 5684
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public performEnableScreen()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 4513
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4514
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v7, :cond_0

    .line 4515
    monitor-exit v6

    .line 4560
    :goto_0
    return-void

    .line 4517
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/WindowManagerService;->mSystemBooted:Z

    if-nez v7, :cond_1

    .line 4518
    monitor-exit v6

    goto :goto_0

    .line 4553
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 4523
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4524
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 4525
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 4526
    .local v5, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mObscured:Z

    if-nez v7, :cond_3

    iget-boolean v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$WindowState;->isDrawnLw()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4528
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 4524
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4532
    .end local v5           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4541
    :try_start_2
    const-string v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 4542
    .local v4, surfaceFlinger:Landroid/os/IBinder;
    if-eqz v4, :cond_5

    .line 4544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4545
    .local v1, data:Landroid/os/Parcel;
    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4546
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v4, v7, v1, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4553
    .end local v1           #data:Landroid/os/Parcel;
    .end local v4           #surfaceFlinger:Landroid/os/IBinder;
    :cond_5
    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4555
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->enableScreenAfterBoot()V

    .line 4558
    const/16 v6, -0x3e8

    iget v7, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v6, v10, v7}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    goto :goto_0

    .line 4550
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 4551
    .local v2, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v7, "WindowManager"

    const-string v8, "Boot completed: SurfaceFlinger is dead!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public prepareAppTransition(I)V
    .locals 5
    .parameter "transit"

    .prologue
    .line 3327
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "prepareAppTransition()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3329
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3332
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3336
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3337
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-nez v1, :cond_4

    .line 3339
    :cond_1
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    .line 3349
    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionReady:Z

    .line 3350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mAppTransitionTimeout:Z

    .line 3351
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 3352
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3353
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3354
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3357
    :cond_3
    monitor-exit v0

    .line 3358
    return-void

    .line 3340
    :cond_4
    const/16 v1, 0x1008

    if-ne p1, v1, :cond_5

    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2009

    if-ne v1, v2, :cond_5

    .line 3343
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    goto :goto_0

    .line 3357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3344
    :cond_5
    const/16 v1, 0x1006

    if-ne p1, v1, :cond_2

    :try_start_1
    iget v1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    const/16 v2, 0x2007

    if-ne v1, v2, :cond_2

    .line 3347
    iput p1, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final rebuildAppWindowListLocked()V
    .locals 11

    .prologue
    .line 9631
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 9633
    .local v1, NW:I
    const/4 v4, -0x1

    .line 9634
    .local v4, lastWallpaper:I
    const/4 v5, 0x0

    .line 9637
    .local v5, numRemoved:I
    const/4 v2, 0x0

    .line 9638
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 9639
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 9640
    .local v6, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v8, :cond_0

    .line 9641
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 9644
    .local v7, win:Lcom/android/server/WindowManagerService$WindowState;
    add-int/lit8 v1, v1, -0x1

    .line 9645
    add-int/lit8 v5, v5, 0x1

    .line 9646
    goto :goto_0

    .line 9647
    .end local v7           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_0
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x7dd

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    sub-int v8, v2, v8

    if-ne v4, v8, :cond_1

    .line 9649
    move v4, v2

    .line 9651
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 9652
    goto :goto_0

    .line 9656
    .end local v6           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 9657
    move v2, v4

    .line 9663
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9664
    .local v0, NT:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 9665
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowToken;

    invoke-direct {p0, v2, v8}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 9664
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9669
    :cond_3
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9670
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 9671
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/WindowManagerService$WindowToken;

    invoke-direct {p0, v2, v8}, Lcom/android/server/WindowManagerService;->reAddAppWindowsLocked(ILcom/android/server/WindowManagerService$WindowToken;)I

    move-result v2

    .line 9670
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9674
    :cond_4
    sub-int/2addr v2, v4

    .line 9675
    if-eq v2, v5, :cond_5

    .line 9676
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rebuild removed "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " windows but added "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9679
    :cond_5
    return-void
.end method

.method reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V
    .locals 14
    .parameter "win"
    .parameter "operation"

    .prologue
    .line 11194
    iget-object v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 11196
    .local v8, surface:Landroid/view/Surface;
    const/16 v10, 0x7918

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v13, v13, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object p2, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 11199
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    .line 11200
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    .line 11203
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 11208
    .local v1, callingIdentity:J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11209
    .local v0, N:I
    const/4 v5, 0x0

    .line 11210
    .local v5, leakedSurface:Z
    const-string v10, "WindowManager"

    const-string v11, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11211
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 11212
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 11213
    .local v9, ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_1

    .line 11214
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 11215
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v12, v12, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11220
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 11221
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 11222
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 11223
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11224
    add-int/lit8 v3, v3, -0x1

    .line 11225
    add-int/lit8 v0, v0, -0x1

    .line 11226
    const/4 v5, 0x1

    .line 11211
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11227
    :cond_2
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v10, :cond_1

    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v10, :cond_1

    .line 11228
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " surface="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11231
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 11232
    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 11233
    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    .line 11234
    const/4 v5, 0x1

    goto :goto_1

    .line 11239
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    const/4 v4, 0x0

    .line 11240
    .local v4, killedApps:Z
    if-nez v5, :cond_7

    .line 11241
    const-string v10, "WindowManager"

    const-string v11, "No leaked surfaces; killing applicatons!"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11242
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 11243
    .local v6, pidCandidates:Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    .line 11244
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/WindowManagerService$WindowState;

    .line 11245
    .restart local v9       #ws:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v10, :cond_4

    .line 11246
    iget-object v10, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v10, v10, Lcom/android/server/WindowManagerService$Session;->mPid:I

    iget-object v11, v9, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v11, v11, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-virtual {v6, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 11243
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11249
    .end local v9           #ws:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 11250
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 11251
    .local v7, pids:[I
    const/4 v3, 0x0

    :goto_3
    array-length v10, v7

    if-ge v3, v10, :cond_6

    .line 11252
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    aput v10, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11251
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 11255
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v11, "Free memory"

    invoke-interface {v10, v7, v11}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_7

    .line 11256
    const/4 v4, 0x1

    .line 11263
    .end local v6           #pidCandidates:Landroid/util/SparseIntArray;
    .end local v7           #pids:[I
    :cond_7
    :goto_4
    if-nez v5, :cond_8

    if-eqz v4, :cond_a

    .line 11266
    :cond_8
    :try_start_2
    const-string v10, "WindowManager"

    const-string v11, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11267
    if-eqz v8, :cond_9

    .line 11268
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    .line 11269
    const/4 v10, 0x0

    iput-boolean v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 11270
    const/4 v10, 0x0

    iput-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11274
    :cond_9
    :try_start_3
    iget-object v10, p1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v10}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 11279
    :cond_a
    :goto_5
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11281
    return-void

    .line 11279
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #killedApps:Z
    .end local v5           #leakedSurface:Z
    :catchall_0
    move-exception v10

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 11275
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #killedApps:Z
    .restart local v5       #leakedSurface:Z
    :catch_0
    move-exception v10

    goto :goto_5

    .line 11258
    .restart local v6       #pidCandidates:Landroid/util/SparseIntArray;
    .restart local v7       #pids:[I
    :catch_1
    move-exception v10

    goto :goto_4
.end method

.method public reenableControlKeyguard(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "delayed"

    .prologue
    .line 4288
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4290
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4292
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4293
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->enableKeyguard(ZZ)V

    .line 4294
    :cond_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4296
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4304
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 4306
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4307
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4308
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 4312
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4313
    return-void
.end method

.method public reenableKeyguard(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 4259
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DISABLE_KEYGUARD"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4261
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires DISABLE_KEYGUARD permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4264
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    monitor-enter v1

    .line 4265
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2, p1}, Landroid/os/TokenWatcher;->release(Landroid/os/IBinder;)V

    .line 4267
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4275
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 4277
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyguardTokenWatcher:Landroid/os/TokenWatcher;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4278
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4279
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 4283
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4284
    return-void
.end method

.method public relayoutWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I
    .locals 29
    .parameter "session"
    .parameter "client"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outConfig"
    .parameter "outSurface"

    .prologue
    .line 2378
    const/4 v9, 0x0

    .line 2381
    .local v9, displayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2383
    .local v17, origId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2384
    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v24

    .line 2385
    .local v24, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v24, :cond_0

    .line 2386
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    .line 2644
    :goto_0
    return v25

    .line 2388
    :cond_0
    move/from16 v0, p4

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedWidth:I

    .line 2389
    move/from16 v0, p5

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRequestedHeight:I

    .line 2391
    if-eqz p3, :cond_1

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V

    .line 2395
    :cond_1
    const/4 v6, 0x0

    .line 2396
    .local v6, attrChanges:I
    const/4 v11, 0x0

    .line 2397
    .local v11, flagChanges:I
    if-eqz p3, :cond_2

    .line 2398
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v28, v0

    xor-int v11, v27, v28

    move v0, v11

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2399
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 2404
    :cond_2
    move v0, v6

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 2405
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAlpha:F

    .line 2408
    :cond_3
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x4000

    move/from16 v26, v0

    if-eqz v26, :cond_19

    const/16 v26, 0x1

    move/from16 v20, v26

    .line 2411
    .local v20, scaledWindow:Z
    :goto_1
    if-eqz v20, :cond_1c

    .line 2414
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p4

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_2
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    .line 2416
    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p5

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    :goto_3
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    .line 2422
    :goto_4
    const v26, 0x20008

    and-int v26, v26, v11

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    move/from16 v13, v26

    .line 2426
    .local v13, imMayMove:Z
    :goto_5
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-ne v0, v1, :cond_4

    and-int/lit8 v26, v11, 0x8

    if-nez v26, :cond_4

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    move/from16 v26, v0

    if-nez v26, :cond_1e

    :cond_4
    const/16 v26, 0x1

    move/from16 v12, v26

    .line 2430
    .local v12, focusMayChange:Z
    :goto_6
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, p6

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x10

    and-int v26, v26, v27

    if-eqz v26, :cond_1f

    const/16 v26, 0x1

    move/from16 v23, v26

    .line 2433
    .local v23, wallpaperMayMove:Z
    :goto_7
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRelayoutCalled:Z

    .line 2434
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    move/from16 v16, v0

    .line 2435
    .local v16, oldVisibility:I
    move/from16 v0, p6

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mViewVisibility:I

    .line 2436
    if-nez p6, :cond_22

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move/from16 v26, v0

    if-nez v26, :cond_22

    .line 2438
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v26

    if-nez v26, :cond_20

    const/16 v26, 0x1

    move/from16 v9, v26

    .line 2439
    :goto_8
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 2440
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2441
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    .line 2443
    :cond_6
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 2444
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mDestroying:Z

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2447
    :cond_7
    const/16 v26, 0x8

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 2448
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2450
    :cond_8
    if-eqz v9, :cond_c

    .line 2451
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 2454
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->applyEnterAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2456
    :cond_9
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_a

    .line 2460
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    .line 2462
    :cond_a
    const/4 v8, 0x0

    .line 2463
    .local v8, diff:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_c

    .line 2466
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v26, v0

    move-object/from16 v0, p11

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2475
    .end local v8           #diff:I
    :cond_c
    and-int/lit8 v26, v6, 0x8

    if-eqz v26, :cond_d

    .line 2477
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2478
    const/4 v9, 0x1

    .line 2481
    :cond_d
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->createSurfaceLocked()Landroid/view/Surface;

    move-result-object v21

    .line 2482
    .local v21, surface:Landroid/view/Surface;
    if-eqz v21, :cond_21

    .line 2483
    move-object/from16 v0, p12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V

    .line 2484
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 2485
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2500
    :goto_9
    if-eqz v9, :cond_e

    .line 2501
    const/4 v12, 0x1

    .line 2503
    :cond_e
    :try_start_2
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x7db

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    if-nez v26, :cond_f

    .line 2505
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2506
    const/4 v13, 0x1

    .line 2508
    :cond_f
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 2514
    const v15, 0x480001

    .line 2518
    .local v15, mask:I
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    .line 2519
    .local v19, sa:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const v27, -0x480002

    and-int v26, v26, v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v27, v0

    const v28, 0x480001

    and-int v27, v27, v28

    or-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2579
    .end local v15           #mask:I
    .end local v19           #sa:Landroid/view/WindowManager$LayoutParams;
    .end local v21           #surface:Landroid/view/Surface;
    :cond_10
    :goto_a
    if-eqz v12, :cond_11

    .line 2581
    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 2582
    const/4 v13, 0x0

    .line 2589
    :cond_11
    const/4 v5, 0x0

    .line 2591
    .local v5, assignLayers:Z
    if-eqz v13, :cond_13

    .line 2592
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v26

    if-nez v26, :cond_12

    if-eqz v9, :cond_13

    .line 2598
    :cond_12
    const/4 v5, 0x1

    .line 2601
    :cond_13
    if-eqz v23, :cond_14

    .line 2602
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->adjustWallpaperWindowsLocked()I

    move-result v26

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_14

    .line 2603
    const/4 v5, 0x1

    .line 2607
    :cond_14
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2608
    move/from16 v0, p7

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 2609
    if-eqz v5, :cond_15

    .line 2610
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->assignLayersLocked()V

    .line 2612
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v7

    .line 2613
    .local v7, configChanged:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2614
    if-eqz v9, :cond_16

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mIsWallpaper:Z

    move/from16 v26, v0

    if-eqz v26, :cond_16

    .line 2615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/Display;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/Display;->getHeight()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 2618
    :cond_16
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    .line 2619
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2621
    :cond_17
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2622
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2623
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p10

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2635
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    move v14, v0

    .line 2636
    .local v14, inTouchMode:Z
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2638
    if-eqz v7, :cond_18

    .line 2639
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 2642
    :cond_18
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2644
    if-eqz v14, :cond_2c

    const/16 v25, 0x1

    :goto_b
    if-eqz v9, :cond_2d

    const/16 v26, 0x2

    :goto_c
    or-int v25, v25, v26

    goto/16 :goto_0

    .line 2408
    .end local v5           #assignLayers:Z
    .end local v7           #configChanged:Z
    .end local v12           #focusMayChange:Z
    .end local v13           #imMayMove:Z
    .end local v14           #inTouchMode:Z
    .end local v16           #oldVisibility:I
    .end local v20           #scaledWindow:Z
    .end local v23           #wallpaperMayMove:Z
    :cond_19
    const/16 v26, 0x0

    move/from16 v20, v26

    goto/16 :goto_1

    .line 2414
    .restart local v20       #scaledWindow:Z
    :cond_1a
    const/high16 v26, 0x3f80

    goto/16 :goto_2

    .line 2416
    :cond_1b
    const/high16 v26, 0x3f80

    goto/16 :goto_3

    .line 2419
    :cond_1c
    const/high16 v26, 0x3f80

    :try_start_3
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mVScale:F

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mHScale:F

    goto/16 :goto_4

    .line 2636
    .end local v6           #attrChanges:I
    .end local v11           #flagChanges:I
    .end local v20           #scaledWindow:Z
    .end local v24           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v26

    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v26

    .line 2422
    .restart local v6       #attrChanges:I
    .restart local v11       #flagChanges:I
    .restart local v20       #scaledWindow:Z
    .restart local v24       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1d
    const/16 v26, 0x0

    move/from16 v13, v26

    goto/16 :goto_5

    .line 2426
    .restart local v13       #imMayMove:Z
    :cond_1e
    const/16 v26, 0x0

    move/from16 v12, v26

    goto/16 :goto_6

    .line 2430
    .restart local v12       #focusMayChange:Z
    :cond_1f
    const/16 v26, 0x0

    move/from16 v23, v26

    goto/16 :goto_7

    .line 2438
    .restart local v16       #oldVisibility:I
    .restart local v23       #wallpaperMayMove:Z
    :cond_20
    const/16 v26, 0x0

    move/from16 v9, v26

    goto/16 :goto_8

    .line 2491
    .restart local v21       #surface:Landroid/view/Surface;
    :cond_21
    :try_start_4
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_9

    .line 2493
    .end local v21           #surface:Landroid/view/Surface;
    :catch_0
    move-exception v26

    move-object/from16 v10, v26

    .line 2494
    .local v10, e:Ljava/lang/Exception;
    :try_start_5
    const-string v26, "WindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception thrown when creating surface for client "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2497
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2498
    const/16 v26, 0x0

    monitor-exit v25

    move/from16 v25, v26

    goto/16 :goto_0

    .line 2522
    .end local v10           #e:Ljava/lang/Exception;
    :cond_22
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mEnterAnimationPending:Z

    .line 2523
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    .line 2529
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    move/from16 v26, v0

    if-eqz v26, :cond_23

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 2532
    :cond_23
    const/16 v22, 0x2002

    .line 2533
    .local v22, transit:I
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 2534
    const/16 v22, 0x5

    .line 2536
    :cond_24
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-nez v26, :cond_27

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v26

    if-eqz v26, :cond_27

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v26

    if-eqz v26, :cond_27

    .line 2538
    const/4 v12, 0x1

    .line 2539
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 2561
    .end local v22           #transit:I
    :cond_25
    :goto_d
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_26

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v26, v0

    const/high16 v27, 0x1000

    and-int v26, v26, v27

    if-eqz v26, :cond_26

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2b

    .line 2568
    :cond_26
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mSurfacePendingDestroy:Z

    .line 2569
    invoke-virtual/range {p12 .. p12}, Landroid/view/Surface;->release()V

    goto/16 :goto_a

    .line 2542
    .restart local v22       #transit:I
    :cond_27
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v26

    if-eqz v26, :cond_28

    .line 2545
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    goto :goto_d

    .line 2546
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_29

    .line 2550
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2551
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    goto :goto_d

    .line 2553
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2a

    .line 2554
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 2556
    :cond_2a
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/WindowManagerService$WindowState;->destroySurfaceLocked()V

    goto :goto_d

    .line 2571
    .end local v22           #transit:I
    :cond_2b
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 2574
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mReportDestroySurface:Z

    .line 2575
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    move-object/from16 v26, v0

    move-object/from16 v0, p12

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/Surface;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    .line 2644
    .restart local v5       #assignLayers:Z
    .restart local v7       #configChanged:Z
    .restart local v14       #inTouchMode:Z
    :cond_2c
    const/16 v25, 0x0

    goto/16 :goto_b

    :cond_2d
    const/16 v26, 0x0

    goto/16 :goto_c
.end method

.method public removeAppToken(Landroid/os/IBinder;)V
    .locals 14
    .parameter "token"

    .prologue
    const/4 v13, -0x1

    .line 3864
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "removeAppToken()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3866
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3869
    :cond_0
    const/4 v1, 0x0

    .line 3870
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v11, 0x0

    .line 3871
    .local v11, startingToken:Lcom/android/server/WindowManagerService$AppWindowToken;
    const/4 v7, 0x0

    .line 3873
    .local v7, delayed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 3874
    .local v9, origId:J
    iget-object v12, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 3875
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 3876
    .local v6, basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3877
    if-eqz v6, :cond_9

    iget-object v1, v6, Lcom/android/server/WindowManagerService$WindowToken;->appWindowToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v1, :cond_9

    .line 3879
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    move-result v7

    .line 3880
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 3881
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3882
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3883
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3884
    const/4 v7, 0x1

    .line 3894
    :cond_1
    :goto_0
    if-eqz v7, :cond_8

    .line 3896
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3904
    :goto_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3905
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_2

    .line 3906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mLastEnterAnimParams:Landroid/view/WindowManager$LayoutParams;

    .line 3909
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    .line 3910
    iget-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v0, :cond_3

    .line 3911
    move-object v11, v1

    .line 3913
    :cond_3
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3914
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-ne v0, v1, :cond_4

    .line 3916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3917
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3918
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V

    .line 3924
    :cond_4
    :goto_2
    if-nez v7, :cond_5

    if-eqz v1, :cond_5

    .line 3925
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 3927
    :cond_5
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3928
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3930
    if-eqz v11, :cond_6

    .line 3933
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v11}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 3934
    .local v8, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v0, v8}, Lcom/android/server/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3936
    .end local v8           #m:Landroid/os/Message;
    :cond_6
    return-void

    .line 3885
    :cond_7
    :try_start_1
    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v13, :cond_1

    .line 3886
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3887
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    .line 3888
    const/4 v7, 0x1

    goto :goto_0

    .line 3901
    :cond_8
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3902
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    goto :goto_1

    .line 3927
    .end local v6           #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3921
    .restart local v6       #basewtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_9
    :try_start_2
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to remove non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V
    .locals 3
    .parameter "session"
    .parameter "client"

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2092
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    .line 2093
    .local v0, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v0, :cond_0

    .line 2094
    monitor-exit v1

    .line 2098
    :goto_0
    return-void

    .line 2096
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2097
    monitor-exit v1

    goto :goto_0

    .end local v0           #win:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeWindowLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V
    .locals 8
    .parameter "session"
    .parameter "win"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2108
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2120
    .local v0, origId:J
    const/4 v3, 0x0

    .line 2125
    .local v3, wasVisible:Z
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2128
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2130
    const/16 v2, 0x2002

    .line 2131
    .local v2, transit:I
    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v7, :cond_0

    .line 2132
    const/4 v2, 0x5

    .line 2135
    :cond_0
    invoke-direct {p0, p2, v2, v6}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2136
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2139
    .end local v2           #transit:I
    :cond_1
    iget-boolean v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2142
    :cond_2
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    .line 2143
    iput-boolean v5, p2, Lcom/android/server/WindowManagerService$WindowState;->mRemoveOnExit:Z

    .line 2144
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2145
    invoke-direct {p0, v7}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2146
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2147
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v4, :cond_3

    .line 2148
    iget-object v4, p2, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 2151
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2166
    :goto_0
    return-void

    .line 2156
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/WindowManagerService$Session;Lcom/android/server/WindowManagerService$WindowState;)V

    .line 2159
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v4

    iget v5, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2162
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 2164
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 2165
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 14
    .parameter "token"

    .prologue
    .line 2975
    const-string v8, "android.permission.MANAGE_APP_TOKENS"

    const-string v9, "removeWindowToken()"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2977
    new-instance v8, Ljava/lang/SecurityException;

    const-string v9, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2980
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2981
    .local v4, origId:J
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 2982
    :try_start_0
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2983
    .local v7, wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mTokenList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2984
    if-eqz v7, :cond_7

    .line 2985
    const/4 v2, 0x0

    .line 2986
    .local v2, delayed:Z
    iget-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-nez v9, :cond_5

    .line 2987
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 2989
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2990
    .local v0, N:I
    const/4 v1, 0x0

    .line 2992
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2993
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 2995
    .local v6, win:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2996
    const/4 v2, 0x1

    .line 2999
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3000
    const/16 v9, 0x2002

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v10}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3002
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    iget-object v10, v6, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v11, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 3004
    const/4 v1, 0x1

    .line 2992
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3008
    .end local v6           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    if-eqz v1, :cond_4

    .line 3009
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3010
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3011
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3014
    :cond_4
    if-eqz v2, :cond_6

    .line 3015
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3024
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    :cond_5
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3025
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3026
    return-void

    .line 3016
    .restart local v0       #N:I
    .restart local v1       #changed:Z
    .restart local v2       #delayed:Z
    .restart local v3       #i:I
    :cond_6
    :try_start_1
    iget v9, v7, Lcom/android/server/WindowManagerService$WindowToken;->windowType:I

    const/16 v10, 0x7dd

    if-ne v9, v10, :cond_5

    .line 3017
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3024
    .end local v0           #N:I
    .end local v1           #changed:Z
    .end local v2           #delayed:Z
    .end local v3           #i:I
    .end local v7           #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 3022
    .restart local v7       #wtoken:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_7
    :try_start_2
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempted to remove non-existing token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method requestAnimationLocked(J)V
    .locals 3
    .parameter "delay"

    .prologue
    .line 11157
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    if-nez v0, :cond_0

    .line 11158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService;->mAnimationPending:Z

    .line 11159
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11161
    :cond_0
    return-void
.end method

.method public resumeKeyDispatching(Landroid/os/IBinder;)V
    .locals 3
    .parameter "_token"

    .prologue
    .line 5688
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "resumeKeyDispatching()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5690
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5693
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5694
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowToken;

    .line 5695
    .local v0, token:Lcom/android/server/WindowManagerService$WindowToken;
    if-eqz v0, :cond_1

    .line 5696
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v2, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->resumeDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V

    .line 5698
    :cond_1
    monitor-exit v1

    .line 5699
    return-void

    .line 5698
    .end local v0           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method sendNewConfiguration()V
    .locals 2

    .prologue
    .line 4941
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4944
    :goto_0
    return-void

    .line 4942
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method sendPointerToWallpaperLocked(Lcom/android/server/WindowManagerService$WindowState;Landroid/view/MotionEvent;J)V
    .locals 9
    .parameter "srcWin"
    .parameter "pointer"
    .parameter "eventTime"

    .prologue
    .line 1818
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1819
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_3

    .line 1820
    add-int/lit8 v0, v0, -0x1

    .line 1821
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1822
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1823
    .local v1, curWallpaperIndex:I
    :cond_1
    :goto_0
    if-lez v1, :cond_0

    .line 1824
    add-int/lit8 v1, v1, -0x1

    .line 1825
    iget-object v6, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WindowManagerService$WindowState;

    .line 1826
    .local v5, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_1

    .line 1831
    :try_start_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1832
    .local v3, ev:Landroid/view/MotionEvent;
    if-eqz p1, :cond_2

    .line 1833
    iget-object v6, p1, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p1, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1838
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1846
    :goto_2
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v7, 0x0

    invoke-interface {v6, v3, p3, p4, v7}, Landroid/view/IWindow;->dispatchPointer(Landroid/view/MotionEvent;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1847
    .end local v3           #ev:Landroid/view/MotionEvent;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 1848
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "Failure sending pointer to wallpaper"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1836
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #ev:Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    iget-object v6, v5, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, v5, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 1840
    :pswitch_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mSendingPointersToWallpaper:Z

    goto :goto_2

    .line 1843
    :pswitch_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mSendingPointersToWallpaper:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1852
    .end local v1           #curWallpaperIndex:I
    .end local v3           #ev:Landroid/view/MotionEvent;
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v5           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_3
    return-void

    .line 1838
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendWindowWallpaperCommandLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12
    .parameter "window"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "sync"

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    if-ne p1, v0, :cond_3

    .line 2346
    :cond_0
    move/from16 v9, p7

    .line 2347
    .local v9, doWait:Z
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2348
    .local v7, curTokenIndex:I
    :cond_1
    if-lez v7, :cond_2

    .line 2349
    add-int/lit8 v7, v7, -0x1

    .line 2350
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/WindowManagerService$WindowToken;

    .line 2351
    .local v10, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v0, v10, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2352
    .local v8, curWallpaperIndex:I
    :goto_0
    if-lez v8, :cond_1

    .line 2353
    add-int/lit8 v8, v8, -0x1

    .line 2354
    iget-object v0, v10, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/WindowManagerService$WindowState;

    .line 2356
    .local v11, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :try_start_0
    iget-object v0, v11, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2359
    const/16 p7, 0x0

    goto :goto_0

    .line 2365
    .end local v8           #curWallpaperIndex:I
    .end local v10           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v11           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    if-eqz v9, :cond_3

    .line 2370
    .end local v7           #curTokenIndex:I
    .end local v9           #doWait:Z
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 2360
    .restart local v7       #curTokenIndex:I
    .restart local v8       #curWallpaperIndex:I
    .restart local v9       #doWait:Z
    .restart local v10       #token:Lcom/android/server/WindowManagerService$WindowToken;
    .restart local v11       #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAnimationScale(IF)V
    .locals 2
    .parameter "which"
    .parameter "scale"

    .prologue
    .line 4359
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4361
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4364
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    const/4 p2, 0x0

    .line 4366
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 4367
    packed-switch p1, :pswitch_data_0

    .line 4373
    :goto_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4374
    return-void

    .line 4365
    :cond_2
    const/high16 v0, 0x41a0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/high16 p2, 0x41a0

    goto :goto_0

    .line 4368
    :pswitch_0
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    goto :goto_1

    .line 4369
    :pswitch_1
    invoke-static {p2}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    goto :goto_1

    .line 4367
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAnimationScales([F)V
    .locals 3
    .parameter "scales"

    .prologue
    const/4 v2, 0x1

    .line 4377
    const-string v0, "android.permission.SET_ANIMATION_SCALE"

    const-string v1, "setAnimationScale()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4379
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ANIMATION_SCALE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4382
    :cond_0
    if-eqz p1, :cond_2

    .line 4383
    array-length v0, p1

    if-lt v0, v2, :cond_1

    .line 4384
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mWindowAnimationScale:F

    .line 4386
    :cond_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 4387
    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/WindowManagerService;->fixScale(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/WindowManagerService;->mTransitionAnimationScale:F

    .line 4392
    :cond_2
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4393
    return-void
.end method

.method public setAppGroupId(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "groupId"

    .prologue
    .line 3059
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppStartingIcon()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3061
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3064
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3065
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3066
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3067
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set group id of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    monitor-exit v1

    .line 3072
    :goto_0
    return-void

    .line 3070
    :cond_1
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->groupId:I

    .line 3071
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAppOrientation(Landroid/view/IApplicationToken;I)V
    .locals 5
    .parameter "token"
    .parameter "requestedOrientation"

    .prologue
    .line 3266
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppOrientation()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3268
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3271
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3272
    :try_start_0
    invoke-interface {p1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3273
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3274
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set orientation of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    monitor-exit v1

    .line 3280
    :goto_0
    return-void

    .line 3278
    :cond_1
    iput p2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->requestedOrientation:I

    .line 3279
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V
    .locals 18
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "transferFrom"
    .parameter "createIfNeeded"

    .prologue
    .line 3398
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setAppStartingIcon()"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3400
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3403
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 3408
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v16

    .line 3409
    .local v16, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v16, :cond_1

    .line 3410
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to set icon of non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    monitor-exit v17

    .line 3557
    :goto_0
    return-void

    .line 3417
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    move v4, v0

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3418
    :cond_2
    monitor-exit v17

    goto :goto_0

    .line 3556
    .end local v16           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3421
    .restart local v16       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    :try_start_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v4, v0

    if-eqz v4, :cond_4

    .line 3422
    monitor-exit v17

    goto :goto_0

    .line 3425
    :cond_4
    if-eqz p7, :cond_c

    .line 3426
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v15

    .line 3427
    .local v15, ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v15, :cond_c

    .line 3428
    iget-object v14, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3429
    .local v14, startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v14, :cond_b

    .line 3430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    move v4, v0

    if-eqz v4, :cond_5

    .line 3434
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 3439
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3443
    .local v12, origId:J
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3444
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 3445
    move-object v0, v14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3446
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3447
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingView:Landroid/view/View;

    .line 3448
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 3449
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3450
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 3451
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mRootToken:Lcom/android/server/WindowManagerService$WindowToken;

    .line 3452
    move-object/from16 v0, v16

    move-object v1, v14

    iput-object v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3456
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3457
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3458
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/WindowManagerService;->addWindowToListInOrderLocked(Lcom/android/server/WindowManagerService$WindowState;Z)V

    .line 3465
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_6

    .line 3466
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 3468
    :cond_6
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    if-eqz v4, :cond_7

    .line 3469
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->firstWindowDrawn:Z

    .line 3471
    :cond_7
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v4, :cond_8

    .line 3472
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 3473
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3474
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3476
    :cond_8
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v4, v0

    iget-boolean v5, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eq v4, v5, :cond_9

    .line 3477
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3478
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3480
    :cond_9
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_a

    .line 3481
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3482
    iget-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animating:Z

    .line 3483
    iget v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 3484
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3485
    const/4 v4, 0x0

    iput v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->animLayerAdjustment:I

    .line 3486
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 3487
    invoke-virtual {v15}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateLayers()V

    .line 3490
    :cond_a
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3491
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3492
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3493
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3494
    monitor-exit v17

    goto/16 :goto_0

    .line 3495
    .end local v12           #origId:J
    :cond_b
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    if-eqz v4, :cond_c

    .line 3501
    iget-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3502
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3503
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3508
    .local v11, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3509
    monitor-exit v17

    goto/16 :goto_0

    .line 3516
    .end local v11           #m:Landroid/os/Message;
    .end local v14           #startingWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v15           #ttoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_c
    if-nez p8, :cond_d

    .line 3517
    monitor-exit v17

    goto/16 :goto_0

    .line 3524
    :cond_d
    if-eqz p3, :cond_11

    .line 3525
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    move-object v0, v4

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v10

    .line 3528
    .local v10, ent:Lcom/android/server/AttributeCache$Entry;
    if-nez v10, :cond_e

    .line 3529
    const-string v4, "WindowManager"

    const-string v5, "setAppStartingWindow() : ent==null !! stop starting activity to prevent a system crash."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    monitor-exit v17

    goto/16 :goto_0

    .line 3533
    :cond_e
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3535
    monitor-exit v17

    goto/16 :goto_0

    .line 3537
    :cond_f
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3539
    monitor-exit v17

    goto/16 :goto_0

    .line 3541
    :cond_10
    iget-object v4, v10, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3543
    monitor-exit v17

    goto/16 :goto_0

    .line 3547
    .end local v10           #ent:Lcom/android/server/AttributeCache$Entry;
    :cond_11
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mStartingIconInTransition:Z

    .line 3548
    new-instance v4, Lcom/android/server/WindowManagerService$StartingData;

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lcom/android/server/WindowManagerService$StartingData;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;II)V

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingData:Lcom/android/server/WindowManagerService$StartingData;

    .line 3551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    const/4 v5, 0x5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 3555
    .restart local v11       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/android/server/WindowManagerService$H;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3556
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 9
    .parameter "token"
    .parameter "visible"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3673
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppVisibility()"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3675
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3680
    :cond_0
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 3681
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 3682
    .local v1, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_1

    .line 3683
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    monitor-exit v8

    .line 3756
    :goto_0
    return-void

    .line 3701
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/WindowManagerService;->mNextAppTransition:I

    if-eq v0, v5, :cond_6

    .line 3704
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-eq v0, p2, :cond_2

    .line 3705
    monitor-exit v8

    goto :goto_0

    .line 3755
    .end local v1           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3707
    .restart local v1       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    if-nez p2, :cond_4

    move v0, v4

    :goto_1
    :try_start_1
    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    .line 3711
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->setDummyAnimation()V

    .line 3712
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3713
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3714
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3715
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->inPendingTransaction:Z

    .line 3716
    if-eqz p2, :cond_5

    .line 3717
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3718
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingDisplayed:Z

    .line 3719
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->startingMoved:Z

    .line 3724
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-eqz v0, :cond_3

    .line 3725
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->allDrawn:Z

    .line 3726
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToShow:Z

    .line 3728
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    if-eqz v0, :cond_3

    .line 3735
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3736
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3748
    :cond_3
    :goto_2
    monitor-exit v8

    goto :goto_0

    :cond_4
    move v0, v3

    .line 3707
    goto :goto_1

    .line 3740
    :cond_5
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3744
    iget-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    if-nez v0, :cond_3

    .line 3745
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->waitingToHide:Z

    goto :goto_2

    .line 3751
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3752
    .local v6, origId:J
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z

    .line 3753
    invoke-virtual {v1}, Lcom/android/server/WindowManagerService$AppWindowToken;->updateReportedVisibilityLocked()V

    .line 3754
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3755
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setAppWillBeHidden(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 3560
    const-string v1, "android.permission.MANAGE_APP_TOKENS"

    const-string v2, "setAppWillBeHidden()"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3562
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3567
    :cond_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3568
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v0

    .line 3569
    .local v0, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v0, :cond_1

    .line 3570
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to set will be hidden of non-existing app token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    monitor-exit v1

    .line 3575
    :goto_0
    return-void

    .line 3573
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3574
    monitor-exit v1

    goto :goto_0

    .end local v0           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setEventDispatching(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 5702
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "resumeKeyDispatching()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5704
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5707
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5708
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v1, p1}, Lcom/android/server/WindowManagerService$KeyWaiter;->setEventDispatchingLocked(Z)V

    .line 5709
    monitor-exit v0

    .line 5710
    return-void

    .line 5709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFocusedApp(Landroid/os/IBinder;Z)V
    .locals 8
    .parameter "token"
    .parameter "moveFocusNow"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3294
    const-string v4, "android.permission.MANAGE_APP_TOKENS"

    const-string v5, "setFocusedApp()"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3296
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3299
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 3300
    const/4 v0, 0x0

    .line 3301
    .local v0, changed:Z
    if-nez p1, :cond_3

    .line 3303
    :try_start_0
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eqz v5, :cond_2

    move v0, v7

    .line 3304
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3305
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V

    .line 3318
    :goto_1
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 3319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3320
    .local v2, origId:J
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3321
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3323
    .end local v2           #origId:J
    :cond_1
    monitor-exit v4

    .line 3324
    :goto_2
    return-void

    :cond_2
    move v0, v6

    .line 3303
    goto :goto_0

    .line 3307
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v1

    .line 3308
    .local v1, newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-nez v1, :cond_4

    .line 3309
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted to set focus to non-existing app token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    monitor-exit v4

    goto :goto_2

    .line 3323
    .end local v1           #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3312
    .restart local v1       #newFocus:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-eq v5, v1, :cond_5

    move v0, v7

    .line 3313
    :goto_3
    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 3315
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->tickle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    move v0, v6

    .line 3312
    goto :goto_3
.end method

.method public setInTouchMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 4563
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4564
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 4565
    monitor-exit v0

    .line 4566
    return-void

    .line 4565
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setInputMethodAnimLayerAdjustment(I)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 1098
    iput p1, p0, Lcom/android/server/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    .line 1099
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mInputMethodWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 1100
    .local v2, imw:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    .line 1101
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    .line 1104
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1105
    .local v3, wi:I
    :goto_0
    if-lez v3, :cond_0

    .line 1106
    add-int/lit8 v3, v3, -0x1

    .line 1107
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mChildWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    .line 1108
    .local v0, cw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v0, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_0

    .line 1113
    .end local v0           #cw:Lcom/android/server/WindowManagerService$WindowState;
    .end local v3           #wi:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1114
    .local v1, di:I
    :goto_1
    if-lez v1, :cond_1

    .line 1115
    add-int/lit8 v1, v1, -0x1

    .line 1116
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mInputMethodDialogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #imw:Lcom/android/server/WindowManagerService$WindowState;
    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 1117
    .restart local v2       #imw:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_1

    .line 1121
    :cond_1
    return-void
.end method

.method setInsetsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "session"
    .parameter "client"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"

    .prologue
    .line 2289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2291
    .local v0, origId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2292
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v2

    .line 2293
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v2, :cond_0

    .line 2294
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenInsetsPending:Z

    .line 2295
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2296
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2297
    iput p3, v2, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    .line 2298
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 2299
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2301
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2303
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2305
    return-void

    .line 2301
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2303
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 3253
    const-string v0, "android.permission.MANAGE_APP_TOKENS"

    const-string v1, "setNewConfiguration()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3255
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3258
    :cond_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3259
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 3260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 3261
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3262
    monitor-exit v0

    .line 3263
    return-void

    .line 3262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRotation(IZI)V
    .locals 2
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4570
    const-string v0, "android.permission.SET_ORIENTATION"

    const-string v1, "setRotation()"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4572
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SET_ORIENTATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4575
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService;->setRotationUnchecked(IZI)V

    .line 4576
    return-void
.end method

.method public setRotationUnchecked(IZI)V
    .locals 5
    .parameter "rotation"
    .parameter "alwaysSendConfiguration"
    .parameter "animFlags"

    .prologue
    .line 4583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4585
    .local v1, origId:J
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4586
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z

    move-result v0

    .line 4587
    .local v0, changed:Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4589
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 4590
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->sendNewConfiguration()V

    .line 4593
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4594
    return-void

    .line 4587
    .end local v0           #changed:Z
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public setRotationUncheckedLocked(II)Z
    .locals 10
    .parameter "rotation"
    .parameter "animFlags"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4606
    const/16 v3, -0x3e8

    if-ne p1, v3, :cond_2

    .line 4607
    iget p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 4613
    :goto_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    iget v5, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    iget-boolean v6, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    invoke-interface {v3, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result p1

    .line 4616
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    if-eq v3, p1, :cond_3

    move v0, v7

    .line 4618
    .local v0, changed:Z
    :goto_1
    if-eqz v0, :cond_5

    .line 4624
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    .line 4625
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWindowsFreezingScreen:Z

    .line 4626
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v9}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 4627
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v9}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4629
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 4630
    iput-boolean v7, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 4631
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 4632
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting rotation to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v3, p1}, Lcom/android/server/WindowManagerService$KeyQ;->setOrientation(I)V

    .line 4634
    iget-boolean v3, p0, Lcom/android/server/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v3, :cond_0

    .line 4635
    invoke-static {v8, p1, p2}, Landroid/view/Surface;->setOrientation(III)V

    .line 4637
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v7

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 4638
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 4639
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_1

    .line 4640
    iput-boolean v7, v2, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 4637
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 4609
    .end local v0           #changed:Z
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    iput p1, p0, Lcom/android/server/WindowManagerService;->mRequestedRotation:I

    .line 4610
    iput p2, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    goto/16 :goto_0

    :cond_3
    move v0, v8

    .line 4616
    goto :goto_1

    .line 4643
    .restart local v0       #changed:Z
    .restart local v1       #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v7

    :goto_3
    if-ltz v1, :cond_5

    .line 4645
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IRotationWatcher;

    invoke-interface {v3, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4643
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 4651
    .end local v1           #i:I
    :cond_5
    return v0

    .line 4646
    .restart local v1       #i:I
    :catch_0
    move-exception v3

    goto :goto_4
.end method

.method setTokenVisibilityLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZ)Z
    .locals 17
    .parameter "wtoken"
    .parameter "lp"
    .parameter "visible"
    .parameter "transit"
    .parameter "performLayout"

    .prologue
    .line 3579
    const/4 v7, 0x0

    .line 3581
    .local v7, delayed:Z
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    move v12, v0

    move v0, v12

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 3582
    if-nez p3, :cond_4

    const/4 v12, 0x1

    :goto_0
    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->clientHidden:Z

    .line 3583
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/WindowManagerService$AppWindowToken;->sendAppVisibilityToClients()V

    .line 3586
    :cond_0
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->willBeHidden:Z

    .line 3587
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    move v12, v0

    move v0, v12

    move/from16 v1, p3

    if-ne v0, v1, :cond_c

    .line 3588
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3589
    .local v5, N:I
    const/4 v6, 0x0

    .line 3594
    .local v6, changed:Z
    const/4 v9, 0x0

    .line 3596
    .local v9, runningAppAnimation:Z
    const/4 v12, -0x1

    move/from16 v0, p4

    move v1, v12

    if-eq v0, v1, :cond_2

    .line 3597
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    sget-object v13, Lcom/android/server/WindowManagerService;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v12, v13, :cond_1

    .line 3598
    const/4 v12, 0x0

    move-object v0, v12

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    .line 3600
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$AppWindowToken;Landroid/view/WindowManager$LayoutParams;IZ)Z

    .line 3601
    const/4 v6, 0x1

    .line 3602
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    if-eqz v12, :cond_2

    .line 3603
    const/4 v9, 0x1

    move v7, v9

    .line 3607
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v5, :cond_a

    .line 3608
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    move-object v12, v0

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/WindowManagerService$WindowState;

    .line 3609
    .local v11, win:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v12, v0

    if-ne v11, v12, :cond_5

    .line 3607
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3582
    .end local v5           #N:I
    .end local v6           #changed:Z
    .end local v8           #i:I
    .end local v9           #runningAppAnimation:Z
    .end local v11           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 3613
    .restart local v5       #N:I
    .restart local v6       #changed:Z
    .restart local v8       #i:I
    .restart local v9       #runningAppAnimation:Z
    .restart local v11       #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3614
    const/4 v7, 0x1

    .line 3619
    :cond_6
    if-eqz p3, :cond_8

    .line 3620
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3621
    if-nez v9, :cond_7

    .line 3622
    const/16 v12, 0x1001

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3625
    :cond_7
    const/4 v6, 0x1

    goto :goto_2

    .line 3627
    :cond_8
    invoke-virtual {v11}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3628
    if-nez v9, :cond_9

    .line 3629
    const/16 v12, 0x2002

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->applyAnimationLocked(Lcom/android/server/WindowManagerService$WindowState;IZ)Z

    .line 3632
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    move-object v12, v0

    iget-object v13, v11, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget-object v14, v11, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 3634
    const/4 v6, 0x1

    goto :goto_2

    .line 3638
    .end local v11           #win:Lcom/android/server/WindowManagerService$WindowState;
    :cond_a
    if-nez p3, :cond_e

    const/4 v12, 0x1

    :goto_3
    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    move v0, v12

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$AppWindowToken;->hidden:Z

    .line 3639
    if-nez p3, :cond_f

    .line 3640
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3656
    :cond_b
    :goto_4
    if-eqz v6, :cond_c

    .line 3657
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3658
    if-eqz p5, :cond_c

    .line 3659
    const/4 v12, 0x3

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService;->updateFocusedWindowLocked(I)Z

    .line 3660
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3665
    .end local v5           #N:I
    .end local v6           #changed:Z
    .end local v8           #i:I
    .end local v9           #runningAppAnimation:Z
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->animation:Landroid/view/animation/Animation;

    move-object v12, v0

    if-eqz v12, :cond_d

    .line 3666
    const/4 v7, 0x1

    .line 3669
    :cond_d
    return v7

    .line 3638
    .restart local v5       #N:I
    .restart local v6       #changed:Z
    .restart local v8       #i:I
    .restart local v9       #runningAppAnimation:Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_3

    .line 3644
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->startingWindow:Lcom/android/server/WindowManagerService$WindowState;

    move-object v10, v0

    .line 3645
    .local v10, swin:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v10, :cond_b

    iget-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mDrawPending:Z

    if-nez v12, :cond_10

    iget-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mCommitDrawPending:Z

    if-eqz v12, :cond_b

    .line 3647
    :cond_10
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibility:Z

    .line 3648
    const/4 v12, 0x0

    iput-boolean v12, v10, Lcom/android/server/WindowManagerService$WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_4
.end method

.method setWallpaperAnimLayerAdjustmentLocked(I)V
    .locals 5
    .parameter "adj"

    .prologue
    .line 1636
    iput p1, p0, Lcom/android/server/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    .line 1637
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1638
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_1

    .line 1639
    add-int/lit8 v0, v0, -0x1

    .line 1640
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1641
    .local v2, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1642
    .local v1, curWallpaperIndex:I
    :goto_0
    if-lez v1, :cond_0

    .line 1643
    add-int/lit8 v1, v1, -0x1

    .line 1644
    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 1645
    .local v3, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    iget v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    goto :goto_0

    .line 1650
    .end local v1           #curWallpaperIndex:I
    .end local v2           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v3           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    return-void
.end method

.method public setWindowWallpaperPositionLocked(Lcom/android/server/WindowManagerService$WindowState;FFFF)V
    .locals 1
    .parameter "window"
    .parameter "x"
    .parameter "y"
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 2321
    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 2322
    :cond_0
    iput p2, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 2323
    iput p3, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 2324
    iput p4, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 2325
    iput p5, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 2326
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2327
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 2330
    :cond_1
    return-void
.end method

.method showSurfaceRobustlyLocked(Lcom/android/server/WindowManagerService$WindowState;)Z
    .locals 5
    .parameter "win"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 11173
    :try_start_0
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 11174
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurfaceShown:Z

    .line 11175
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V

    .line 11176
    iget-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    if-eqz v1, :cond_0

    .line 11179
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mTurnOnScreen:Z

    .line 11180
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService;->mTurnOnScreen:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v1, v2

    .line 11190
    :goto_0
    return v1

    .line 11184
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 11185
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11188
    const-string v1, "show"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/WindowManagerService$WindowState;Ljava/lang/String;)V

    move v1, v4

    .line 11190
    goto :goto_0
.end method

.method public startAppFreezingScreen(Landroid/os/IBinder;I)V
    .locals 7
    .parameter "token"
    .parameter "configChanges"

    .prologue
    .line 3822
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3824
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3827
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3828
    if-nez p2, :cond_1

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3830
    monitor-exit v3

    .line 3842
    :goto_0
    return-void

    .line 3833
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3834
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_3

    .line 3835
    :cond_2
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to freeze screen with non-existing app token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    monitor-exit v3

    goto :goto_0

    .line 3841
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3838
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3839
    .local v0, origId:J
    invoke-virtual {p0, v2, p2}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 3840
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3841
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V
    .locals 8
    .parameter "wtoken"
    .parameter "configChanges"

    .prologue
    const/16 v5, 0x11

    const/4 v7, 0x1

    .line 3802
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->hiddenRequested:Z

    if-nez v3, :cond_1

    .line 3803
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-nez v3, :cond_0

    .line 3804
    iput-boolean v7, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 3805
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 3806
    iget v3, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v3, v7, :cond_0

    .line 3807
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3808
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService$H;->removeMessages(I)V

    .line 3809
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mH:Lcom/android/server/WindowManagerService$H;

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3813
    :cond_0
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3814
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3815
    iget-object v3, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$WindowState;

    .line 3816
    .local v2, w:Lcom/android/server/WindowManagerService$WindowState;
    iput-boolean v7, v2, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 3814
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3819
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_1
    return-void
.end method

.method public startViewServer(I)Z
    .locals 6
    .parameter "port"

    .prologue
    const/4 v3, 0x0

    const-string v5, "WindowManager"

    const-string v4, "View server did not start"

    .line 4699
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 4728
    :goto_0
    return v1

    .line 4703
    :cond_0
    const-string v1, "android.permission.DUMP"

    const-string v2, "startViewServer"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 4704
    goto :goto_0

    .line 4707
    :cond_1
    const/16 v1, 0x400

    if-ge p1, v1, :cond_2

    move v1, v3

    .line 4708
    goto :goto_0

    .line 4711
    :cond_2
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v1, :cond_4

    .line 4712
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4714
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4715
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 4716
    .local v0, e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    move v1, v3

    .line 4719
    goto :goto_0

    .line 4723
    :cond_4
    :try_start_1
    new-instance v1, Lcom/android/server/ViewServer;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ViewServer;-><init>(Lcom/android/server/WindowManagerService;I)V

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    .line 4724
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v1}, Lcom/android/server/ViewServer;->start()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 4725
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 4726
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "WindowManager"

    const-string v1, "View server did not start"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 4728
    goto :goto_0
.end method

.method public stopAppFreezingScreen(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "force"

    .prologue
    .line 3845
    const-string v3, "android.permission.MANAGE_APP_TOKENS"

    const-string v4, "setAppFreezingScreen()"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3847
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3850
    :cond_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3851
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v2

    .line 3852
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v4, :cond_2

    .line 3853
    :cond_1
    monitor-exit v3

    .line 3861
    :goto_0
    return-void

    .line 3855
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3858
    .local v0, origId:J
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4, p2}, Lcom/android/server/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V

    .line 3859
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3860
    monitor-exit v3

    goto :goto_0

    .end local v0           #origId:J
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public stopViewServer()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4745
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 4756
    :goto_0
    return v0

    .line 4749
    :cond_0
    const-string v0, "android.permission.DUMP"

    const-string v1, "stopViewServer"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 4750
    goto :goto_0

    .line 4753
    :cond_1
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    if-eqz v0, :cond_2

    .line 4754
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mViewServer:Lcom/android/server/ViewServer;

    invoke-virtual {v0}, Lcom/android/server/ViewServer;->stop()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4756
    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 6752
    const-string v0, "WindowManager"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6753
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->systemReady()V

    .line 6754
    return-void
.end method

.method unsetAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;ZZ)V
    .locals 7
    .parameter "wtoken"
    .parameter "unfreezeSurfaceNow"
    .parameter "force"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3760
    iget-boolean v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    if-eqz v4, :cond_6

    .line 3763
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3764
    .local v0, N:I
    const/4 v2, 0x0

    .line 3765
    .local v2, unfrozeWindows:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3766
    iget-object v4, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->allAppWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/WindowManagerService$WindowState;

    .line 3767
    .local v3, w:Lcom/android/server/WindowManagerService$WindowState;
    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    if-eqz v4, :cond_1

    .line 3768
    iput-boolean v6, v3, Lcom/android/server/WindowManagerService$WindowState;->mAppFreezing:Z

    .line 3769
    iget-object v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    if-nez v4, :cond_0

    .line 3770
    iput-boolean v5, v3, Lcom/android/server/WindowManagerService$WindowState;->mOrientationChanging:Z

    .line 3772
    :cond_0
    const/4 v2, 0x1

    .line 3765
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3775
    .end local v3           #w:Lcom/android/server/WindowManagerService$WindowState;
    :cond_2
    if-nez p3, :cond_3

    if-eqz v2, :cond_4

    .line 3777
    :cond_3
    iput-boolean v6, p1, Lcom/android/server/WindowManagerService$AppWindowToken;->freezingScreen:Z

    .line 3778
    iget v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/WindowManagerService;->mAppsFreezingScreen:I

    .line 3780
    :cond_4
    if-eqz p2, :cond_6

    .line 3781
    if-eqz v2, :cond_5

    .line 3782
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3783
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V

    .line 3785
    :cond_5
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 3788
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #unfrozeWindows:Z
    :cond_6
    return-void
.end method

.method public updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .locals 7
    .parameter "currentConfig"
    .parameter "freezeThisOneIfNeeded"

    .prologue
    .line 3159
    const-string v5, "android.permission.MANAGE_APP_TOKENS"

    const-string v6, "updateOrientationFromAppTokens()"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3161
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Requires MANAGE_APP_TOKENS permission"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3164
    :cond_0
    const/4 v0, 0x0

    .line 3165
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3167
    .local v2, ident:J
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3168
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokensLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3169
    if-eqz p2, :cond_1

    .line 3170
    invoke-virtual {p0, p2}, Lcom/android/server/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/WindowManagerService$AppWindowToken;

    move-result-object v4

    .line 3172
    .local v4, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    if-eqz v4, :cond_1

    .line 3173
    const/16 v6, 0x80

    invoke-virtual {p0, v4, v6}, Lcom/android/server/WindowManagerService;->startAppFreezingScreenLocked(Lcom/android/server/WindowManagerService$AppWindowToken;I)V

    .line 3177
    .end local v4           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3192
    :cond_2
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3194
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3195
    return-object v0

    .line 3179
    :cond_3
    if-eqz p1, :cond_2

    .line 3182
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 3183
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v6}, Lcom/android/server/WindowManagerService;->computeNewConfigurationLocked(Landroid/content/res/Configuration;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3184
    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 3185
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mWaitingForConfig:Z

    .line 3186
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 3187
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->startFreezingDisplayLocked()V

    .line 3188
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/server/WindowManagerService;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .end local v0           #config:Landroid/content/res/Configuration;
    .local v1, config:Landroid/content/res/Configuration;
    move-object v0, v1

    .end local v1           #config:Landroid/content/res/Configuration;
    .restart local v0       #config:Landroid/content/res/Configuration;
    goto :goto_0

    .line 3192
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method updateOrientationFromAppTokensLocked()Z
    .locals 6

    .prologue
    .line 3213
    iget-boolean v4, p0, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v4, :cond_0

    .line 3219
    const/4 v4, 0x0

    .line 3240
    :goto_0
    return v4

    .line 3222
    :cond_0
    const/4 v0, 0x0

    .line 3223
    .local v0, changed:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3225
    .local v1, ident:J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService;->computeForcedAppOrientationLocked()I

    move-result v3

    .line 3227
    .local v3, req:I
    iget v4, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    if-eq v3, v4, :cond_1

    .line 3228
    iput v3, p0, Lcom/android/server/WindowManagerService;->mForcedAppOrientation:I

    .line 3231
    iget-object v4, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v3}, Landroid/view/WindowManagerPolicy;->setCurrentOrientationLw(I)V

    .line 3232
    const/16 v4, -0x3e8

    iget v5, p0, Lcom/android/server/WindowManagerService;->mLastRotationFlags:I

    or-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/WindowManagerService;->setRotationUncheckedLocked(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 3234
    const/4 v0, 0x1

    .line 3240
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v0

    goto :goto_0

    .end local v3           #req:I
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z
    .locals 20
    .parameter "wallpaperWin"
    .parameter "dw"
    .parameter "dh"
    .parameter "sync"

    .prologue
    .line 1654
    const/4 v11, 0x0

    .line 1655
    .local v11, changed:Z
    const/4 v13, 0x0

    .line 1656
    .local v13, rawChanged:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    move v3, v0

    move/from16 v16, v3

    .line 1657
    .local v16, wpx:F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperXStep:F

    move v3, v0

    move/from16 v17, v3

    .line 1658
    .local v17, wpxs:F
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    sub-int v10, v3, p2

    .line 1659
    .local v10, availw:I
    if-lez v10, :cond_b

    int-to-float v3, v10

    mul-float v3, v3, v16

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1660
    .local v12, offset:I
    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    move v3, v0

    if-eq v3, v12, :cond_c

    const/4 v3, 0x1

    move v11, v3

    .line 1661
    :goto_3
    if-eqz v11, :cond_0

    .line 1664
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mXOffset:I

    .line 1666
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move v3, v0

    cmpl-float v3, v3, v16

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move v3, v0

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_2

    .line 1667
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    .line 1668
    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    .line 1669
    const/4 v13, 0x1

    .line 1672
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    move v3, v0

    move/from16 v18, v3

    .line 1673
    .local v18, wpy:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperYStep:F

    move v3, v0

    move/from16 v19, v3

    .line 1674
    .local v19, wpys:F
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v3, v0

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object v4, v0

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int v9, v3, p3

    .line 1675
    .local v9, availh:I
    if-lez v9, :cond_f

    int-to-float v3, v9

    mul-float v3, v3, v18

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    move v12, v3

    .line 1676
    :goto_6
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    move v3, v0

    if-eq v3, v12, :cond_3

    .line 1679
    const/4 v11, 0x1

    .line 1680
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mYOffset:I

    .line 1682
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move v3, v0

    cmpl-float v3, v3, v18

    if-nez v3, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move v3, v0

    cmpl-float v3, v3, v19

    if-eqz v3, :cond_5

    .line 1683
    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    .line 1684
    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    .line 1685
    const/4 v13, 0x1

    .line 1688
    :cond_5
    if-eqz v13, :cond_8

    .line 1693
    if-eqz p4, :cond_6

    .line 1694
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 1696
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    move-object v3, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperXStep:F

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperYStep:F

    move v7, v0

    move/from16 v8, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 1699
    if-eqz p4, :cond_8

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1702
    .local v14, start:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    move-wide v3, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    cmp-long v3, v3, v14

    if-gez v3, :cond_7

    .line 1707
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object v3, v0

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1711
    :goto_7
    const-wide/16 v3, 0x96

    add-long/2addr v3, v14

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 1713
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WindowManagerService;->mLastWallpaperTimeoutTime:J

    .line 1718
    :cond_7
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1725
    .end local v14           #start:J
    :cond_8
    :goto_8
    return v11

    .line 1656
    .end local v9           #availh:I
    .end local v10           #availw:I
    .end local v12           #offset:I
    .end local v16           #wpx:F
    .end local v17           #wpxs:F
    .end local v18           #wpy:F
    .end local v19           #wpys:F
    :cond_9
    const/high16 v3, 0x3f00

    move/from16 v16, v3

    goto/16 :goto_0

    .line 1657
    .restart local v16       #wpx:F
    :cond_a
    const/high16 v3, -0x4080

    move/from16 v17, v3

    goto/16 :goto_1

    .line 1659
    .restart local v10       #availw:I
    .restart local v17       #wpxs:F
    :cond_b
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_2

    .line 1660
    .restart local v12       #offset:I
    :cond_c
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_3

    .line 1672
    :cond_d
    const/high16 v3, 0x3f00

    move/from16 v18, v3

    goto/16 :goto_4

    .line 1673
    .restart local v18       #wpy:F
    :cond_e
    const/high16 v3, -0x4080

    move/from16 v19, v3

    goto/16 :goto_5

    .line 1675
    .restart local v9       #availh:I
    .restart local v19       #wpys:F
    :cond_f
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_6

    .line 1721
    :catch_0
    move-exception v3

    goto :goto_8

    .line 1708
    .restart local v14       #start:J
    :catch_1
    move-exception v3

    goto :goto_7
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;Z)Z
    .locals 10
    .parameter "changingTarget"
    .parameter "sync"

    .prologue
    const/4 v9, 0x0

    .line 1739
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 1740
    .local v4, dw:I
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 1742
    .local v3, dh:I
    const/4 v0, 0x0

    .line 1744
    .local v0, changed:Z
    iget-object v5, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 1745
    .local v5, target:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_1

    .line 1746
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_4

    .line 1747
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    .line 1751
    :cond_0
    :goto_0
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    .line 1752
    iget v8, v5, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    .line 1758
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1759
    .local v1, curTokenIndex:I
    :cond_2
    if-lez v1, :cond_6

    .line 1760
    add-int/lit8 v1, v1, -0x1

    .line 1761
    iget-object v8, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1762
    .local v6, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1763
    .local v2, curWallpaperIndex:I
    :cond_3
    :goto_2
    if-lez v2, :cond_2

    .line 1764
    add-int/lit8 v2, v2, -0x1

    .line 1765
    iget-object v8, v6, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 1766
    .local v7, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    invoke-virtual {p0, v7, v4, v3, p2}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1767
    invoke-virtual {v7}, Lcom/android/server/WindowManagerService$WindowState;->computeShownFrameLocked()V

    .line 1768
    const/4 v0, 0x1

    .line 1770
    const/4 p2, 0x0

    goto :goto_2

    .line 1748
    .end local v1           #curTokenIndex:I
    .end local v2           #curWallpaperIndex:I
    .end local v6           #token:Lcom/android/server/WindowManagerService$WindowToken;
    .end local v7           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 1749
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperX:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperX:F

    goto :goto_0

    .line 1753
    :cond_5
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 1754
    iget v8, p1, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperY:F

    iput v8, p0, Lcom/android/server/WindowManagerService;->mLastWallpaperY:F

    goto :goto_1

    .line 1775
    .restart local v1       #curTokenIndex:I
    :cond_6
    return v0
.end method

.method updateWallpaperVisibilityLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1779
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTarget:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p0, v7}, Lcom/android/server/WindowManagerService;->isWallpaperVisible(Lcom/android/server/WindowManagerService$WindowState;)Z

    move-result v5

    .line 1780
    .local v5, visible:Z
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1781
    .local v3, dw:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1783
    .local v2, dh:I
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1784
    .local v0, curTokenIndex:I
    :cond_0
    if-lez v0, :cond_5

    .line 1785
    add-int/lit8 v0, v0, -0x1

    .line 1786
    iget-object v7, p0, Lcom/android/server/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WindowManagerService$WindowToken;

    .line 1787
    .local v4, token:Lcom/android/server/WindowManagerService$WindowToken;
    iget-boolean v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    if-ne v7, v5, :cond_1

    .line 1788
    if-nez v5, :cond_4

    move v7, v9

    :goto_0
    iput-boolean v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->hidden:Z

    .line 1791
    iput-boolean v9, p0, Lcom/android/server/WindowManagerService;->mLayoutNeeded:Z

    .line 1794
    :cond_1
    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1795
    .local v1, curWallpaperIndex:I
    :cond_2
    :goto_1
    if-lez v1, :cond_0

    .line 1796
    add-int/lit8 v1, v1, -0x1

    .line 1797
    iget-object v7, v4, Lcom/android/server/WindowManagerService$WindowToken;->windows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/WindowManagerService$WindowState;

    .line 1798
    .local v6, wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    if-eqz v5, :cond_3

    .line 1799
    invoke-virtual {p0, v6, v3, v2, v8}, Lcom/android/server/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/WindowManagerService$WindowState;IIZ)Z

    .line 1802
    :cond_3
    iget-boolean v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    if-eq v7, v5, :cond_2

    .line 1803
    iput-boolean v5, v6, Lcom/android/server/WindowManagerService$WindowState;->mWallpaperVisible:Z

    .line 1808
    :try_start_0
    iget-object v7, v6, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v7, v5}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1809
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v1           #curWallpaperIndex:I
    .end local v6           #wallpaper:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    move v7, v8

    .line 1788
    goto :goto_0

    .line 1814
    .end local v4           #token:Lcom/android/server/WindowManagerService$WindowToken;
    :cond_5
    return-void
.end method

.method public validateAppTokens(Ljava/util/List;)V
    .locals 7
    .parameter "tokens"

    .prologue
    const/4 v4, 0x1

    const-string v6, "WindowManager"

    const-string v5, " @ "

    .line 2899
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v1, v3, v4

    .line 2900
    .local v1, v:I
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, v3, v4

    .line 2901
    .local v0, m:I
    :goto_0
    if-ltz v1, :cond_2

    if-ltz v0, :cond_2

    .line 2902
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2903
    .local v2, wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-eqz v3, :cond_0

    .line 2904
    add-int/lit8 v0, v0, -0x1

    .line 2905
    goto :goto_0

    .line 2907
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    if-eq v3, v4, :cond_1

    .line 2908
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tokens out of sync: external is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", internal is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2911
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 2912
    add-int/lit8 v0, v0, -0x1

    .line 2913
    goto :goto_0

    .line 2914
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_2
    :goto_1
    if-ltz v1, :cond_3

    .line 2915
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External token not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2918
    :cond_3
    :goto_2
    if-ltz v0, :cond_5

    .line 2919
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WindowManagerService$AppWindowToken;

    .line 2920
    .restart local v2       #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    iget-boolean v3, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->removed:Z

    if-nez v3, :cond_4

    .line 2921
    const-string v3, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid internal token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 2924
    goto :goto_2

    .line 2925
    .end local v2           #wtoken:Lcom/android/server/WindowManagerService$AppWindowToken;
    :cond_5
    return-void
.end method

.method viewServerListWindows(Ljava/net/Socket;)Z
    .locals 11
    .parameter "client"

    .prologue
    .line 4788
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4789
    const/4 v9, 0x0

    .line 4831
    :goto_0
    return v9

    .line 4792
    :cond_0
    const/4 v6, 0x1

    .line 4795
    .local v6, result:Z
    iget-object v9, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 4796
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/Object;

    .line 4798
    .local v8, windows:[Ljava/lang/Object;
    iget-object v10, p0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 4799
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4801
    const/4 v4, 0x0

    .line 4805
    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 4806
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    invoke-direct {v9, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v5, v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4808
    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_2
    array-length v1, v8

    .line 4809
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 4810
    aget-object v7, v8, v3

    check-cast v7, Lcom/android/server/WindowManagerService$WindowState;

    .line 4811
    .local v7, w:Lcom/android/server/WindowManagerService$WindowState;
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4812
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V

    .line 4813
    iget-object v9, v7, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 4814
    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 4809
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4799
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .end local v7           #w:Lcom/android/server/WindowManagerService$WindowState;
    .end local v8           #windows:[Ljava/lang/Object;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 4817
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v8       #windows:[Ljava/lang/Object;
    :cond_1
    :try_start_4
    const-string v9, "DONE.\n"

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 4818
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 4822
    if-eqz v5, :cond_4

    .line 4824
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v4, v5

    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_2
    :goto_2
    move v9, v6

    .line 4831
    goto :goto_0

    .line 4825
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 4826
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    move-object v4, v5

    .line 4827
    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_2

    .line 4819
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #count:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #i:I
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 4820
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    const/4 v6, 0x0

    .line 4822
    if-eqz v4, :cond_2

    .line 4824
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 4825
    :catch_2
    move-exception v2

    .line 4826
    .local v2, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 4827
    goto :goto_2

    .line 4822
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :goto_4
    if-eqz v4, :cond_3

    .line 4824
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 4827
    :cond_3
    :goto_5
    throw v9

    .line 4825
    :catch_3
    move-exception v2

    .line 4826
    .restart local v2       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_5

    .line 4822
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 4819
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v9

    move-object v2, v9

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_3

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v1       #count:I
    .restart local v3       #i:I
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :cond_4
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method viewServerWindowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "client"
    .parameter "command"
    .parameter "parameters"

    .prologue
    const/4 v11, 0x0

    .line 4855
    invoke-direct {p0}, Lcom/android/server/WindowManagerService;->isSystemSecure()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v11

    .line 4912
    :goto_0
    return v9

    .line 4859
    :cond_0
    const/4 v7, 0x1

    .line 4860
    .local v7, success:Z
    const/4 v2, 0x0

    .line 4861
    .local v2, data:Landroid/os/Parcel;
    const/4 v6, 0x0

    .line 4866
    .local v6, reply:Landroid/os/Parcel;
    const/16 v9, 0x20

    :try_start_0
    invoke-virtual {p3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 4867
    .local v5, index:I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_1

    .line 4868
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 4870
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {p3, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4871
    .local v1, code:Ljava/lang/String;
    const/16 v9, 0x10

    invoke-static {v1, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    long-to-int v4, v9

    .line 4874
    .local v4, hashCode:I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 4875
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 4880
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/server/WindowManagerService;->findWindow(I)Lcom/android/server/WindowManagerService$WindowState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4881
    .local v8, window:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v8, :cond_5

    .line 4904
    if-eqz v2, :cond_2

    .line 4905
    throw v2

    .line 4907
    :cond_2
    if-eqz v6, :cond_3

    .line 4908
    throw v6

    :cond_3
    move v9, v11

    goto :goto_0

    .line 4877
    .end local v8           #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_4
    :try_start_1
    const-string p3, ""

    goto :goto_1

    .line 4885
    .restart local v8       #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4886
    const-string v9, "android.view.IWindow"

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4887
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4888
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4889
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 4890
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v2, v10}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 4894
    iget-object v9, v8, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v9}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4896
    .local v0, binder:Landroid/os/IBinder;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v0, v9, v2, v6, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4898
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4904
    if-eqz v2, :cond_6

    .line 4905
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4907
    :cond_6
    if-eqz v6, :cond_7

    .line 4908
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #code:Ljava/lang/String;
    .end local v4           #hashCode:I
    .end local v5           #index:I
    .end local v8           #window:Lcom/android/server/WindowManagerService$WindowState;
    :cond_7
    :goto_2
    move v9, v7

    .line 4912
    goto :goto_0

    .line 4900
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 4901
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not send command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " with parameters "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4902
    const/4 v7, 0x0

    .line 4904
    if-eqz v2, :cond_8

    .line 4905
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4907
    :cond_8
    if-eqz v6, :cond_7

    .line 4908
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 4904
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_9

    .line 4905
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4907
    :cond_9
    if-eqz v6, :cond_a

    .line 4908
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    :cond_a
    throw v9
.end method

.method public virtualKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 11736
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->keyFeedbackFromInput(Landroid/view/KeyEvent;)V

    .line 11737
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .parameter "window"
    .parameter "result"

    .prologue
    .line 2333
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2334
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2336
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 2337
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2339
    :cond_0
    monitor-exit v0

    .line 2340
    return-void

    .line 2339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1730
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1732
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService;->mWaitingOnWallpaper:Lcom/android/server/WindowManagerService$WindowState;

    .line 1733
    iget-object v1, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1735
    :cond_0
    monitor-exit v0

    .line 1736
    return-void

    .line 1735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public watchRotation(Landroid/view/IRotationWatcher;)I
    .locals 5
    .parameter "watcher"

    .prologue
    .line 4659
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4660
    .local v1, watcherBinder:Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/WindowManagerService$4;

    invoke-direct {v0, p0, v1}, Lcom/android/server/WindowManagerService$4;-><init>(Lcom/android/server/WindowManagerService;Landroid/os/IBinder;)V

    .line 4676
    .local v0, dr:Landroid/os/IBinder$DeathRecipient;
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4678
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4679
    iget-object v3, p0, Lcom/android/server/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4684
    :goto_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WindowManagerService;->mRotation:I

    monitor-exit v2

    return v3

    .line 4685
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 4680
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;
    .locals 8
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    const/4 v4, 0x0

    const-string v7, "WindowManager"

    const-string v6, "Requested window "

    const-string v5, "Failed looking up window"

    .line 9604
    iget-object v2, p0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WindowManagerService$WindowState;

    .line 9607
    .local v1, win:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v1, :cond_1

    .line 9608
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9610
    .local v0, ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_0

    .line 9611
    throw v0

    .line 9613
    :cond_0
    const-string v2, "WindowManager"

    const-string v2, "Failed looking up window"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 9627
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :goto_0
    return-object v2

    .line 9616
    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    if-eq v2, p1, :cond_3

    .line 9617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested window "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 9620
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    if-eqz p3, :cond_2

    .line 9621
    throw v0

    .line 9623
    :cond_2
    const-string v2, "WindowManager"

    const-string v2, "Failed looking up window"

    invoke-static {v7, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 9624
    goto :goto_0

    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_3
    move-object v2, v1

    .line 9627
    goto :goto_0
.end method

.method final windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Z)Lcom/android/server/WindowManagerService$WindowState;
    .locals 1
    .parameter "session"
    .parameter "client"
    .parameter "throwOnError"

    .prologue
    .line 9599
    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/os/IBinder;Z)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v0

    return-object v0
.end method
