.class public Lcom/sec/android/app/camera/CameraEngine;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;,
        Lcom/sec/android/app/camera/CameraEngine$LocationListener;,
        Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;,
        Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;,
        Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;,
        Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;,
        Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;,
        Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;,
        Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;,
        Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;,
        Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;,
        Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;,
        Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;,
        Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;,
        Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
    }
.end annotation


# static fields
.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static m_bForFocusSetOrg:Z

.field private static m_bIsFocusSetAuto:Z

.field private static m_bIsObjectTracking:Z

.field private static m_bIsTouchAutoFocusing:Z

.field private static m_bIsTouchFocusPositioned:Z


# instance fields
.field protected final DEFAULT_IMEI:Ljava/lang/String;

.field protected final GPS_PROCESSING_METHOD_CELLID:Ljava/lang/String;

.field protected final GPS_PROCESSING_METHOD_GPS:Ljava/lang/String;

.field protected final GPS_PROCESSING_METHOD_MANUAL:Ljava/lang/String;

.field protected final GPS_PROCESSING_METHOD_WLAN:Ljava/lang/String;

.field protected final IMEI:Ljava/lang/String;

.field private bCaptureAfterCancelAF:Z

.field private bSkipAutofocus:Z

.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field protected mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCaptureInitiated:Z

.field private mContinuousShotInProgress:Z

.field private mContinuousShotShutterPressProcessed:Z

.field private mContinuousShotStopCommandCalled:Z

.field protected mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

.field private mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

.field protected mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

.field private mEsn:Ljava/lang/String;

.field private mFocusState:I

.field private mGpsProcessingMethod:Ljava/lang/String;

.field protected mInformedAboutFirmwareVersion:Z

.field private mIsSavingPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

.field private mLandscapeActive:Z

.field private mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

.field private mLastCapturedFileName:Ljava/lang/String;

.field private mLastCapturedTitle:Ljava/lang/String;

.field protected mLastContentUri:Landroid/net/Uri;

.field private mLastOrientation:I

.field mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

.field protected mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

.field protected mOpenCameraThread:Ljava/lang/Thread;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationOnTake:I

.field protected mOriginalViewFinderHeight:I

.field protected mOriginalViewFinderWidth:I

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPictureSavingLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPictureSavingThread:Ljava/lang/Thread;

.field private mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

.field protected mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

.field private mSearchingLastContentUriThread:Ljava/lang/Thread;

.field private mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

.field private mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

.field protected mStartPreviewThread:Ljava/lang/Thread;

.field protected mStateDepot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/AbstractCeState;",
            ">;"
        }
    .end annotation
.end field

.field protected mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

.field private mStoreImageOrientation:I

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

.field protected mThumbNailUpdatingHandler:Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;

.field protected mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

.field protected mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    .line 174
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 175
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    .line 177
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    .line 178
    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bForFocusSetOrg:Z

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 10
    .parameter "activityContext"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 96
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 101
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 102
    new-instance v0, Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CeRequestQueue;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    .line 104
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mInformedAboutFirmwareVersion:Z

    .line 111
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 113
    const-string v0, "ril.IMEI"

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->IMEI:Ljava/lang/String;

    .line 114
    const-string v0, "357858010034783"

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->DEFAULT_IMEI:Ljava/lang/String;

    .line 120
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 121
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mEsn:Ljava/lang/String;

    .line 125
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->bCaptureAfterCancelAF:Z

    .line 126
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->bSkipAutofocus:Z

    .line 127
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotInProgress:Z

    .line 128
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotStopCommandCalled:Z

    .line 129
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotShutterPressProcessed:Z

    .line 130
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsSavingPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 133
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    .line 134
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 135
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 180
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 183
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    .line 184
    iput-boolean v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    .line 190
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    .line 200
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

    .line 206
    iput v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mStoreImageOrientation:I

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateIdle;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v6}, Lcom/sec/android/app/camera/CeStateIdle;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateInitializing;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v7}, Lcom/sec/android/app/camera/CeStateInitializing;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateInitialized;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v8}, Lcom/sec/android/app/camera/CeStateInitialized;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateStartingPreview;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateStartingPreview;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStatePreviewing;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStatePreviewing;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateShutdown;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v4, 0x7

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateShutdown;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    .line 242
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    .line 273
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    .line 296
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 298
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    .line 316
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mThumbNailUpdatingHandler:Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;

    .line 319
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    .line 320
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    .line 321
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    .line 322
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    .line 323
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    .line 325
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    .line 329
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 330
    iput v9, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    .line 331
    iput v9, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    .line 332
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mGpsProcessingMethod:Ljava/lang/String;

    .line 336
    const-string v0, "WLAN"

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->GPS_PROCESSING_METHOD_WLAN:Ljava/lang/String;

    .line 337
    const-string v0, "CELLID"

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->GPS_PROCESSING_METHOD_CELLID:Ljava/lang/String;

    .line 338
    const-string v0, "GPS"

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->GPS_PROCESSING_METHOD_GPS:Ljava/lang/String;

    .line 339
    const-string v0, "MANUAL"

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->GPS_PROCESSING_METHOD_MANUAL:Ljava/lang/String;

    .line 341
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 342
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 343
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    .line 1808
    new-array v0, v8, [Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;-><init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;-><init>(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)V

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    .line 364
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 365
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 368
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    .line 370
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    sget-object v1, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$502(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/CameraEngine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/CameraEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/CameraEngine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/CameraEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->bCaptureAfterCancelAF:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/CameraEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->bCaptureAfterCancelAF:Z

    return p1
.end method

.method static synthetic access$1300()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/CameraEngine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/CameraEngine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorCallback:Lcom/sec/android/app/camera/CameraEngine$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/seccamera/SecCamera$Parameters;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/CameraEngine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsSavingPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CaptureData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CaptureData;)Lcom/sec/android/app/camera/CaptureData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/CameraEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/sec/android/app/camera/CameraEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->bSkipAutofocus:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    return v0
.end method

.method private getCurrentStateId()I
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    return v0
.end method

.method private initializeLocationManager()V
    .locals 2

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    .line 1706
    :cond_0
    return-void
.end method

.method private initializeWifiManager()V
    .locals 2

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1713
    :cond_0
    return-void
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 2098
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$6;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/CameraEngine$6;-><init>(Lcom/sec/android/app/camera/CameraEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 2114
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1753
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1755
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1753
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1756
    :catch_0
    move-exception v1

    .line 1757
    const-string v2, "CameraEngine"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1761
    :cond_0
    return-void
.end method


# virtual methods
.method public appendStopMotionFrame([BZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1534
    const-string v0, "CameraEngine"

    const-string v1, "setStopMotionAppendFrame"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->appendStopMotionFrame([BZ)V

    .line 1536
    return-void
.end method

.method public cancelAddMe()V
    .locals 1

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelCaptureAddMeShot()V

    .line 1558
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startCaptureAddMeShot()V

    .line 1560
    :cond_0
    return-void
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 857
    const-string v0, "CameraEngine"

    const-string v1, "cancelAutoFocus - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$2;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public cancelCaptureForPanorama()V
    .locals 2

    .prologue
    .line 1527
    const-string v0, "CameraEngine"

    const-string v1, "cancelCaptureForPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1529
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->cancelCaptureForPanorama()V

    .line 1530
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1531
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->cancelSeriesActionShot()V

    .line 2086
    return-void
.end method

.method public changeEngineState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 479
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCeState;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    .line 485
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeEngineState => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearCaptureImageData()V
    .locals 1

    .prologue
    .line 1999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 2000
    return-void
.end method

.method protected clearErrorMessageHandler()V
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    if-eqz v1, :cond_1

    .line 267
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->removeMessages(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    .line 272
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public clearFocusState()V
    .locals 1

    .prologue
    .line 1966
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 1967
    return-void
.end method

.method public clearLastContentUri()V
    .locals 1

    .prologue
    .line 1991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1992
    return-void
.end method

.method public clearRequest()V
    .locals 3

    .prologue
    .line 1212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1213
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->removeMessages(I)V

    .line 1212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1217
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1219
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1220
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1221
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1223
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1224
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1225
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1226
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1228
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CeRequestQueue;->clear()V

    .line 1229
    return-void
.end method

.method protected clearSearchingHandler()V
    .locals 2

    .prologue
    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v1, :cond_1

    .line 290
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 295
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public clearTimer()V
    .locals 3

    .prologue
    .line 1571
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 1572
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->removeMessages(I)V

    .line 1571
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1575
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 1577
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1578
    return-void
.end method

.method public disableStatusBar()V
    .locals 2

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 2806
    if-eqz p0, :cond_0

    .line 2807
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 2809
    :cond_0
    return-void
.end method

.method public final doAutoFocusAsync()V
    .locals 5

    .prologue
    const-string v4, "CameraEngine"

    .line 840
    const-string v0, "CameraEngine"

    const-string v0, "doAutoFocusAsync"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Shot2Shot] - Autofocus Started::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->bSkipAutofocus:Z

    if-eqz v0, :cond_1

    .line 844
    const-string v0, "CameraEngine"

    const-string v0, "doAutoFocusAsync - this command is skiped because capture is started"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->bSkipAutofocus:Z

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    .line 851
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mAutoFocusCallback:Lcom/sec/android/app/camera/CameraEngine$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public final doCancelShutterTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 889
    const-string v0, "CameraEngine"

    const-string v1, "doCancelShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 893
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->removeMessages(I)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 895
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 899
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetContinuousShot()V

    .line 910
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 911
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 913
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 914
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 915
    return-void
.end method

.method protected doCaptureAfterAF()V
    .locals 0

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    .line 712
    return-void
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "preview-frame-rate"

    const-string v1, "CameraEngine"

    .line 1435
    const-string v0, "CameraEngine"

    const-string v0, "doChangeParameterSync"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_1

    .line 1438
    const-string v0, "CameraEngine"

    const-string v0, "returning because mCameraDevice is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_0
    :goto_0
    return-void

    .line 1442
    :cond_1
    check-cast p1, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    .line 1443
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1506
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1508
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 1511
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    goto :goto_0

    .line 1447
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1448
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVintageString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getVintageModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 1452
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1458
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 1459
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "preview-frame-rate"

    const-string v1, "10"

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1453
    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 1454
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVintageString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getVintageModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1461
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "preview-frame-rate"

    const-string v1, "30"

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1465
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1468
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVintageString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getVintageModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1471
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1474
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1477
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1480
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1483
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1486
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1489
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1492
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getQualityString(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1502
    :pswitch_c
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_c
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final doHideReviewScreenSync()V
    .locals 0

    .prologue
    .line 1085
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideReviewMenu()V

    .line 1086
    return-void
.end method

.method public final doPostInitSync()V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V

    .line 1182
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnBlinkDetectionEventListener(Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;)V

    .line 1183
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnContinuousShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;)V

    .line 1184
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V

    .line 1185
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnAddMeEventListener(Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;)V

    .line 1186
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnStopMotionEventListener(Lcom/sec/android/seccamera/SecCamera$OnStopMotionEventListener;)V

    .line 1187
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V

    .line 1188
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->setObjectTrackingMsgListener(Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;)V

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/sec/android/seccamera/SecCamera;->setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V

    .line 1191
    :cond_0
    return-void
.end method

.method public doProcessBackSync()V
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 1426
    return-void
.end method

.method public doSetAllParamsSync()V
    .locals 2

    .prologue
    .line 924
    const-string v0, "CameraEngine"

    const-string v1, "doSetAllParamsSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->initialize()V

    .line 926
    return-void
.end method

.method public final doShowReviewScreenSync()V
    .locals 0

    .prologue
    .line 1077
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showReviewMenu()V

    .line 1078
    return-void
.end method

.method public final doShutterTimerAsync(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 878
    const-string v1, "CameraEngine"

    const-string v2, "doShutterTimerAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    move v0, p1

    .line 881
    .local v0, i:I
    move v0, p1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mTimerEventHandler:Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;

    sub-int v2, p1, v0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$TimerEventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 881
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 885
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x4

    add-int/lit8 v3, p1, 0x1

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 886
    return-void
.end method

.method public final doStartActionShotSync()V
    .locals 2

    .prologue
    .line 1005
    const-string v0, "CameraEngine"

    const-string v1, "doStartActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationForExif()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    .line 1007
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startSeriesActionShot()V

    .line 1009
    :cond_0
    return-void
.end method

.method public final doStartContinuousSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 935
    const-string v0, "CameraEngine"

    const-string v1, "doStartContinuous"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->bSkipAutofocus:Z

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 941
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationForExif()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    .line 942
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->startContinuousShot(Z)V

    .line 944
    :cond_1
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1095
    const-string v0, "CameraEngine"

    const-string v1, "doStartEngineAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 1104
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$4;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 1137
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v1, "openCameraThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1143
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1144
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1145
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1147
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->setOrientationListener()V

    .line 1156
    return-void

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setGps(I)V

    goto :goto_0
.end method

.method public final doStartPanoramaAsync()V
    .locals 2

    .prologue
    .line 972
    const-string v0, "CameraEngine"

    const-string v1, "doStartPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$3;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 982
    const-string v1, "PanoramaStartingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 984
    return-void
.end method

.method public doStartPreviewAsync()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    const-string v6, "CameraPerformance"

    const-string v3, "CameraEngine"

    .line 1286
    const-string v0, "CameraEngine"

    const-string v0, "doStartPreviewAsync"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    const-string v0, "CameraPerformance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[StartUp] - Operation end StartPreview Start::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    const-string v0, "CameraPerformance"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Switching] -Operation end StartPreview Start::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 1291
    const-string v0, "CameraEngine"

    const-string v0, "return because mSurfaceHolder is null."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1296
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1297
    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_2

    .line 1304
    const-string v0, "CameraEngine"

    const-string v0, "return because mCameraDevice is null."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1308
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->resetPreviewSize()V

    .line 1311
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 1325
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1329
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1334
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$5;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1353
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    const-string v1, "startPreviewThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1355
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1357
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_4

    .line 1358
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 1318
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1331
    :cond_3
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_1

    .line 1360
    :cond_4
    const-string v0, "CameraEngine"

    const-string v0, "doStartPreviewAsync : mOrientationListener is null"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStartSmileDetectionAsync()V
    .locals 2

    .prologue
    .line 1398
    const-string v0, "CameraEngine"

    const-string v1, "startSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 1401
    :cond_0
    return-void
.end method

.method public doStopActionShotSync()V
    .locals 2

    .prologue
    .line 1018
    const-string v0, "CameraEngine"

    const-string v1, "doStopActionShotSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopSeriesActionShot()V

    .line 1021
    :cond_0
    return-void
.end method

.method public doStopContinuousSync()V
    .locals 2

    .prologue
    .line 953
    const-string v0, "CameraEngine"

    const-string v1, "doStopContinuous"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startContinuousShot(Z)V

    .line 957
    :cond_0
    return-void
.end method

.method public doStopEngineSync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1238
    const-string v0, "CameraEngine"

    const-string v1, "doStopEngineSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 1242
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_1

    .line 1248
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1252
    :cond_1
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    if-eqz v0, :cond_2

    .line 1253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopObjectTracking()V

    .line 1254
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    if-eqz v0, :cond_3

    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 1256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1258
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->stopReceivingLocationUpdates()V

    .line 1260
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_4

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 1264
    iput-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1267
    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1268
    return-void
.end method

.method public doStopPanoramaSync()V
    .locals 2

    .prologue
    .line 993
    const-string v0, "CameraEngine"

    const-string v1, "doStopPanoramaSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startPanorama(Z)V

    .line 996
    :cond_0
    return-void
.end method

.method public doStopPreviewSync()V
    .locals 5

    .prologue
    const-string v4, "CameraEngine"

    .line 1374
    const-string v0, "CameraEngine"

    const-string v0, "doStopPreviewSync"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Switching] - StopPreview start::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1381
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1383
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1387
    :goto_0
    return-void

    .line 1386
    :cond_1
    const-string v0, "CameraEngine"

    const-string v0, "doStopPreviewSync : mOrientationListener is null"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doStopSmileDetectionSync()V
    .locals 2

    .prologue
    .line 1413
    const-string v0, "CameraEngine"

    const-string v1, "stopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->startSmileDetection(Z)V

    .line 1416
    :cond_0
    return-void
.end method

.method public final doSwitchCameraSync(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1207
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Switching] - doSwitchCameraSync::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setMainCameraSelected(Z)V

    .line 1209
    return-void
.end method

.method public final doTakePictureAsync()V
    .locals 4

    .prologue
    .line 1033
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Shot2Shot] - TakePicture start::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 1060
    :goto_0
    return-void

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationForExif()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    .line 1040
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setRotation(I)V

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    goto :goto_0
.end method

.method public doTerminateContinuous()V
    .locals 2

    .prologue
    .line 960
    const-string v0, "CameraEngine"

    const-string v1, "doTerminateContinuous"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->terminateContinuousShot()V

    .line 963
    :cond_0
    return-void
.end method

.method public final doWaitAsync(I)V
    .locals 4
    .parameter "milisec"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1070
    return-void
.end method

.method public enableStatusBar()V
    .locals 2

    .prologue
    .line 2797
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 2798
    if-eqz p0, :cond_0

    .line 2799
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 2801
    :cond_0
    return-void
.end method

.method public forSetOrgFocus()V
    .locals 1

    .prologue
    .line 2073
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bForFocusSetOrg:Z

    .line 2074
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1770
    const/4 v1, 0x0

    .line 1771
    .local v1, l:Landroid/location/Location;
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    array-length v2, v4

    .line 1772
    .local v2, length:I
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationListeners:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;

    .line 1774
    .local v3, localArray:[Lcom/sec/android/app/camera/CameraEngine$LocationListener;
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->initializeWifiManager()V

    .line 1776
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1777
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 1778
    if-eqz v1, :cond_1

    .line 1779
    packed-switch v0, :pswitch_data_0

    .line 1790
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mGpsProcessingMethod:Ljava/lang/String;

    :goto_1
    move-object v4, v1

    .line 1797
    :goto_2
    return-object v4

    .line 1781
    :pswitch_0
    const-string v4, "GPS"

    iput-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mGpsProcessingMethod:Ljava/lang/String;

    goto :goto_1

    .line 1784
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1785
    const-string v4, "WLAN"

    iput-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mGpsProcessingMethod:Ljava/lang/String;

    goto :goto_1

    .line 1787
    :cond_0
    const-string v4, "CELLID"

    iput-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mGpsProcessingMethod:Ljava/lang/String;

    goto :goto_1

    .line 1776
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1796
    :cond_2
    iput-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mGpsProcessingMethod:Ljava/lang/String;

    move-object v4, v5

    .line 1797
    goto :goto_2

    .line 1779
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;
    .locals 1

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 1974
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    return v0
.end method

.method protected getGpsLocation()Landroid/location/Location;
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 1657
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->removeGpsData()V

    .line 1660
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1663
    if-eqz v0, :cond_2

    .line 1664
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1665
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 1666
    cmpl-double v5, v1, v9

    if-nez v5, :cond_0

    cmpl-double v5, v3, v9

    if-eqz v5, :cond_3

    :cond_0
    const/4 v5, 0x1

    .line 1668
    :goto_0
    if-eqz v5, :cond_5

    .line 1669
    const-string v5, "CameraEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGpsLocation: Latitude["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Longitude["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Method["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraEngine;->mGpsProcessingMethod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v5, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLatitude(D)V

    .line 1672
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsLongitude(D)V

    .line 1673
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1674
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    .line 1681
    :goto_1
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 1684
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1685
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsTimestamp(J)V

    .line 1687
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mGpsProcessingMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1698
    :cond_2
    :goto_2
    return-object v0

    .line 1666
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 1679
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v9, v10}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 1689
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public getLandscapeActive()Z
    .locals 1

    .prologue
    .line 2093
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    return v0
.end method

.method public getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    return-object v0
.end method

.method public getLastCapturedFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getOrientationForExif()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2144
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 2145
    const/4 v0, 0x6

    .line 2153
    :goto_0
    return v0

    .line 2146
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 2147
    const/4 v0, 0x3

    goto :goto_0

    .line 2148
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 2149
    const/16 v0, 0x8

    goto :goto_0

    .line 2150
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    const/16 v1, 0x168

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastOrientation:I

    if-nez v0, :cond_4

    :cond_3
    move v0, v2

    .line 2151
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2153
    goto :goto_0
.end method

.method public getOrientationOnTake()I
    .locals 3

    .prologue
    .line 2117
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrientationOnTake - mOrientationOnTake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOrientationOnTake:I

    return v0
.end method

.method public getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    return-object v0
.end method

.method public getStoreImageOrientation()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStoreImageOrientation:I

    return v0
.end method

.method public getTouchFocusPositioned()Z
    .locals 1

    .prologue
    .line 2009
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    return v0
.end method

.method public handleShutterEvent()V
    .locals 2

    .prologue
    .line 1517
    const-string v0, "CameraEngine"

    const-string v1, "handleShuttreEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleShutterEvent()V

    .line 1519
    return-void
.end method

.method public handleShutterReleaseEvent()V
    .locals 2

    .prologue
    .line 1522
    const-string v0, "CameraEngine"

    const-string v1, "handleShutterReleaseEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleShutterReleaseEvent()V

    .line 1524
    return-void
.end method

.method public imageStoringCompleted(Ljava/lang/Object;)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 1567
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->onImageStoringCompleted(Ljava/lang/Object;)V

    .line 1568
    return-void
.end method

.method public initialize()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 382
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "AppShutterSound"

    invoke-virtual {v3, v4, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 384
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 385
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "camera-id"

    invoke-virtual {v3, v4, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 388
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 390
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x8

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x9

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x12

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 394
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 395
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x18

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 396
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x19

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 397
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x1a

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 398
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 399
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVintageString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getVintageModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 404
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 409
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0x10

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getQualityString(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 417
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 419
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xd

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 420
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v4, 0xe

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 423
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "video_recording_gamma"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "slow_ae"

    const-string v5, "off"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "60hz"

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 445
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "disable-aeawb-lock"

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 447
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v3, :cond_0

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 450
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->setShootingMode(I)V

    .line 454
    const-string v3, "gsm.default.esn"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, isDefaultEsn:Ljava/lang/String;
    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v7, :cond_5

    move v1, v7

    .line 460
    .local v1, defaultEsnState:Z
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v3, :cond_1

    .line 461
    if-eqz v1, :cond_6

    .line 462
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v7}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    .line 476
    :cond_1
    :goto_4
    return-void

    .line 401
    .end local v1           #defaultEsnState:Z
    .end local v2           #isDefaultEsn:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getVintageString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getVintageModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 406
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 437
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "camera-id"

    invoke-virtual {v3, v4, v9}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 438
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 441
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "video_recording_gamma"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v4, "slow_ae"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .restart local v2       #isDefaultEsn:Ljava/lang/String;
    :cond_5
    move v1, v6

    .line 455
    goto :goto_3

    .line 464
    .restart local v1       #defaultEsnState:Z
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v6}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    goto :goto_4
.end method

.method public isCaptureAfterCancelAF()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->bCaptureAfterCancelAF:Z

    return v0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    :cond_0
    const/4 v0, 0x1

    .line 790
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinuousShotInProgress()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotInProgress:Z

    return v0
.end method

.method public isContinuousShotShutterEventProcessing()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotShutterPressProcessed:Z

    return v0
.end method

.method public isContinuousShotStopRequested()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotStopCommandCalled:Z

    return v0
.end method

.method public isCurrentState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 820
    const/4 v0, 0x1

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2779
    .line 2780
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2781
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2783
    if-eqz v0, :cond_2

    .line 2784
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 2785
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2786
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2787
    const-string v2, "external"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "internal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v7

    .line 2790
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 2792
    :goto_1
    return v0

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 804
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x1

    .line 807
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled()Z
    .locals 2

    .prologue
    .line 1716
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraEngine;->initializeLocationManager()V

    .line 1722
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartingPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 794
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 800
    :goto_0
    return v0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 798
    goto :goto_0

    .line 800
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimerCounting()Z
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 813
    const/4 v0, 0x1

    .line 815
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAutoFocusing()Z
    .locals 1

    .prologue
    .line 2077
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    return v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1894
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged menuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " modeid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    packed-switch p1, :pswitch_data_0

    .line 1946
    :cond_0
    :goto_0
    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    .line 1957
    :goto_1
    return-void

    .line 1914
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 1917
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    goto :goto_0

    .line 1921
    :pswitch_3
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_0

    .line 1938
    :pswitch_4
    if-nez p2, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->releaseBlinkDetection()V

    goto :goto_0

    .line 1948
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    goto :goto_1

    .line 1951
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    goto :goto_1

    .line 1954
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    iput p2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    goto :goto_1

    .line 1896
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1946
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x9 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method protected release()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 1274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1276
    :cond_0
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 4

    .prologue
    const-string v3, "CameraEngine"

    .line 1581
    const-string v0, "CameraEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetPreviewSize()- WH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    if-eqz v0, :cond_3

    .line 1584
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1585
    const-string v0, "CameraEngine"

    const-string v0, "self shot - preview size 640 x 480, display orientation 270"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/16 v1, 0x10e

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setDisplayOrientation(I)V

    .line 1594
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_2

    .line 1595
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 1604
    :goto_1
    return-void

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    goto :goto_0

    .line 1597
    :cond_2
    const-string v0, "CameraEngine"

    const-string v0, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1601
    :cond_3
    const-string v0, "CameraEngine"

    const-string v0, "resetPreviewSize()- mParameters is null"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restartAddMeForError()V
    .locals 1

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->stopAddMe()V

    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startAddMe()V

    .line 1552
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onAddMeInit()V

    .line 1553
    return-void
.end method

.method public roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 2123
    move v0, p1

    .line 2124
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2125
    const/4 v0, 0x0

    .line 2127
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 2129
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 2130
    const/4 v1, 0x0

    .line 2140
    .local v1, retVal:I
    :goto_0
    return v1

    .line 2131
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 2132
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 2133
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 2134
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 2135
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 2136
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 2138
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public final scheduleAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const-string v1, "CameraEngine"

    .line 825
    const-string v0, "CameraEngine"

    const-string v0, "scheduleAutoFocus"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 828
    const-string v0, "CameraEngine"

    const-string v0, "scheduleAutoFocus - current focus mode is off"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 836
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    goto :goto_0
.end method

.method public final scheduleChangeParameter(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1429
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleChangeParameter key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x7

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1432
    return-void
.end method

.method public final scheduleHideReviewScreen()V
    .locals 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1082
    return-void
.end method

.method public final schedulePostInit()V
    .locals 3

    .prologue
    .line 1174
    const-string v0, "CameraEngine"

    const-string v1, "schedulePostInit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1177
    return-void
.end method

.method public scheduleProcessBack()V
    .locals 3

    .prologue
    .line 1419
    const-string v0, "CameraEngine"

    const-string v1, "scheduleProcessBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1422
    return-void
.end method

.method public final scheduleSetAllParams()V
    .locals 3

    .prologue
    .line 918
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSetAllParams"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 921
    return-void
.end method

.method public final scheduleShowReviewScreen()V
    .locals 3

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1074
    return-void
.end method

.method public final scheduleShutterTimer(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 872
    const-string v0, "CameraEngine"

    const-string v1, "scheduleShutterTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 875
    return-void
.end method

.method public final scheduleStartActionShot()V
    .locals 3

    .prologue
    .line 999
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1002
    return-void
.end method

.method public final scheduleStartContinuous()V
    .locals 3

    .prologue
    .line 929
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartContinuous"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 932
    return-void
.end method

.method public final scheduleStartEngine()V
    .locals 3

    .prologue
    .line 1089
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1092
    return-void
.end method

.method public final scheduleStartPanorama()V
    .locals 3

    .prologue
    .line 966
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 969
    return-void
.end method

.method public final scheduleStartPreview()V
    .locals 3

    .prologue
    .line 1280
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1283
    return-void
.end method

.method public scheduleStartSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 1390
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStartSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1395
    :cond_0
    return-void
.end method

.method public final scheduleStopActionShot()V
    .locals 3

    .prologue
    .line 1012
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopActionShot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1015
    return-void
.end method

.method public final scheduleStopContinuous()V
    .locals 3

    .prologue
    .line 947
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopContinuous"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 950
    return-void
.end method

.method public final scheduleStopEngine()V
    .locals 3

    .prologue
    .line 1232
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopEngine"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1235
    return-void
.end method

.method public final scheduleStopPanorama()V
    .locals 3

    .prologue
    .line 987
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPanorama"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 990
    return-void
.end method

.method public final scheduleStopPreview()V
    .locals 3

    .prologue
    .line 1368
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1371
    return-void
.end method

.method public scheduleStopSmileDetection()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 1404
    const-string v0, "CameraEngine"

    const-string v1, "scheduleStopSmileDetection"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1407
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1410
    :cond_0
    return-void
.end method

.method public final scheduleSwitchCamera(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1194
    const-string v0, "CameraEngine"

    const-string v1, "scheduleSwitchCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x13

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 1201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 1202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1204
    return-void

    :cond_0
    move v2, v3

    .line 1198
    goto :goto_0
.end method

.method public final scheduleTakePicture()V
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1028
    return-void
.end method

.method public final scheduleWait(I)V
    .locals 3
    .parameter

    .prologue
    .line 1063
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleWait: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mili seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 1066
    return-void
.end method

.method public searchForInitialLastContentUri()V
    .locals 2

    .prologue
    .line 752
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$1;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    .line 780
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    const-string v1, "searchForInitialLastContentUri"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 782
    return-void
.end method

.method protected searchForLastContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 749
    .end local p0
    :goto_0
    return-void

    .line 719
    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, selection:Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/camera/CameraEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 722
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 723
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 725
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 727
    .local v7, dataIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.NEW_PICTURE"

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;

    .line 731
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 734
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z

    if-eqz v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 736
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 745
    .end local p0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 742
    .restart local p0
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto :goto_1

    .line 747
    .restart local p0
    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSearchingLastContentUriCompleted()V

    goto/16 :goto_0
.end method

.method public setAddMeStichingCompleted(Z)V
    .locals 1
    .parameter "completed"

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mShootingModeManager:Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->access$1702(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;Z)Z

    .line 1546
    return-void
.end method

.method public setContinuousShotInProgress(Z)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotInProgress:Z

    .line 151
    return-void
.end method

.method public setContinuousShotShutterEventProcessing(Z)V
    .locals 0
    .parameter "processed"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotShutterPressProcessed:Z

    .line 143
    return-void
.end method

.method public setContinuousShotSound(I)V
    .locals 1
    .parameter "sound"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setContinuousShotSound(I)V

    .line 168
    :cond_0
    return-void
.end method

.method public setContinuousShotStopRequested(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mContinuousShotStopCommandCalled:Z

    .line 159
    return-void
.end method

.method public setLandscapeActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 2089
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLandscapeActive:Z

    .line 2090
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 1982
    if-eqz p1, :cond_0

    .line 1983
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1984
    :cond_0
    return-void
.end method

.method public final setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    .line 194
    return-void
.end method

.method public final setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnTimerEventListener:Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;

    .line 204
    return-void
.end method

.method public setStoreImageOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 209
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mStoreImageOrientation:I

    .line 210
    return-void
.end method

.method public setTouchFocusPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->setObjectTrackingPosition(II)V

    .line 2005
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    .line 2006
    return-void
.end method

.method public smileDetectionCompleted()V
    .locals 2

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1564
    return-void
.end method

.method public startTouchAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2038
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 2039
    const-string v0, "CameraEngine"

    const-string v1, "startTouchAutoFocus - mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :goto_0
    return-void

    .line 2043
    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    if-nez v0, :cond_1

    .line 2044
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    .line 2045
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2049
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startTouchAutoFocus()V

    .line 2050
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    goto :goto_0
.end method

.method public startingPreviewCompleted()V
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onStartingPreviewCompleted()V

    .line 1365
    return-void
.end method

.method public stopObjectTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2023
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 2024
    const-string v0, "CameraEngine"

    const-string v1, "stopObjectTracking - mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :goto_0
    return-void

    .line 2028
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopObjectTracking()V

    .line 2029
    sput-boolean v1, Lcom/sec/android/app/camera/CameraEngine;->m_bIsObjectTracking:Z

    .line 2030
    sput-boolean v1, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0
.end method

.method public stopTouchAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2054
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_0

    .line 2055
    const-string v0, "CameraEngine"

    const-string v1, "stopTouchAutoFocus - mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :goto_0
    return-void

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopTouchAutoFocus()V

    .line 2061
    sget-boolean v0, Lcom/sec/android/app/camera/CameraEngine;->m_bForFocusSetOrg:Z

    if-eqz v0, :cond_1

    .line 2062
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2065
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bForFocusSetOrg:Z

    .line 2066
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsFocusSetAuto:Z

    .line 2068
    :cond_1
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchAutoFocusing:Z

    .line 2069
    sput-boolean v3, Lcom/sec/android/app/camera/CameraEngine;->m_bIsTouchFocusPositioned:Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1607
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1610
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1615
    :cond_0
    if-ge p3, p4, :cond_4

    move v0, p3

    move v1, p4

    .line 1621
    :goto_0
    iput v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    .line 1622
    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 1626
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->resetPreviewSize()V

    .line 1628
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequest;->getRequest()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1629
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 1636
    :cond_1
    :goto_1
    return-void

    .line 1631
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1633
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1

    :cond_4
    move v0, p4

    move v1, p3

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 1639
    const-string v0, "CameraEngine"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 1643
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 1646
    const-string v0, "CameraEngine"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1650
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1653
    :cond_1
    return-void
.end method

.method public switchAddMePosition(I)V
    .locals 3
    .parameter

    .prologue
    .line 1539
    const-string v0, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchAddMePosition setLeft="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->switchPositionAddMeShot(I)V

    .line 1542
    :cond_0
    return-void
.end method

.method public updateFocusIndicator()V
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOnFocusStateChangedListener:Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;->onFocusStateChanged(I)V

    .line 1963
    :cond_0
    return-void
.end method

.method public waitForCurrentPictureSaving()V
    .locals 2

    .prologue
    .line 2157
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mIsSavingPicture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2159
    const-wide/16 v0, 0xa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2161
    :cond_0
    return-void
.end method

.method public waitForCurrentSearchingLastContentUri()V
    .locals 1

    .prologue
    .line 2175
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mSearchingLastContentUriThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2181
    :cond_0
    :goto_0
    return-void

    .line 2178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForEngineStartingThread()V
    .locals 2

    .prologue
    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 1163
    const-string v0, "CameraEngine"

    const-string v1, "join OpenCameraThread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public waitForStartPreviewThreadComplete()V
    .locals 1

    .prologue
    .line 2165
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2171
    :cond_0
    :goto_0
    return-void

    .line 2168
    :catch_0
    move-exception v0

    goto :goto_0
.end method
