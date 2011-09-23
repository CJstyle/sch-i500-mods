.class public Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.super Landroid/app/Activity;
.source "DialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;,
        Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;,
        Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;,
        Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;,
        Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;,
        Lcom/sec/android/app/dialertab/dialer/DialerActivity$IconChangedReceiver;
    }
.end annotation


# static fields
.field static final ADD_CALL_MODE_KEY:Ljava/lang/String; = "add_call_mode"

.field private static final CHANGE_PASSWORD:I = 0x66

.field private static final DIALOG_CONTACT:I = 0x66

.field private static final DIAL_TONE_STREAM_TYPE:I = 0x3

.field static final EXTRA_SEND_EMPTY_FLASH:Ljava/lang/String; = "com.android.phone.extra.SEND_EMPTY_FLASH"

.field private static final ITEM_SAVE:I = 0x1

.field private static final ITEM_SEND_MESSAGE:I = 0x3

.field private static final ITEM_SPEED_DIAL_SETTING:I = 0x2

.field private static final LOG_RESULT:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x65

.field private static final MENU_2S_PAUSE:I = 0x4

.field private static final MENU_WAIT:I = 0x5

.field private static final NAME_RESULT:I = 0x1

.field private static final NORMAL_SEARCH:I = 0x70

.field private static final NUMBER_RESULT:I = 0x2

.field private static final PROJECTION_LOG:[Ljava/lang/String; = null

.field private static final PROJECTION_NAME:[Ljava/lang/String; = null

.field private static final PROJECTION_NAME_REVERSE:[Ljava/lang/String; = null

.field private static final PROJECTION_PHONE:[Ljava/lang/String; = null

.field private static final PROJECTION_RESULT:[Ljava/lang/String; = null

.field private static final PROJECTION_RESULT_REVERSE:[Ljava/lang/String; = null

.field private static final PROJECTION_SPEEDDIAL:[Ljava/lang/String; = null

.field private static final RESULT_NUMBER:I = 0x0

.field private static final SEARCHEMPTY:I = 0x12

.field private static final SEARCHING:I = 0x14

.field private static final SEARCHOK:I = 0x13

.field private static final SEARCHSTART:I = 0x11

.field private static final SPEEDDIAL_RESULT:I = 0x0

.field private static final TAB_INDEX_CALL_LOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DialerActivity"

.field private static final TEXT_SIZE_LIMIT:I = 0x3e8

.field private static final THREAD_WAIT_TIMEOUT:I = 0x64

.field private static final TIMEOUT:I = 0x111

.field private static final TIMEOUT_LIMIT:I = 0xbb8

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x50

.field private static final VIBRATE_LENGTH_MS:I = 0x28

.field private static argsName:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static condition:Landroid/os/ConditionVariable; = null

.field private static count:I = 0x0

.field private static isReverse:Z = false

.field private static listResult:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mAddBtn:Landroid/widget/Button; = null

.field private static mAudioManager:Landroid/media/AudioManager; = null

.field private static mDTMFToneEnabled:Z = false

.field private static mDeleteButton:Landroid/view/View; = null

.field private static mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView; = null

.field private static mLongpressed:Z = false

.field private static mLooperHandler:Landroid/os/Handler; = null

.field static mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread; = null

.field private static mSearchLayout:Landroid/widget/LinearLayout; = null

.field private static mSearchLock:Ljava/lang/Object; = null

.field private static mSearchedCtNumberBefore:Z = false

.field private static mSearchedLogBefore:Z = false

.field private static mToast_nocall:Landroid/widget/Toast; = null

.field private static mToast_nospeed:Landroid/widget/Toast; = null

.field private static mToneGenerator:Landroid/media/ToneGenerator; = null

.field private static mToneGeneratorLock:Ljava/lang/Object; = null

.field private static mTouchEventHandler:Landroid/os/Handler; = null

.field private static mUnreadVvmCnt:I = 0x0

.field private static mVibrateOn:Z = false

.field private static mVibrator:Landroid/os/Vibrator; = null

.field private static mWndFocusAfterResume:Z = false

.field private static message_counter:I = 0x0

.field private static message_flag:Z = false

.field private static numberArray:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static previous_id:[I = null

.field private static previous_x:[I = null

.field private static previous_y:[I = null

.field private static r:Landroid/graphics/Rect; = null

.field private static resultFlag:I = 0x0

.field private static final resultIntent:I = 0x1

.field private static final resultName:I = 0x0

.field private static final resultNameBlock:I = 0x2

.field private static final resultPrefix:I = 0x3


# instance fields
.field private final DIALKEY_SOUND_PATH:Ljava/lang/String;

.field private final NUM_DIALKEY_SOUND_STREAMS:I

.field private PREFS_NAME:Ljava/lang/String;

.field private dialogResult:Landroid/app/AlertDialog;

.field private digitText:Ljava/lang/String;

.field private imageNumber:I

.field private mDialSoundId:I

.field private mDialSoundLock:Ljava/lang/Object;

.field private mDialer:Landroid/view/View;

.field private mDialerHandler:Landroid/os/Handler;

.field mDialerRunnerble:Ljava/lang/Runnable;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

.field private final mIconChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAddCallMode:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiveHandler:Landroid/os/Handler;

.field private mSoundPool:Landroid/media/SoundPool;

.field mSp:Landroid/content/SharedPreferences;

.field needToShowDialpadChooser:Z

.field private subdialogResult:Landroid/app/AlertDialog;

.field private vvmInfoView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mUnreadVvmCnt:I

    .line 196
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mWndFocusAfterResume:Z

    .line 203
    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 204
    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    .line 205
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_flag:Z

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->r:Landroid/graphics/Rect;

    .line 209
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    .line 210
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    .line 211
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGeneratorLock:Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLock:Ljava/lang/Object;

    .line 252
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    .line 267
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    .line 268
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->LONGPRESS_TIMEOUT:I

    .line 284
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "key_number"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    .line 291
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_PHONE:[Ljava/lang/String;

    .line 296
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "has_phone_number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_NAME:[Ljava/lang/String;

    .line 303
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name_reverse"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "has_phone_number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_NAME_REVERSE:[Ljava/lang/String;

    .line 310
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT:[Ljava/lang/String;

    .line 317
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name_reverse"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

    .line 324
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "contactid"

    aput-object v1, v0, v3

    const-string v1, "logtype"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_LOG:[Ljava/lang/String;

    .line 2530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    .line 2558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    return-void

    .line 209
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 210
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 211
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 168
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$IconChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$IconChangedReceiver;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIconChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    .line 269
    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    .line 278
    iput v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->imageNumber:I

    .line 281
    const-string v0, "DialerFile.sp"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PREFS_NAME:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSp:Landroid/content/SharedPreferences;

    .line 345
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->needToShowDialpadChooser:Z

    .line 351
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerHandler:Landroid/os/Handler;

    .line 1212
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$3;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerRunnerble:Ljava/lang/Runnable;

    .line 2192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundLock:Ljava/lang/Object;

    .line 2195
    const-string v0, "/media/audio/ui/TW_Waterdrop.ogg"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->DIALKEY_SOUND_PATH:Ljava/lang/String;

    .line 2196
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->NUM_DIALKEY_SOUND_STREAMS:I

    .line 3962
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mReceiveHandler:Landroid/os/Handler;

    .line 4166
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialpadChooserVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/dialer/DialerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;JZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeCall_result(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    return p0
.end method

.method static synthetic access$1400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/dialer/DialerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subDialogBuilder(I)V

    return-void
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-boolean p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    return p0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-boolean p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    return p0
.end method

.method static synthetic access$1800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    invoke-static {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dialertab/dialer/DialerActivity;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_PHONE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2202(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-object p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mReceiveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setSearchLayout(Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2700()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->condition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$2900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_flag:Z

    return v0
.end method

.method static synthetic access$3102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-boolean p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_flag:Z

    return p0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    return v0
.end method

.method static synthetic access$3202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    return p0
.end method

.method static synthetic access$3300()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeCall_result()V

    return-void
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    return-object v0
.end method

.method static synthetic access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-boolean p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    return p0
.end method

.method private static addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, argsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const-string v11, "a"

    const-string v10, "+"

    const-string v9, "*"

    const-string v8, "#"

    .line 2652
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2654
    .local v5, tempName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2655
    .local v2, digits_length:I
    sub-int v6, v2, v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2656
    .local v0, args_char:C
    const/4 v4, 0x0

    .line 2657
    .local v4, lsize:I
    if-eqz p1, :cond_0

    .line 2658
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2660
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 2814
    .end local p0
    :cond_1
    :goto_0
    :pswitch_0
    return-object v5

    .line 2662
    .restart local p0
    :pswitch_1
    if-ne v2, v7, :cond_2

    .line 2663
    const-string v6, "a"

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2664
    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    const-string v6, "c"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2667
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 2668
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2669
    .local v1, cc:Ljava/lang/String;
    const-string v6, "a"

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2670
    const-string v6, "b"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    const-string v6, "c"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2676
    .end local v1           #cc:Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_2
    if-ne v2, v7, :cond_3

    .line 2677
    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2678
    const-string v6, "e"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2681
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v4, :cond_1

    .line 2682
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2683
    .restart local v1       #cc:Ljava/lang/String;
    const-string v6, "d"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2684
    const-string v6, "e"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2685
    const-string v6, "f"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2681
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2690
    .end local v1           #cc:Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_3
    if-ne v2, v7, :cond_4

    .line 2691
    const-string v6, "g"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    const-string v6, "h"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2693
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2695
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v4, :cond_1

    .line 2696
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2697
    .restart local v1       #cc:Ljava/lang/String;
    const-string v6, "g"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    const-string v6, "h"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2699
    const-string v6, "i"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2695
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2704
    .end local v1           #cc:Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_4
    if-ne v2, v7, :cond_5

    .line 2705
    const-string v6, "j"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2706
    const-string v6, "k"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2707
    const-string v6, "l"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2709
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v4, :cond_1

    .line 2710
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2711
    .restart local v1       #cc:Ljava/lang/String;
    const-string v6, "j"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2712
    const-string v6, "k"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2713
    const-string v6, "l"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2709
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2718
    .end local v1           #cc:Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_5
    if-ne v2, v7, :cond_6

    .line 2719
    const-string v6, "m"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2720
    const-string v6, "n"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2721
    const-string v6, "o"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2723
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v4, :cond_1

    .line 2724
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2725
    .restart local v1       #cc:Ljava/lang/String;
    const-string v6, "m"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
    const-string v6, "n"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2727
    const-string v6, "o"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2723
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 2732
    .end local v1           #cc:Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_6
    if-ne v2, v7, :cond_7

    .line 2733
    const-string v6, "p"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2734
    const-string v6, "q"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2735
    const-string v6, "r"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2736
    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2738
    :cond_7
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_6
    if-ge v3, v4, :cond_1

    .line 2739
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2740
    .restart local v1       #cc:Ljava/lang/String;
    const-string v6, "p"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    const-string v6, "q"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    const-string v6, "r"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    const-string v6, "s"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2748
    .end local v1           #cc:Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_7
    if-ne v2, v7, :cond_8

    .line 2749
    const-string v6, "t"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2750
    const-string v6, "u"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2751
    const-string v6, "v"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2753
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_7
    if-ge v3, v4, :cond_1

    .line 2754
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2755
    .restart local v1       #cc:Ljava/lang/String;
    const-string v6, "t"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    const-string v6, "u"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2757
    const-string v6, "v"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2753
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2762
    .end local v1           #cc:Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_8
    if-ne v2, v7, :cond_9

    .line 2763
    const-string v6, "w"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2764
    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2765
    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    const-string v6, "z"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2768
    :cond_9
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_8
    if-ge v3, v4, :cond_1

    .line 2769
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2770
    .restart local v1       #cc:Ljava/lang/String;
    const-string v6, "w"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2771
    const-string v6, "x"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2772
    const-string v6, "y"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2773
    const-string v6, "z"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2768
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2778
    .end local v1           #cc:Ljava/lang/String;
    .end local v3           #i:I
    :pswitch_9
    if-ne v2, v7, :cond_a

    .line 2779
    const-string v6, "#"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2781
    :cond_a
    const/4 v3, 0x0

    .end local p0
    .restart local v3       #i:I
    :goto_9
    if-ge v3, v4, :cond_1

    .line 2782
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v6, "#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2781
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 2787
    .end local v3           #i:I
    .restart local p0
    :pswitch_a
    if-ne v2, v7, :cond_b

    .line 2788
    const-string v6, "*"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2790
    :cond_b
    const/4 v3, 0x0

    .end local p0
    .restart local v3       #i:I
    :goto_a
    if-ge v3, v4, :cond_1

    .line 2791
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {p0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2790
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2796
    .end local v3           #i:I
    .restart local p0
    :pswitch_b
    if-ne v2, v7, :cond_c

    .line 2797
    const-string v6, "+"

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2799
    :cond_c
    const/4 v3, 0x0

    .end local p0
    .restart local v3       #i:I
    :goto_b
    if-ge v3, v4, :cond_1

    .line 2800
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v6, "+"

    invoke-virtual {p0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2799
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2660
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private callVisualVoicemail()V
    .locals 5

    .prologue
    .line 2101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2103
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2104
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 2106
    return-void
.end method

.method private callVoicemail()V
    .locals 5

    .prologue
    .line 2092
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2094
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2095
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2096
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 2098
    return-void
.end method

.method private checkHapticEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2016
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearDialString()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-string v7, ""

    .line 2506
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getSelectionStart()I

    move-result v0

    .line 2507
    .local v0, anchor:I
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    .line 2509
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2510
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2512
    .local v4, selectionEnd:I
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2513
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2514
    if-ne v5, v4, :cond_1

    .line 2515
    if-nez v5, :cond_0

    .line 2528
    :goto_0
    return-void

    .line 2519
    :cond_0
    const-string v6, ""

    invoke-interface {v1, v8, v5, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2521
    :cond_1
    const-string v6, ""

    invoke-interface {v1, v5, v4, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2525
    :cond_2
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v2

    .line 2526
    .local v2, len:I
    const-string v6, ""

    invoke-interface {v1, v8, v2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private dailogBuildcreate()V
    .locals 4

    .prologue
    .line 2532
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listCreate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    .line 2533
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2556
    :goto_0
    return-void

    .line 2536
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2537
    .local v0, dialogResultBuilder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;

    const v2, 0x7f030009

    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 2538
    .local v1, listadapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;
    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$4;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2552
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 2553
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2554
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    .line 2555
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private dialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 4329
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private digitsSetText(Ljava/lang/String;)V
    .locals 2
    .parameter "temp"

    .prologue
    .line 2818
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2832
    :cond_0
    :goto_0
    return-void

    .line 2821
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2827
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2828
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0
.end method

.method private eventHandlingForDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1510
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    div-int/lit16 v2, v4, 0xff

    .line 1511
    .local v2, mPointerID:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1512
    .local v1, mConter:I
    const/4 v4, 0x0

    sput-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    .line 1513
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1514
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v4, v4, v0

    if-eqz v4, :cond_0

    .line 1515
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1513
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1517
    :cond_1
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v4, v4, v2

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playSoundViberateUi(Landroid/view/View;I)V

    .line 1518
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1519
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1520
    .local v3, msg:Landroid/os/Message;
    const/16 v4, 0x65

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1521
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 1522
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mTouchEventHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sget v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->LONGPRESS_TIMEOUT:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1524
    .end local v3           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private eventHandlingForUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    .line 1527
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    div-int/lit16 v2, v4, 0xff

    .line 1528
    .local v2, mPointerID:I
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v0, v4

    .line 1529
    .local v0, dx:I
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v1, v4

    .line 1530
    .local v1, dy:I
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResouceID(II)I

    move-result v3

    .line 1532
    .local v3, tcase:I
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mTouchEventHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1533
    if-eqz v3, :cond_0

    .line 1534
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1535
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 1610
    :cond_1
    :goto_0
    :pswitch_0
    sput-boolean v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    .line 1611
    return-void

    .line 1537
    :pswitch_1
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1538
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1542
    :pswitch_2
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1543
    const/16 v4, 0x9

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1547
    :pswitch_3
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1548
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1552
    :pswitch_4
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1553
    const/16 v4, 0xb

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1557
    :pswitch_5
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1558
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1562
    :pswitch_6
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1563
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1567
    :pswitch_7
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1568
    const/16 v4, 0xe

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1572
    :pswitch_8
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1573
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1577
    :pswitch_9
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1578
    const/16 v4, 0x10

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1582
    :pswitch_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1584
    const/16 v4, 0x51

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1586
    :cond_2
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1587
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto/16 :goto_0

    .line 1598
    :pswitch_b
    sget-boolean v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v4, :cond_1

    .line 1599
    const/16 v4, 0x12

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto/16 :goto_0

    .line 1604
    :pswitch_c
    const/16 v4, 0x11

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto/16 :goto_0

    .line 1535
    nop

    :pswitch_data_0
    .packed-switch 0x7f06007a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private getResouceID(II)I
    .locals 3
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1882
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->r:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1883
    .local v0, height:I
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->r:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1885
    .local v1, width:I
    if-ltz p2, :cond_2

    div-int/lit8 v2, v0, 0x4

    if-ge p2, v2, :cond_2

    .line 1886
    if-ltz p1, :cond_0

    div-int/lit8 v2, v1, 0x3

    if-ge p1, v2, :cond_0

    .line 1887
    const v2, 0x7f06007a

    .line 1919
    :goto_0
    return v2

    .line 1888
    :cond_0
    div-int/lit8 v2, v1, 0x3

    if-lt p1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge p1, v2, :cond_1

    .line 1889
    const v2, 0x7f06007b

    goto :goto_0

    .line 1890
    :cond_1
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-lt p1, v2, :cond_b

    if-ge p1, v1, :cond_b

    .line 1891
    const v2, 0x7f06007c

    goto :goto_0

    .line 1894
    :cond_2
    div-int/lit8 v2, v0, 0x4

    if-lt p2, v2, :cond_5

    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x4

    if-ge p2, v2, :cond_5

    .line 1895
    if-ltz p1, :cond_3

    div-int/lit8 v2, v1, 0x3

    if-ge p1, v2, :cond_3

    .line 1896
    const v2, 0x7f06007e

    goto :goto_0

    .line 1897
    :cond_3
    div-int/lit8 v2, v1, 0x3

    if-lt p1, v2, :cond_4

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge p1, v2, :cond_4

    .line 1898
    const v2, 0x7f06007f

    goto :goto_0

    .line 1899
    :cond_4
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-lt p1, v2, :cond_b

    if-ge p1, v1, :cond_b

    .line 1900
    const v2, 0x7f060080

    goto :goto_0

    .line 1902
    :cond_5
    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x4

    if-lt p2, v2, :cond_8

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge p2, v2, :cond_8

    .line 1903
    if-ltz p1, :cond_6

    div-int/lit8 v2, v1, 0x3

    if-ge p1, v2, :cond_6

    .line 1904
    const v2, 0x7f060082

    goto :goto_0

    .line 1905
    :cond_6
    div-int/lit8 v2, v1, 0x3

    if-lt p1, v2, :cond_7

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge p1, v2, :cond_7

    .line 1906
    const v2, 0x7f060083

    goto :goto_0

    .line 1907
    :cond_7
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-lt p1, v2, :cond_b

    if-ge p1, v1, :cond_b

    .line 1908
    const v2, 0x7f060084

    goto :goto_0

    .line 1910
    :cond_8
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    if-lt p2, v2, :cond_b

    mul-int/lit8 v2, v0, 0x4

    div-int/lit8 v2, v2, 0x4

    if-ge p2, v2, :cond_b

    .line 1911
    if-ltz p1, :cond_9

    div-int/lit8 v2, v1, 0x3

    if-ge p1, v2, :cond_9

    .line 1912
    const v2, 0x7f060086

    goto/16 :goto_0

    .line 1913
    :cond_9
    div-int/lit8 v2, v1, 0x3

    if-lt p1, v2, :cond_a

    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge p1, v2, :cond_a

    .line 1914
    const v2, 0x7f060087

    goto/16 :goto_0

    .line 1915
    :cond_a
    mul-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    if-lt p1, v2, :cond_b

    if-ge p1, v1, :cond_b

    .line 1916
    const v2, 0x7f060088

    goto/16 :goto_0

    .line 1919
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private getSpeedDialNumber(JZ)Ljava/lang/String;
    .locals 8
    .parameter "i"
    .parameter "bSendkey"

    .prologue
    const/4 v4, 0x0

    .line 2034
    const-string v7, ""

    .line 2035
    .local v7, number:Ljava/lang/String;
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2036
    .local v1, URI_SPEEDDIAL:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2038
    .local v6, c_speedDial:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 2039
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2040
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2047
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2056
    :cond_1
    :goto_1
    return-object v7

    .line 2042
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2043
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2044
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2049
    :cond_3
    if-nez p3, :cond_1

    .line 2050
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 2051
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2052
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private getTouchWizFont()Landroid/graphics/Typeface;
    .locals 10

    .prologue
    const-string v9, "DialerActivity"

    const-string v8, "fonts/Input_TouchWiz_2010205.ttf"

    .line 656
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "tempInput_TouchWiz_2010205.ttf"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 658
    .local v5, tempFontFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Input_TouchWiz_2010205.ttf"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 661
    .local v4, fontStream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v6, 0x2000

    invoke-direct {v1, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 662
    .local v1, buffStream:Ljava/io/BufferedInputStream;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 664
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 667
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, bRead:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 668
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 672
    .end local v0           #bRead:I
    .end local v1           #buffStream:Ljava/io/BufferedInputStream;
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v4           #fontStream:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 673
    .local v2, ex:Ljava/io/IOException;
    const-string v6, "DialerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create font temp file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Input_TouchWiz_2010205.ttf"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 680
    .end local v2           #ex:Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 670
    .restart local v0       #bRead:I
    .restart local v1       #buffStream:Ljava/io/BufferedInputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fontStream:Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 671
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 680
    .end local v0           #bRead:I
    .end local v1           #buffStream:Ljava/io/BufferedInputStream;
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v4           #fontStream:Ljava/io/InputStream;
    :cond_1
    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_1

    .line 675
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 676
    .local v2, ex:Ljava/lang/SecurityException;
    const-string v6, "DialerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecurityManager denies write access for temp font file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Input_TouchWiz_2010205.ttf"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_1
.end method

.method private initVibrationPattern()V
    .locals 1

    .prologue
    .line 2367
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->checkHapticEnable()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrateOn:Z

    .line 2368
    return-void
.end method

.method private static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 2836
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTestMode()Z
    .locals 2

    .prologue
    .line 4142
    const-string v0, "gsm.default.esn"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keyPressed(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1394
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1395
    .local v0, event:Landroid/view/KeyEvent;
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1397
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendAccessibilityEvent(ILjava/lang/String;Z)V

    .line 1400
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    .line 1401
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->testMode(ILjava/lang/String;)V

    .line 1403
    :cond_0
    return-void
.end method

.method private listCreate(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x64

    const/4 v6, 0x1

    const-string v9, "DialerActivity"

    .line 3628
    sput v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3629
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3630
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3635
    .local v3, tsize:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3640
    .local v0, SpeedDialCheck:I
    :goto_0
    if-nez v3, :cond_0

    .line 3689
    :goto_1
    return-object v2

    .line 3636
    .end local v0           #SpeedDialCheck:I
    :catch_0
    move-exception v1

    .line 3637
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .restart local v0       #SpeedDialCheck:I
    goto :goto_0

    .line 3644
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    if-ne v3, v6, :cond_1

    .line 3647
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3648
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3649
    sput v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 3652
    :cond_1
    sget v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 3655
    :pswitch_0
    if-gt v0, v6, :cond_2

    if-ge v0, v7, :cond_3

    .line 3657
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3660
    :cond_3
    if-eq v3, v6, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 3661
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3670
    :cond_5
    :goto_2
    const-string v4, "DialerActivity"

    const-string v4, "resultFromTouch"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3664
    :cond_6
    if-eq v0, v7, :cond_5

    .line 3666
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3667
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3668
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 3676
    :pswitch_1
    if-gt v0, v6, :cond_7

    if-ge v0, v7, :cond_8

    .line 3678
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3681
    :cond_8
    const/4 v4, 0x3

    if-lt v3, v4, :cond_9

    if-eq v0, v7, :cond_9

    .line 3683
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3684
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3686
    :cond_9
    const-string v4, "DialerActivity"

    const-string v4, "resultFromIntent,Prefix"

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3652
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 9
    .parameter "arg"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x64

    const/4 v6, 0x1

    .line 3242
    const/4 v2, 0x0

    .line 3243
    .local v2, mContact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    sput v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3248
    .local v3, tsize:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3254
    .local v0, SpeedDialCheck:I
    :goto_0
    if-nez v3, :cond_0

    .line 3255
    const/4 v4, 0x0

    .line 3323
    :goto_1
    return-object v4

    .line 3249
    .end local v0           #SpeedDialCheck:I
    :catch_0
    move-exception v1

    .line 3251
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v0, 0x0

    .restart local v0       #SpeedDialCheck:I
    goto :goto_0

    .line 3259
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    if-ne v3, v6, :cond_1

    .line 3261
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3262
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3263
    sput v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 3266
    :cond_1
    sget v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    packed-switch v4, :pswitch_data_0

    .line 3322
    :cond_2
    :goto_2
    const-string v4, "DialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<++++++++++>List create stop : count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 3323
    goto :goto_1

    .line 3269
    :pswitch_0
    if-gt v0, v6, :cond_3

    if-ge v0, v7, :cond_4

    .line 3271
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    .line 3274
    :cond_4
    if-eq v3, v6, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 3276
    :cond_5
    if-nez v2, :cond_6

    .line 3277
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    goto :goto_2

    .line 3280
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    goto :goto_2

    .line 3286
    :cond_7
    if-eq v0, v7, :cond_2

    .line 3287
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    .line 3288
    if-nez v2, :cond_9

    .line 3289
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    .line 3290
    if-nez v2, :cond_8

    .line 3291
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    goto :goto_2

    .line 3293
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    goto :goto_2

    .line 3296
    :cond_9
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    .line 3297
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    goto :goto_2

    .line 3305
    :pswitch_1
    if-gt v0, v6, :cond_a

    if-ge v0, v7, :cond_b

    .line 3307
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    .line 3310
    :cond_b
    if-eq v3, v6, :cond_2

    .line 3311
    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    if-eq v0, v7, :cond_2

    .line 3313
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    .line 3314
    if-nez v2, :cond_c

    .line 3315
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    goto :goto_2

    .line 3317
    :cond_c
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    goto :goto_2

    .line 3266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private loadDialkeySound()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2199
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 2200
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2203
    :cond_0
    new-instance v1, Landroid/media/SoundPool;

    invoke-direct {v1, v2, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 2205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/media/audio/ui/TW_Waterdrop.ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2206
    .local v0, filePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundId:I

    .line 2208
    iget v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundId:I

    if-gtz v1, :cond_1

    .line 2209
    const-string v1, "DialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Soundpool could not load file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_1
    return-void
.end method

.method private loadLastDialedNumber()V
    .locals 10

    .prologue
    const-string v9, "number"

    const-string v8, "DialerActivity"

    .line 4338
    const/4 v7, 0x0

    .line 4341
    .local v7, log_cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 4348
    :goto_0
    if-nez v7, :cond_0

    .line 4349
    const-string v0, "DialerActivity"

    const-string v0, "CallLog is empty"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    :goto_1
    return-void

    .line 4344
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 4345
    .local v6, ex:Ljava/lang/Exception;
    const-string v0, "DialerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadLastDialedNumber(): Exception during quering CallLog database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4352
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4354
    :cond_1
    const-string v0, "number"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitsSetText(Ljava/lang/String;)V

    .line 4356
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4358
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "photoId"
    .parameter "options"

    .prologue
    .line 2906
    const/4 v7, 0x0

    .line 2907
    .local v7, photoCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2909
    .local v6, photoBm:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2912
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2913
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 2914
    .local v8, photoData:[B
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2918
    .end local v8           #photoData:[B
    :cond_0
    if-eqz v7, :cond_1

    .line 2919
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2922
    :cond_1
    return-object v6

    .line 2918
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 2919
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "string"

    .prologue
    const/4 v3, -0x1

    const-string v7, ")"

    const-string v6, "("

    const-string v5, " "

    const-string v4, ""

    .line 2857
    move-object v0, p0

    .line 2859
    .local v0, aa:Ljava/lang/String;
    :goto_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 2860
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2862
    :cond_0
    :goto_1
    const-string v1, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2863
    const-string v1, " "

    const-string v1, ""

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2865
    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 2866
    const-string v1, ")"

    const-string v1, ""

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2868
    :cond_2
    :goto_3
    const-string v1, "("

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 2869
    const-string v1, "("

    const-string v1, ""

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2871
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private mannerModeSet()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2003
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2004
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v0, v3

    .line 2005
    .local v0, isvibrate:Z
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2007
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setRingerMode(ZZ)V

    .line 2008
    const v1, 0x7f09004d

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2013
    :goto_1
    return-void

    .end local v0           #isvibrate:Z
    :cond_0
    move v0, v2

    .line 2004
    goto :goto_0

    .line 2010
    .restart local v0       #isvibrate:Z
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setRingerMode(ZZ)V

    .line 2011
    const v1, 0x7f09004e

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private phoneIsCdma()Z
    .locals 5

    .prologue
    .line 2317
    const/4 v1, 0x0

    .line 2319
    .local v1, isCdma:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2320
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2321
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 2326
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 2321
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 2323
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2324
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DialerActivity"

    const-string v4, "phone.getActivePhoneType() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 5

    .prologue
    .line 2303
    const/4 v2, 0x0

    .line 2305
    .local v2, phoneInUse:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2306
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 2310
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2306
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 2307
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2308
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DialerActivity"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 5

    .prologue
    .line 2333
    const/4 v2, 0x0

    .line 2335
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2336
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2340
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 2337
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2338
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DialerActivity"

    const-string v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private placeCall_result()V
    .locals 10

    .prologue
    const/16 v9, 0x31

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2121
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2122
    .local v2, number:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 2123
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsOffhook()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2124
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v9, :cond_2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 2127
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_1

    .line 2128
    const-string v5, "DialerActivity"

    const-string v6, "placeCall_result(), call voice mail"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    .line 2177
    :cond_0
    :goto_0
    return-void

    .line 2132
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2133
    .local v1, nNumber:I
    int-to-long v5, v1

    invoke-direct {p0, v5, v6, v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2134
    .local v4, speed_dial:Ljava/lang/String;
    const-string v5, ""

    if-eq v4, v5, :cond_2

    .line 2135
    move-object v2, v4

    .line 2140
    .end local v1           #nNumber:I
    .end local v4           #speed_dial:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 2141
    .local v3, sendEmptyFlash:Z
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    const/4 v7, 0x0

    invoke-static {v6, v2, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2143
    .local v0, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2145
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsCdma()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsOffhook()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2148
    const-string v5, "com.android.phone.extra.SEND_EMPTY_FLASH"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2149
    const/4 v3, 0x1

    .line 2154
    :cond_4
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2155
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2156
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->clear()V

    .line 2157
    if-nez v3, :cond_0

    goto :goto_0

    .line 2169
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #sendEmptyFlash:Z
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->loadLastDialedNumber()V

    goto :goto_0
.end method

.method private placeCall_result(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 2109
    const-string v1, ""

    if-ne p1, v1, :cond_0

    .line 2118
    :goto_0
    return-void

    .line 2111
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2113
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2114
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2116
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method private placeVideoCall()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "DialerActivity"

    .line 2062
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2063
    const-string v4, "DialerActivity"

    const-string v4, "In placeVideoCall method"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2065
    .local v2, number:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-lt v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    .line 2067
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2068
    .local v1, nNumber:I
    int-to-long v4, v1

    invoke-direct {p0, v4, v5, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v3

    .line 2069
    .local v3, speed_dial:Ljava/lang/String;
    const-string v4, ""

    if-eq v3, v4, :cond_0

    .line 2070
    move-object v2, v3

    .line 2073
    .end local v1           #nNumber:I
    .end local v3           #speed_dial:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    const-string v5, "tel"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2076
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "videocall"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2077
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2078
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2079
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->clear()V

    .line 2081
    const-string v4, "DialerActivity"

    const-string v4, "Out placeVideoCall method"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #number:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2083
    :cond_2
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    if-eqz v4, :cond_1

    .line 2084
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 2085
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private playDialkeySound()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 2220
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 2249
    :cond_0
    :goto_0
    return-void

    .line 2229
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 2230
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2232
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 2233
    .local v7, ringerMode:I
    if-eqz v7, :cond_0

    if-eq v7, v1, :cond_0

    .line 2238
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundId:I

    if-lez v0, :cond_0

    .line 2239
    iget-object v8, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2245
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v2

    .line 2246
    .local v2, volFloat:F
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundId:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2247
    monitor-exit v8

    goto :goto_0

    .end local v2           #volFloat:F
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private playSoundViberateUi(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "tcase"

    .prologue
    const/4 v1, 0x1

    .line 1700
    if-nez p2, :cond_0

    .line 1758
    :goto_0
    return-void

    .line 1702
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1704
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1707
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1709
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1713
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1717
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1721
    :pswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1725
    :pswitch_5
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1729
    :pswitch_6
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1733
    :pswitch_7
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1737
    :pswitch_8
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1741
    :pswitch_9
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1745
    :pswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1749
    :pswitch_b
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1753
    :pswitch_c
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1707
    nop

    :pswitch_data_0
    .packed-switch 0x7f06007a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 2264
    sget-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDTMFToneEnabled:Z

    if-nez v2, :cond_1

    .line 2296
    :cond_0
    :goto_0
    return-void

    .line 2273
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2274
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 2275
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2280
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2281
    :try_start_0
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v3, :cond_2

    .line 2282
    const-string v3, "DialerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    monitor-exit v2

    goto :goto_0

    .line 2295
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2294
    :cond_2
    :try_start_1
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v3, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 2295
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private resolveIntent()Z
    .locals 18

    .prologue
    .line 763
    const/4 v11, 0x0

    .line 764
    .local v11, ignoreState:Z
    const/4 v14, 0x0

    .line 767
    .local v14, isFromPhone:Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isChild()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 769
    .local v12, intent:Landroid/content/Intent;
    const-string v2, "ignore-state"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 780
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 781
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 782
    const/4 v2, 0x2

    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 783
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->needToShowDialpadChooser:Z

    .line 785
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIsAddCallMode:Z

    .line 787
    const-string v2, "phone"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->canMakeCall()Z

    move-result v13

    .line 790
    .local v13, isAddCall:Z
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 791
    .local v8, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 795
    :cond_0
    const-string v2, "FromPhone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 796
    const/4 v2, 0x1

    if-ne v14, v2, :cond_2

    .line 798
    const-string v2, "DialerActivity"

    const-string v3, "Dial intent from Phone(DM)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v2, 0x1

    .line 849
    :goto_1
    return v2

    .line 771
    .end local v8           #action:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v13           #isAddCall:Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .restart local v12       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 804
    .restart local v8       #action:Ljava/lang/String;
    .restart local v13       #isAddCall:Z
    :cond_2
    const-string v2, "add_call_mode"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIsAddCallMode:Z

    .line 805
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 807
    .local v17, uri:Landroid/net/Uri;
    if-eqz v17, :cond_3

    .line 808
    const/4 v2, 0x1

    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 809
    const-string v2, "tel"

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 811
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 813
    .local v10, data:Ljava/lang/String;
    const-string v2, "DialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Set Number String:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 816
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 817
    invoke-static {v10}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 818
    .local v15, pureNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitsSetText(Ljava/lang/String;)V

    .line 847
    .end local v10           #data:Ljava/lang/String;
    .end local v15           #pureNumber:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->needToShowDialpadChooser:Z

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    move v2, v11

    .line 849
    goto :goto_1

    .line 821
    .restart local v17       #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v16

    .line 822
    .local v16, type:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/contact"

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 825
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 827
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 828
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 830
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 831
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 832
    const-string v2, "DialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Set Number String:222  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitsSetText(Ljava/lang/String;)V

    .line 835
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 840
    .end local v9           #c:Landroid/database/Cursor;
    .end local v16           #type:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_7
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsInUse()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v13, :cond_3

    .line 844
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->needToShowDialpadChooser:Z

    goto/16 :goto_2
.end method

.method private returnToInCallScreen(Z)V
    .locals 4
    .parameter "showDialpad"

    .prologue
    .line 4311
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4312
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4326
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4313
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4314
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DialerActivity"

    const-string v3, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendSMS()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-string v5, "sms"

    const-string v4, "android.intent.action.SENDTO"

    .line 2180
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2181
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2183
    .local v1, phoneNumber:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-static {v5, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2184
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2189
    .end local v1           #phoneNumber:Ljava/lang/String;
    :goto_0
    return-void

    .line 2186
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v2, "sms"

    const-string v2, ""

    invoke-static {v5, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2187
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setCallView()V
    .locals 5

    .prologue
    .line 688
    const v4, 0x7f06008d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 689
    .local v0, mDialButton:Landroid/widget/ImageButton;
    const v4, 0x7f06008e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 690
    .local v2, mVideoDialButton:Landroid/widget/ImageButton;
    const v4, 0x7f06008f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 692
    .local v1, mMessageButton:Landroid/widget/ImageButton;
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    if-eqz v2, :cond_0

    .line 702
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 705
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 706
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    const v4, 0x7f06008b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 711
    .local v3, voiceMailButton:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    return-void
.end method

.method private setInputNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 2876
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    .line 2877
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_flag:Z

    .line 2878
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2879
    .local v1, mNumber:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    if-ge v0, v2, :cond_1

    .line 2880
    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 2897
    aget-char v2, v1, v0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    aget-char v2, v1, v0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 2898
    aget-char v2, v1, v0

    const/16 v3, 0x29

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    .line 2879
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2882
    :sswitch_0
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2885
    :sswitch_1
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2888
    :sswitch_2
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2891
    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2894
    :sswitch_4
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2902
    :cond_1
    return-void

    .line 2880
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_4
        0x2a -> :sswitch_3
        0x2b -> :sswitch_0
        0x2c -> :sswitch_1
        0x3b -> :sswitch_2
    .end sparse-switch
.end method

.method private setPrefixNumber()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v8, 0x1

    const-string v10, "prefix_number"

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "prefix_mode"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 908
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "prefix_number"

    aput-object v10, v2, v8

    const/4 v0, 0x2

    const-string v3, "prefix_checked"

    aput-object v3, v2, v0

    .line 913
    .local v2, PROJECTION_PREFIX:[Ljava/lang/String;
    const-string v7, ""

    .line 915
    .local v7, text:Ljava/lang/String;
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/prefix_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 916
    .local v1, URI_PREFIX:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "prefix_checked=\'1\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 919
    .local v6, c_Prefix:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 920
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    :cond_0
    const-string v0, "prefix_number"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 923
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 926
    sput v9, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 927
    sput-boolean v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 928
    sput-boolean v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 929
    invoke-direct {p0, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitsSetText(Ljava/lang/String;)V

    .line 932
    .end local v1           #URI_PREFIX:Landroid/net/Uri;
    .end local v2           #PROJECTION_PREFIX:[Ljava/lang/String;
    .end local v6           #c_Prefix:Landroid/database/Cursor;
    .end local v7           #text:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setRingerMode(ZZ)V
    .locals 4
    .parameter "silent"
    .parameter "vibrate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2020
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2022
    if-eqz p1, :cond_1

    .line 2023
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2031
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 2023
    goto :goto_0

    .line 2026
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2027
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p2, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private setSearchLayout(Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;Ljava/lang/String;I)V
    .locals 21
    .parameter "mContact"
    .parameter "args_number"
    .parameter "count_result"

    .prologue
    .line 3853
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v15

    .line 3854
    .local v15, name:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v17

    .line 3855
    .local v17, phone_number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getPhotoID()I

    move-result v19

    .line 3856
    .local v19, photoID:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getType()I

    move-result v20

    .line 3871
    .local v20, type:I
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f06006b

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 3873
    .local v12, mSearchLayout_fullname:Landroid/widget/LinearLayout;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    .line 3874
    .local v14, mlength:I
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 3875
    .local v13, mStr:I
    const/16 v18, 0x0

    .line 3877
    .local v18, photoBm:Landroid/graphics/Bitmap;
    if-eqz v19, :cond_0

    .line 3878
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3879
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide v6, v0

    move-object/from16 v0, p0

    move-wide v1, v6

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 3880
    const v4, 0x7f060069

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3885
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    packed-switch v20, :pswitch_data_0

    .line 3959
    :goto_1
    const v4, 0x7f060074

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3960
    return-void

    .line 3882
    .restart local p0
    .restart local p1
    :cond_0
    const v4, 0x7f060069

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    const v4, 0x7f02009d

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3888
    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3890
    const v4, 0x7f06006c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3891
    const v4, 0x7f06006d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3892
    const v4, 0x7f06006e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3893
    const v4, 0x7f060070

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3894
    const v4, 0x7f060071

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3895
    const v4, 0x7f060072

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3908
    :pswitch_1
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3909
    const v4, 0x7f06006c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3910
    const v4, 0x7f06006d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v15, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3911
    const v4, 0x7f06006e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3914
    move-object/from16 v11, v17

    .line 3915
    .local v11, index:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/contacts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3916
    .local v5, URI_PHONE:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v7, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3918
    .local v10, cur_phone:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 3919
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3920
    const-string v4, "data1"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3921
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3923
    :cond_2
    const v4, 0x7f060070

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3924
    const v4, 0x7f060071

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3925
    const v4, 0x7f060072

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3908
    .end local v5           #URI_PHONE:Landroid/net/Uri;
    .end local v10           #cur_phone:Landroid/database/Cursor;
    .end local v11           #index:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3929
    :pswitch_2
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3930
    const v4, 0x7f06006c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3931
    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3938
    :goto_3
    const v4, 0x7f06006c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3939
    const v4, 0x7f06006d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3940
    const v4, 0x7f06006e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v4, ""

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3942
    const v4, 0x7f060070

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3943
    const v4, 0x7f060071

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3944
    const v4, 0x7f060072

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    add-int v4, v14, v13

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3934
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3935
    const v4, 0x7f06006c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3947
    :pswitch_3
    const v4, 0x7f06006b

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3950
    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3952
    const v4, 0x7f060070

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3953
    const v4, 0x7f060071

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3954
    const v4, 0x7f060072

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    add-int v4, v14, v13

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3885
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSearchView()V
    .locals 5

    .prologue
    .line 607
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    .line 608
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 609
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 611
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 612
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getTouchWizFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 615
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 638
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 639
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 640
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setScaledDensity(F)V

    .line 642
    const v1, 0x7f060067

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 643
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 645
    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    .line 646
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 649
    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 650
    const v1, 0x7f060073

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    return-void
.end method

.method private setupDialpad()V
    .locals 2

    .prologue
    .line 594
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialer:Landroid/view/View;

    .line 595
    const v0, 0x7f060090

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 598
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    .line 599
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 601
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    return-void
.end method

.method private setupKeypad()V
    .locals 1

    .prologue
    .line 684
    const v0, 0x7f060078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 685
    return-void
.end method

.method private showDialpadChooser(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4147
    const v1, 0x7f060077

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4148
    .local v0, v:Landroid/view/View;
    if-eqz p1, :cond_2

    .line 4149
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4150
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4151
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4155
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooserAdapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

    if-nez v1, :cond_1

    .line 4156
    new-instance v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooserAdapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

    .line 4157
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooserAdapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4164
    :cond_1
    :goto_0
    return-void

    .line 4160
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4161
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4162
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3579
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3581
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;>;"
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    if-nez v0, :cond_0

    .line 3624
    :goto_0
    return-object v12

    .line 3584
    :cond_0
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3586
    .local v1, URI_LOGS:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3590
    .local v4, args_phone:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3591
    .local v13, selection:Ljava/lang/StringBuilder;
    const-string v0, "replace"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    const/16 v0, 0x28

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3593
    const-string v0, "number"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3595
    const/16 v0, 0x22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3596
    const-string v0, "-"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3597
    const/16 v0, 0x22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3598
    const-string v0, ","

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3599
    const/16 v0, 0x22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3600
    const/16 v0, 0x22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3601
    const/16 v0, 0x29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3603
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v3, "contactid"

    const-string v5, " = 0 and "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3605
    .local v11, c_log:Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 3606
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    goto/16 :goto_0

    .line 3610
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3612
    :cond_2
    new-instance v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const/4 v7, 0x0

    const-string v8, ""

    const-string v0, "number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3617
    .local v5, contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3618
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3622
    .end local v5           #contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3620
    :cond_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    goto :goto_1
.end method

.method private smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 14
    .parameter "arg"

    .prologue
    const/16 v3, 0x22

    const/4 v7, 0x0

    const-string v9, "number"

    const-string v8, ","

    const-string v6, "%"

    .line 3192
    const/4 v12, 0x0

    .line 3194
    .local v12, list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    if-nez v0, :cond_0

    move-object v5, v12

    .line 3238
    .end local v12           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_0
    return-object v12

    .line 3197
    .restart local v12       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_0
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3199
    .local v1, URI_LOGS:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 3203
    .local v4, args_phone:[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 3204
    .local v13, selection:Ljava/lang/StringBuilder;
    const-string v0, "replace"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3205
    const/16 v0, 0x28

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3206
    const-string v0, "number"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3207
    const-string v0, ","

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3208
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3209
    const-string v0, "-"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3210
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3211
    const-string v0, ","

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3212
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3213
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3214
    const/16 v0, 0x29

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3216
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v3, "contactid"

    const-string v6, " = 0 and "

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, " LIKE ?"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3218
    .local v11, c_log:Landroid/database/Cursor;
    if-nez v11, :cond_1

    .line 3219
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    move-object v5, v12

    .line 3220
    .end local v12           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .local v5, list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_0

    .line 3223
    .end local v5           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v12       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3224
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3226
    new-instance v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v8, ""

    const-string v0, "number"

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3236
    .end local v12           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v5       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object v12, v5

    .line 3238
    .end local v5           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v12       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto/16 :goto_0

    .line 3233
    :cond_2
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    move-object v5, v12

    .end local v12           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v5       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_1
.end method

.method private smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3366
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 3367
    .local v19, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;>;"
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3368
    .local v15, cc:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    .line 3371
    .local v22, tsize:I
    move v0, v15

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 3444
    .end local p1
    :cond_0
    :goto_0
    return-object v19

    .line 3375
    .restart local p1
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 3377
    .local v21, tempArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_3

    .line 3378
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3388
    :goto_1
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 3390
    .local v18, ii:I
    const-string v3, "content://com.android.contacts/contacts/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3392
    .local v4, URI_NAME:Landroid/net/Uri;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 3393
    const/16 v20, 0x0

    .line 3395
    .local v20, selection:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #selection:Ljava/lang/String;
    check-cast v20, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3400
    .restart local v20       #selection:Ljava/lang/String;
    :goto_3
    if-nez v20, :cond_5

    .line 3442
    .end local v20           #selection:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    move-object v0, v3

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3443
    const-string v3, "DialerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #URI_NAME:Landroid/net/Uri;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<++++++++++>smartSearch_Name searchlist number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3380
    .end local v17           #i:I
    .end local v18           #ii:I
    .restart local p1
    :cond_3
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v4, 0x1

    sub-int v4, v22, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3382
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v22, 0x1

    if-ge v3, v4, :cond_4

    .line 3383
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v5, 0x1

    sub-int v5, v22, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, v4

    move/from16 v1, v22

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3385
    :cond_4
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v5, 0x1

    sub-int v5, v22, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, v4

    move/from16 v1, v22

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3396
    .end local p1
    .restart local v4       #URI_NAME:Landroid/net/Uri;
    .restart local v17       #i:I
    .restart local v18       #ii:I
    :catch_0
    move-exception v3

    move-object/from16 v16, v3

    .line 3397
    .local v16, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "DialerActivity"

    const-string v5, "Selection exception. Zeroing selection"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    const/16 v20, 0x0

    .restart local v20       #selection:Ljava/lang/String;
    goto/16 :goto_3

    .line 3402
    .end local v16           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "%"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 3407
    .local v7, args_phone:[Ljava/lang/String;
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v3, :cond_9

    .line 3408
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v6, "has_phone_number = 1 AND display_name LIKE ?"

    const-string v8, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3415
    .local v14, c_Name:Landroid/database/Cursor;
    :goto_4
    if-eqz v14, :cond_8

    .line 3416
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3417
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    .line 3418
    sget v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/2addr v3, v5

    sput v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3419
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3422
    :cond_6
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v3, :cond_a

    .line 3423
    new-instance v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "display_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3435
    .local v8, contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_5
    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3436
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3439
    .end local v8           #contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3392
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 3411
    .end local v14           #c_Name:Landroid/database/Cursor;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_NAME_REVERSE:[Ljava/lang/String;

    const-string v6, "has_phone_number = 1 AND display_name_reverse LIKE ?"

    const-string v8, "display_name_reverse COLLATE LOCALIZED ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #c_Name:Landroid/database/Cursor;
    goto :goto_4

    .line 3429
    :cond_a
    new-instance v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "display_name_reverse"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .restart local v8       #contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_5
.end method

.method private smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 21
    .parameter "arg"

    .prologue
    .line 2965
    const/4 v8, 0x0

    .line 2966
    .local v8, list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2967
    .local v15, cc:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v20

    .line 2968
    .local v20, tsize:I
    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    move-object/from16 v17, v8

    .line 3029
    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .end local p1
    :goto_0
    return-object v17

    .line 2972
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local p1
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2974
    .local v19, tempArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 2975
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2985
    :goto_1
    const-string v3, "content://com.android.contacts/contacts/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2987
    .local v4, URI_NAME:Landroid/net/Uri;
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v17, v8

    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .end local p1
    .local v17, list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_2
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_1

    .line 2988
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2989
    .local v18, selection:Ljava/lang/String;
    if-nez v18, :cond_5

    .line 3027
    .end local v18           #selection:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    move-object v0, v3

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v8, v17

    .line 3029
    .end local v17           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_0

    .line 2977
    .end local v4           #URI_NAME:Landroid/net/Uri;
    .end local v16           #i:I
    .restart local p1
    :cond_2
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v4, 0x1

    sub-int v4, v20, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v17, v8

    .line 2978
    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v17       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_0

    .line 2979
    .end local v17           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_3
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v20, 0x1

    if-ge v3, v4, :cond_4

    .line 2980
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v5, 0x1

    sub-int v5, v20, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, v4

    move/from16 v1, v20

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 2982
    :cond_4
    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v5, 0x1

    sub-int v5, v20, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    move-object v0, v4

    move/from16 v1, v20

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2991
    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .end local p1
    .restart local v4       #URI_NAME:Landroid/net/Uri;
    .restart local v16       #i:I
    .restart local v17       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v18       #selection:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "%"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 2995
    .local v7, args_phone:[Ljava/lang/String;
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v3, :cond_6

    .line 2996
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v6, "has_phone_number = 1 AND display_name LIKE ?"

    const-string v8, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3003
    .local v14, c_Name:Landroid/database/Cursor;
    :goto_3
    if-eqz v14, :cond_9

    .line 3004
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3005
    sget v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    add-int/2addr v3, v5

    sput v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3006
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3007
    if-nez v17, :cond_8

    .line 3008
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v3, :cond_7

    .line 3009
    new-instance v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "display_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3024
    .end local v17           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2987
    :goto_5
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v17, v8

    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v17       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto/16 :goto_2

    .line 2999
    .end local v14           #c_Name:Landroid/database/Cursor;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_NAME_REVERSE:[Ljava/lang/String;

    const-string v6, "has_phone_number = 1 AND display_name_reverse LIKE ?"

    const-string v8, "display_name_reverse COLLATE LOCALIZED ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #c_Name:Landroid/database/Cursor;
    goto :goto_3

    .line 3015
    :cond_7
    new-instance v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "display_name_reverse"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .end local v17           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_4

    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v17       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_8
    move-object/from16 v8, v17

    .end local v17           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_4

    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v17       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_9
    move-object/from16 v8, v17

    .end local v17           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_5
.end method

.method private smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3448
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 3450
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;>;"
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    if-nez v3, :cond_0

    .line 3575
    :goto_0
    return-object v15

    .line 3453
    :cond_0
    const-string v3, "content://com.android.contacts/data/phones/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3457
    .local v4, URI_PHONE:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 3461
    .local v7, args_phone:[Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 3462
    .local v18, selection:Ljava/lang/StringBuilder;
    const-string v6, "data1"

    .line 3464
    .local v6, totalStr:Ljava/lang/String;
    const-string v19, "replace("

    .line 3466
    .local v19, selection_1:Ljava/lang/String;
    const-string v3, ","

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3467
    const/16 v3, 0x22

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3468
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3469
    .local v20, selection_2:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3471
    const/16 v3, 0x22

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3472
    const-string v3, ","

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3473
    const/16 v3, 0x22

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3474
    const/16 v3, 0x22

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3475
    const/16 v3, 0x29

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3476
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3477
    .local v21, selection_3:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3479
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3480
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3481
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3482
    const-string v3, "-"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3483
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3485
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3486
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3488
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3490
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3491
    const-string v3, ")"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3494
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3495
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3497
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3498
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3500
    const-string v3, "("

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3504
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3506
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3509
    const-string v3, " "

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3510
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3512
    const-string v3, " LIKE ?"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3514
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3517
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v3, :cond_1

    .line 3518
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v8, "display_name"

    const-string v9, " COLLATE LOCALIZED ASC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3525
    .local v14, c_Number:Landroid/database/Cursor;
    :goto_1
    if-nez v14, :cond_2

    .line 3526
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    goto/16 :goto_0

    .line 3521
    .end local v14           #c_Number:Landroid/database/Cursor;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

    const-string v8, "display_name_reverse"

    const-string v9, " COLLATE LOCALIZED ASC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #c_Number:Landroid/database/Cursor;
    goto :goto_1

    .line 3529
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3531
    new-instance v17, Ljava/lang/String;

    const-string v3, ""

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3532
    .local v17, previous_phone_number:Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    const-string v3, ""

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3536
    .local v16, previous_name:Ljava/lang/String;
    :cond_3
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v3, :cond_4

    .line 3537
    new-instance v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "display_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "data1"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3551
    .local v8, contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_2
    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3553
    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3569
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3573
    .end local v8           #contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .end local v16           #previous_name:Ljava/lang/String;
    .end local v17           #previous_phone_number:Ljava/lang/String;
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3543
    .restart local v16       #previous_name:Ljava/lang/String;
    .restart local v17       #previous_phone_number:Ljava/lang/String;
    :cond_4
    new-instance v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "display_name_reverse"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "data1"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .restart local v8       #contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_2

    .line 3559
    :cond_5
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3566
    :goto_5
    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3567
    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 3564
    :cond_6
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3571
    .end local v8           #contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .end local v16           #previous_name:Ljava/lang/String;
    .end local v17           #previous_phone_number:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    goto :goto_4
.end method

.method private smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 22
    .parameter "arg"

    .prologue
    .line 3033
    const/4 v15, 0x0

    .line 3035
    .local v15, list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    if-nez v3, :cond_0

    move-object v8, v15

    .line 3188
    .end local v15           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_0
    return-object v15

    .line 3038
    .restart local v15       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_0
    const-string v3, "content://com.android.contacts/data/phones/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3042
    .local v4, URI_PHONE:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 3044
    .local v7, args_phone:[Ljava/lang/String;
    const-string v3, "DialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<++++++++++>smartSearch_Number Start query : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 3050
    .local v18, selection:Ljava/lang/StringBuilder;
    const-string v6, "data1"

    .line 3052
    .local v6, totalStr:Ljava/lang/String;
    const-string v19, "replace("

    .line 3054
    .local v19, selection_1:Ljava/lang/String;
    const-string v3, ","

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    const/16 v3, 0x22

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3056
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3057
    .local v20, selection_2:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3059
    const/16 v3, 0x22

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3060
    const-string v3, ","

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3061
    const/16 v3, 0x22

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3062
    const/16 v3, 0x22

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3063
    const/16 v3, 0x29

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3064
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3065
    .local v21, selection_3:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3067
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3068
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3069
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3070
    const-string v3, "-"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3071
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3073
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3074
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3076
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3077
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    const-string v3, "("

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3083
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3085
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3086
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3087
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    const-string v3, ")"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3089
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3091
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3092
    const/4 v3, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3094
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3097
    const-string v3, " "

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    const-string v3, " LIKE ?"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3104
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v3, :cond_1

    .line 3105
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v8, "display_name"

    const-string v9, " COLLATE LOCALIZED ASC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3113
    .local v14, c_Number:Landroid/database/Cursor;
    :goto_1
    if-nez v14, :cond_2

    .line 3114
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    move-object v8, v15

    .line 3115
    .end local v15           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .local v8, list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto/16 :goto_0

    .line 3109
    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .end local v14           #c_Number:Landroid/database/Cursor;
    .restart local v15       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

    const-string v8, "display_name_reverse"

    const-string v9, " COLLATE LOCALIZED ASC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #c_Number:Landroid/database/Cursor;
    goto :goto_1

    .line 3117
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToLast()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3118
    new-instance v17, Ljava/lang/String;

    const-string v3, ""

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3119
    .local v17, previous_phone_number:Ljava/lang/String;
    new-instance v16, Ljava/lang/String;

    const-string v3, ""

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v16, previous_name:Ljava/lang/String;
    move-object v8, v15

    .line 3123
    .end local v15           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_3
    sget-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v3, :cond_4

    .line 3124
    new-instance v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    const-string v3, "photo_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "display_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "data1"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3138
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_2
    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3140
    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3156
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3186
    .end local v16           #previous_name:Ljava/lang/String;
    .end local v17           #previous_phone_number:Ljava/lang/String;
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    move-object v15, v8

    .line 3188
    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v15       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto/16 :goto_0

    .line 3130
    .end local v15           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v16       #previous_name:Ljava/lang/String;
    .restart local v17       #previous_phone_number:Ljava/lang/String;
    :cond_4
    new-instance v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    const-string v3, "photo_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v3, "display_name_reverse"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "data1"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_2

    .line 3146
    :cond_5
    sget v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3153
    :goto_5
    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    .line 3154
    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    .line 3151
    :cond_6
    sget v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    goto :goto_5

    .line 3160
    .end local v8           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .end local v16           #previous_name:Ljava/lang/String;
    .end local v17           #previous_phone_number:Ljava/lang/String;
    .restart local v15       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_7
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    move-object v8, v15

    .end local v15           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v8       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_4
.end method

.method private smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3327
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3328
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;>;"
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3334
    .local v1, URI_SPEEDDIAL:Landroid/net/Uri;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 3339
    .local v8, SpeedDialCheck:I
    :goto_0
    const/4 v0, 0x1

    if-lt v8, v0, :cond_0

    const/16 v0, 0x64

    if-le v8, v0, :cond_1

    .line 3362
    :cond_0
    :goto_1
    return-object v11

    .line 3335
    .end local v8           #SpeedDialCheck:I
    :catch_0
    move-exception v10

    .line 3336
    .local v10, ex:Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    .restart local v8       #SpeedDialCheck:I
    goto :goto_0

    .line 3345
    .end local v10           #ex:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3348
    .local v9, c_speedDial:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 3349
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3350
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3351
    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v0, "photo_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "display_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "number"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3356
    .local v2, contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3358
    .end local v2           #contact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 12
    .parameter "arg"

    .prologue
    const/4 v4, 0x0

    .line 2926
    const/4 v11, 0x0

    .line 2927
    .local v11, list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2932
    .local v1, URI_SPEEDDIAL:Landroid/net/Uri;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 2937
    .local v8, SpeedDialCheck:I
    :goto_0
    const/4 v0, 0x1

    if-lt v8, v0, :cond_0

    const/16 v0, 0x64

    if-le v8, v0, :cond_1

    :cond_0
    move-object v2, v11

    .line 2961
    .end local v11           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_1
    return-object v11

    .line 2933
    .end local v8           #SpeedDialCheck:I
    .restart local v11       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :catch_0
    move-exception v10

    .line 2934
    .local v10, ex:Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    .restart local v8       #SpeedDialCheck:I
    goto :goto_0

    .line 2942
    .end local v10           #ex:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v0, "DialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<++++++++++>smartSearch_SpeedDial Start query : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_SPEEDDIAL:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2947
    .local v9, c_speedDial:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 2948
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2949
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 2950
    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v0, "photo_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "display_name"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "number"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 2957
    .end local v11           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .local v2, list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_3
    move-object v11, v2

    .line 2961
    .end local v2           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v11       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_1

    :cond_2
    move-object v2, v11

    .end local v11           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v2       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_2

    .end local v2           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v11       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    :cond_3
    move-object v2, v11

    .end local v11           #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .restart local v2       #list:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    goto :goto_3
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 2841
    if-nez p0, :cond_0

    .line 2842
    const/4 v4, 0x0

    .line 2853
    :goto_0
    return-object v4

    .line 2844
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2845
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2847
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2848
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2849
    .local v0, c:C
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2850
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2847
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2853
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private subDialogBuilder(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 2560
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 2561
    .local v9, index:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2562
    .local v1, URI_PHONE:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2564
    .local v7, cur_phone:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 2565
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2566
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2568
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    const-string v2, "data1"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2569
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2571
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2573
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .line 2574
    .local v6, aa:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2575
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v6, v8

    .line 2574
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2577
    :cond_3
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2578
    .local v10, subDialog:Landroid/app/AlertDialog$Builder;
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$5;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2588
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 2589
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2590
    :cond_4
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    .line 2591
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2592
    return-void
.end method

.method private testMode(ILjava/lang/String;)V
    .locals 1
    .parameter "keyPressValue"
    .parameter "code"

    .prologue
    .line 4136
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4137
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 4139
    :cond_0
    return-void
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8
    .parameter "newDigits"

    .prologue
    .line 2478
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getSelectionStart()I

    move-result v0

    .line 2479
    .local v0, anchor:I
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    .line 2481
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2482
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2484
    .local v4, selectionEnd:I
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2485
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2486
    if-ne v5, v4, :cond_0

    .line 2489
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2499
    :goto_0
    return-void

    .line 2491
    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2493
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    .line 2496
    :cond_1
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v2

    .line 2497
    .local v2, len:I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private declared-synchronized vibrate()V
    .locals 3

    .prologue
    .line 2347
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrateOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2360
    :goto_0
    monitor-exit p0

    return-void

    .line 2350
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 2351
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrator:Landroid/os/Vibrator;

    .line 2356
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 10
    .parameter "input"

    .prologue
    const/16 v6, 0x3e8

    const/16 v8, 0x8

    const/4 v7, 0x0

    const-string v9, ""

    .line 421
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, temp:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 424
    .local v2, mTextSize:I
    iput-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    .line 427
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setBackgroundResource(I)V

    .line 428
    if-nez v2, :cond_0

    .line 429
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 431
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setCursorVisible(Z)V

    .line 433
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 494
    :goto_0
    return-void

    .line 441
    :cond_0
    if-le v2, v6, :cond_1

    .line 442
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 462
    :cond_1
    const-string v5, "ril.IMSI"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, imsi:Ljava/lang/String;
    const-string v5, "15"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "999999999999999"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 465
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v6, "android_secret_code://$$15"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 466
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 467
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    const-string v6, ""

    invoke-virtual {v5, v9}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 472
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x1

    if-le v2, v5, :cond_3

    const/4 v5, 0x5

    if-ge v2, v5, :cond_3

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 473
    const/4 v5, 0x2

    sput v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 475
    :cond_3
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-static {p0, v4, v5}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 477
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    const-string v6, ""

    invoke-virtual {v5, v9}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 482
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v5, :cond_5

    .line 483
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 484
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v5, :cond_6

    .line 485
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 487
    :cond_6
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    if-eqz v5, :cond_7

    .line 488
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 489
    .local v3, msg:Landroid/os/Message;
    const/16 v5, 0x11

    iput v5, v3, Landroid/os/Message;->what:I

    .line 490
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 493
    .end local v3           #msg:Landroid/os/Message;
    :cond_7
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setFormattedDigits(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 375
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/16 v13, 0x12

    const/4 v12, 0x7

    const/4 v11, 0x5

    const/4 v9, 0x1

    const-string v10, "DialerActivity"

    .line 1222
    const-string v5, "DialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchKeyEvent("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1224
    .local v0, android_keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1229
    .local v2, keyAction:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 1231
    .local v3, keyPressedTime:J
    if-nez v2, :cond_6

    .line 1235
    const-wide/16 v5, 0x7d0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_4

    .line 1237
    if-ne v0, v11, :cond_0

    .line 1239
    const-string v5, "DialerActivity"

    const-string v5, "!!!!Voice command Intent!!!!!!"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v1, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1244
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v5, v9

    .line 1303
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return v5

    .line 1250
    :cond_0
    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    .line 1253
    const-string v5, "DialerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "long key detected, call voice mail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    move v5, v9

    .line 1256
    goto :goto_1

    .line 1259
    :cond_1
    const/16 v5, 0x9

    if-lt v0, v5, :cond_2

    const/16 v5, 0x10

    if-gt v0, v5, :cond_2

    .line 1261
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getKeyNum(I)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeCall_result(Ljava/lang/String;)V

    move v5, v9

    .line 1262
    goto :goto_1

    .line 1264
    :cond_2
    if-ne v0, v12, :cond_3

    .line 1266
    const/16 v5, 0x51

    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    move v5, v9

    .line 1267
    goto :goto_1

    .line 1269
    :cond_3
    if-ne v0, v13, :cond_7

    .line 1271
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mannerModeSet()V

    move v5, v9

    .line 1272
    goto :goto_1

    .line 1282
    :cond_4
    const/4 v5, 0x6

    if-ne v0, v5, :cond_5

    .line 1284
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->finish()V

    move v5, v9

    .line 1285
    goto :goto_1

    .line 1287
    :cond_5
    if-lt v0, v12, :cond_7

    if-gt v0, v13, :cond_7

    .line 1289
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    move v5, v9

    .line 1290
    goto :goto_1

    .line 1296
    :cond_6
    if-ne v0, v11, :cond_7

    .line 1298
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerRunnerble:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v5, v9

    .line 1299
    goto :goto_1

    .line 1303
    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    .line 1245
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected getContentViewResource()I
    .locals 1

    .prologue
    .line 759
    const v0, 0x7f030008

    return v0
.end method

.method public getKeyNum(I)J
    .locals 3
    .parameter "eventCode"

    .prologue
    .line 1168
    packed-switch p1, :pswitch_data_0

    .line 1204
    :pswitch_0
    const/16 v0, 0xff

    .line 1207
    .local v0, keyNum:I
    :goto_0
    int-to-long v1, v0

    return-wide v1

    .line 1171
    .end local v0           #keyNum:I
    :pswitch_1
    const/4 v0, 0x0

    .line 1172
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1174
    .end local v0           #keyNum:I
    :pswitch_2
    const/4 v0, 0x1

    .line 1175
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1177
    .end local v0           #keyNum:I
    :pswitch_3
    const/4 v0, 0x2

    .line 1178
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1180
    .end local v0           #keyNum:I
    :pswitch_4
    const/4 v0, 0x3

    .line 1181
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1183
    .end local v0           #keyNum:I
    :pswitch_5
    const/4 v0, 0x4

    .line 1184
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1186
    .end local v0           #keyNum:I
    :pswitch_6
    const/4 v0, 0x5

    .line 1187
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1189
    .end local v0           #keyNum:I
    :pswitch_7
    const/4 v0, 0x6

    .line 1190
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1192
    .end local v0           #keyNum:I
    :pswitch_8
    const/4 v0, 0x7

    .line 1193
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1195
    .end local v0           #keyNum:I
    :pswitch_9
    const/16 v0, 0x8

    .line 1196
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1198
    .end local v0           #keyNum:I
    :pswitch_a
    const/16 v0, 0x9

    .line 1199
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1201
    .end local v0           #keyNum:I
    :pswitch_b
    const/16 v0, 0xa

    .line 1202
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1168
    :pswitch_data_0
    .packed-switch 0x7
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
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2595
    packed-switch p1, :pswitch_data_0

    .line 2606
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 2597
    .restart local p0
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2598
    const-string v1, "result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2599
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 2600
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 2601
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 2602
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2603
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    .line 2595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1923
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1981
    .end local p0
    :goto_0
    return-void

    .line 1925
    .restart local p0
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1926
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialog(I)V

    goto :goto_0

    .line 1930
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1931
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f060070

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v1, 0x7f060071

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060072

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1934
    .local v0, index:Ljava/lang/String;
    sput v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 1935
    sput-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 1936
    sput-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 1937
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1938
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    .line 1942
    .end local v0           #index:Ljava/lang/String;
    .restart local p0
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1943
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dailogBuildcreate()V

    goto :goto_0

    .line 1947
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1949
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleDSACode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1950
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeCall_result()V

    goto/16 :goto_0

    .line 1952
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->finish()V

    goto/16 :goto_0

    .line 1956
    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1957
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeVideoCall()V

    goto/16 :goto_0

    .line 1961
    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1962
    sput-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 1963
    sput-boolean v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 1964
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto/16 :goto_0

    .line 1968
    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendSMS()V

    goto/16 :goto_0

    .line 1972
    :sswitch_7
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1973
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setCursorVisible(Z)V

    .line 1975
    :cond_1
    sput v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    goto/16 :goto_0

    .line 1978
    :sswitch_8
    #invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVisualVoicemail()V
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    goto/16 :goto_0

    .line 1923
    :sswitch_data_0
    .sparse-switch
        0x7f060065 -> :sswitch_7
        0x7f060066 -> :sswitch_5
        0x7f060068 -> :sswitch_1
        0x7f060073 -> :sswitch_2
        0x7f060076 -> :sswitch_0
        0x7f06008b -> :sswitch_8
        0x7f06008d -> :sswitch_3
        0x7f06008e -> :sswitch_4
        0x7f06008f -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 507
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 515
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentViewResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setContentView(I)V

    .line 517
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setSearchView()V

    .line 518
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setupKeypad()V

    .line 519
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setCallView()V

    .line 520
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setupDialpad()V

    .line 522
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 523
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 525
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->condition:Landroid/os/ConditionVariable;

    .line 527
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resolveIntent()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 531
    :cond_0
    new-instance v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;)V

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mTouchEventHandler:Landroid/os/Handler;

    .line 533
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 534
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    .line 537
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 538
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "Intent.action.RECEIVE_VVM_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIconChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 557
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2375
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 2377
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setCursorVisible(Z)V

    .line 2381
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2382
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 2613
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 2614
    packed-switch p1, :pswitch_data_0

    move-object v1, v4

    .line 2648
    :goto_0
    return-object v1

    .line 2616
    :pswitch_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2618
    .local v0, dialog_contact:[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$6;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 2614
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2390
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2392
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090050

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2394
    .local v0, add_2_pause:Ljava/lang/String;
    const v1, 0x7f090018

    invoke-interface {p1, v7, v5, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2396
    const v1, 0x7f09004b

    invoke-interface {p1, v5, v6, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e5

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2398
    const v1, 0x7f09001a

    invoke-interface {p1, v6, v8, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2400
    invoke-interface {p1, v8, v9, v8, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2402
    const/4 v1, 0x5

    const v2, 0x7f090051

    invoke-interface {p1, v9, v1, v9, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e7

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2405
    return v5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIconChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1162
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const-string v6, "DialerActivity"

    .line 4262
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    .line 4264
    .local v1, item:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;
    iget v2, v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 4265
    .local v2, itemId:I
    packed-switch v2, :pswitch_data_0

    .line 4299
    const-string v4, "DialerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick: unexpected itemId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    :cond_0
    :goto_0
    return-void

    .line 4270
    :pswitch_0
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 4277
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 4284
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    .line 4288
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 4290
    .local v3, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 4291
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->sendThreeWayCallFlashCode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4293
    .end local v3           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 4294
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "DialerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ITelephony.endCall() threw RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4265
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1406
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1423
    :cond_0
    :goto_0
    return v2

    .line 1410
    :pswitch_0
    const/4 v0, 0x6

    if-le p2, v0, :cond_1

    const/16 v0, 0x11

    if-lt p2, v0, :cond_2

    :cond_1
    const/16 v0, 0x43

    if-ne p2, v0, :cond_0

    .line 1411
    :cond_2
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendAccessibilityEvent(ILjava/lang/String;Z)V

    goto :goto_0

    .line 1406
    nop

    :pswitch_data_0
    .packed-switch 0x7f060065
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 1309
    packed-switch p1, :pswitch_data_0

    .line 1341
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_0
    return v5

    .line 1311
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 1312
    .local v0, callPressDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-ltz v5, :cond_0

    .line 1314
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1317
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    move v5, v9

    .line 1321
    goto :goto_0

    .line 1324
    .end local v0           #callPressDiff:J
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v7

    sub-long v3, v5, v7

    .line 1325
    .local v3, timeDiff:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 1327
    const-string v5, "DialerActivity"

    const-string v6, "long key detected, call voice mail"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    :cond_1
    move v5, v9

    .line 1330
    goto :goto_0

    .line 1335
    .end local v3           #timeDiff:J
    :pswitch_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 1318
    .restart local v0       #callPressDiff:J
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1309
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1345
    packed-switch p1, :pswitch_data_0

    .line 1390
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1348
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleDSACode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1366
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1351
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerRunnerble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1357
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIsAddCallMode:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1364
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeCall_result()V

    goto :goto_1

    .line 1386
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1387
    const/4 v0, 0x0

    goto :goto_0

    .line 1345
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 1985
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1986
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1999
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1988
    :pswitch_0
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 1989
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setCursorVisible(Z)V

    move v1, v2

    .line 1990
    goto :goto_0

    .line 1993
    :pswitch_1
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 1994
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 1995
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->clearDialString()V

    move v1, v2

    .line 1996
    goto :goto_0

    .line 1986
    nop

    :pswitch_data_0
    .packed-switch 0x7f060065
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "newIntent"

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setIntent(Landroid/content/Intent;)V

    .line 888
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resolveIntent()Z

    .line 889
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 2437
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2460
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 2466
    :goto_0
    return v1

    .line 2439
    :pswitch_0
    const-string v1, ","

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->updateDialString(Ljava/lang/String;)V

    move v1, v2

    .line 2440
    goto :goto_0

    .line 2443
    :pswitch_1
    const-string v1, ";"

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->updateDialString(Ljava/lang/String;)V

    move v1, v2

    .line 2444
    goto :goto_0

    .line 2447
    :pswitch_2
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialog(I)V

    move v1, v2

    .line 2448
    goto :goto_0

    .line 2451
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.contacts.action.SPEED_DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2452
    .local v0, newIntent_speed:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 2453
    goto :goto_0

    .line 2456
    .end local v0           #newIntent_speed:Landroid/content/Intent;
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendSMS()V

    move v1, v2

    .line 2457
    goto :goto_0

    .line 2466
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1107
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1108
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 1109
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1110
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 1111
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1113
    :cond_1
    invoke-static {}, Landroid/os/Power;->getMultiTouchState()I

    move-result v2

    if-nez v2, :cond_2

    .line 1114
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Power;->setMultiTouchState(Z)I

    .line 1117
    :cond_2
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1118
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1121
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1122
    :try_start_0
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v3, :cond_3

    .line 1123
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3}, Landroid/media/ToneGenerator;->release()V

    .line 1124
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1126
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->closeOptionsMenu()V

    .line 1130
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    if-eqz v2, :cond_4

    .line 1131
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1132
    :cond_4
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    if-eqz v2, :cond_5

    .line 1133
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1137
    :cond_5
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    if-eqz v2, :cond_6

    .line 1139
    :try_start_1
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->quit()Z
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1144
    :goto_0
    sput-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    .line 1150
    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1151
    return-void

    .line 1126
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1140
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1141
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 892
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 900
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2414
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2416
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 2417
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeGroup(I)V

    .line 2424
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/dialertab/DialerTabActivity;->VT_ENABLE:Z

    if-nez v1, :cond_1

    .line 2425
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 2428
    :cond_1
    return v4

    .line 2418
    :cond_2
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2419
    const v1, 0x7f090018

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d9

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2421
    .local v0, item_save:Landroid/view/MenuItem;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 903
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 904
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v12, "phone"

    .line 935
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 936
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->updateVVMNewMessageCount()V

    .line 939
    :try_start_0
    new-instance v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    const-string v7, "LooperThread"

    invoke-direct {v6, p0, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)V

    sput-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    .line 940
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 947
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v6, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v6, v10, :cond_4

    .line 948
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setInputType(I)V

    .line 954
    :goto_1
    invoke-static {}, Landroid/os/Power;->getMultiTouchState()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 955
    invoke-static {v11}, Landroid/os/Power;->setMultiTouchState(Z)I

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dtmf_tone"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_5

    move v6, v10

    :goto_2
    sput-boolean v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDTMFToneEnabled:Z

    .line 964
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v6

    .line 965
    :try_start_1
    sget-object v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_1

    .line 970
    :try_start_2
    new-instance v7, Landroid/media/ToneGenerator;

    const/4 v8, 0x3

    const/16 v9, 0x50

    invoke-direct {v7, v8, v9}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 971
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setVolumeControlStream(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 977
    :cond_1
    :goto_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 980
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getParent()Landroid/app/Activity;

    move-result-object v4

    .line 983
    .local v4, parent:Landroid/app/Activity;
    if-eqz v4, :cond_2

    instance-of v6, v4, Lcom/sec/android/app/dialertab/DialerTabActivity;

    if-eqz v6, :cond_2

    .line 984
    check-cast v4, Lcom/sec/android/app/dialertab/DialerTabActivity;

    .end local v4           #parent:Landroid/app/Activity;
    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getAndClearDialUri()Landroid/net/Uri;

    move-result-object v1

    .line 985
    .local v1, dialUri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 986
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resolveIntent()Z

    .line 992
    .end local v1           #dialUri:Landroid/net/Uri;
    :cond_2
    const-string v6, "phone"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 993
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 995
    const-string v6, "phone"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->canMakeCall()Z

    move-result v3

    .line 997
    .local v3, isAddCall:Z
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsInUse()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v3, :cond_6

    .line 998
    invoke-direct {p0, v10}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    .line 1004
    :goto_4
    sput-boolean v10, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 1005
    sput-boolean v10, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 1007
    sput-boolean v10, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mWndFocusAfterResume:Z

    .line 1009
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->initVibrationPattern()V

    .line 1011
    const v6, 0x7f09004f

    invoke-static {p0, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    .line 1012
    const v6, 0x7f09004c

    invoke-static {p0, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    sput-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    .line 1014
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "orderof"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_7

    move v6, v10

    :goto_5
    sput-boolean v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    .line 1016
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1017
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setPrefixNumber()V

    .line 1019
    :cond_3
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1023
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerTabActivity;->resetThreadPriority()V

    .line 1041
    return-void

    .line 941
    .end local v0           #configuration:Landroid/content/res/Configuration;
    .end local v3           #isAddCall:Z
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 942
    .local v2, e:Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 952
    .end local v2           #e:Ljava/lang/IllegalThreadStateException;
    .restart local v0       #configuration:Landroid/content/res/Configuration;
    :cond_4
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setInputType(I)V

    goto/16 :goto_1

    :cond_5
    move v6, v11

    .line 959
    goto/16 :goto_2

    .line 972
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 973
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v7, "DialerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception caught while creating local tone generator: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v7, 0x0

    sput-object v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_3

    .line 977
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 1000
    .restart local v3       #isAddCall:Z
    .restart local v5       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    invoke-direct {p0, v11}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    goto :goto_4

    :cond_7
    move v6, v11

    .line 1014
    goto :goto_5
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 384
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1427
    const v5, 0x7f060078

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1428
    .local v2, mKeypad:Landroid/widget/LinearLayout;
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->r:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v7

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getRight()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1430
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const v6, 0xff00

    and-int/2addr v5, v6

    div-int/lit16 v3, v5, 0xff

    .line 1431
    .local v3, mPointerID:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1447
    .local v1, mCounter:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_4

    .line 1449
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_2

    .line 1450
    if-ge v0, v1, :cond_1

    .line 1451
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v0

    .line 1452
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v0

    .line 1453
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aget v6, v6, v0

    sget-object v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aget v7, v7, v0

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResouceID(II)I

    move-result v6

    aput v6, v5, v0

    .line 1449
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_1
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    .line 1456
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    .line 1457
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    goto :goto_1

    .line 1460
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->eventHandlingForDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1506
    .end local v0           #i:I
    :cond_3
    :goto_2
    const/4 v5, 0x0

    return v5

    .line 1462
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    .line 1464
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    const/4 v5, 0x5

    if-ge v0, v5, :cond_8

    .line 1465
    const/4 v5, 0x1

    sub-int v5, v1, v5

    if-ge v0, v5, :cond_7

    .line 1466
    if-ge v0, v3, :cond_6

    .line 1467
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v0

    .line 1468
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v0

    .line 1473
    :goto_4
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aget v6, v6, v0

    sget-object v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aget v7, v7, v0

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResouceID(II)I

    move-result v6

    aput v6, v5, v0

    .line 1464
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1470
    :cond_6
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v0

    .line 1471
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v0

    goto :goto_4

    .line 1475
    :cond_7
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    .line 1476
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    .line 1477
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    goto :goto_5

    .line 1480
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->eventHandlingForUp(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 1482
    .end local v0           #i:I
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 1485
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    const/4 v5, 0x5

    if-ge v0, v5, :cond_3

    .line 1486
    if-ge v0, v1, :cond_e

    .line 1487
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v0

    .line 1488
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v0

    .line 1489
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aget v5, v5, v0

    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aget v6, v6, v0

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResouceID(II)I

    move-result v4

    .line 1491
    .local v4, rID:I
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v5, v5, v0

    if-eq v5, v4, :cond_d

    .line 1492
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mTouchEventHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1493
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v5, v5, v0

    if-eqz v5, :cond_b

    .line 1494
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v5, v5, v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1495
    :cond_b
    if-eqz v4, :cond_c

    .line 1496
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1497
    :cond_c
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aput v4, v5, v0

    .line 1485
    .end local v4           #rID:I
    :cond_d
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1500
    :cond_e
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    .line 1501
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    .line 1502
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    const/4 v6, 0x0

    aput v6, v5, v0

    goto :goto_7
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 1083
    if-eqz p1, :cond_0

    .line 1092
    sget-boolean v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mWndFocusAfterResume:Z

    if-eqz v1, :cond_0

    .line 1093
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, temp:Ljava/lang/String;
    sget v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1095
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1096
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setInputNumber(Ljava/lang/String;)V

    .line 1101
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mWndFocusAfterResume:Z

    .line 1104
    .end local v0           #temp:Ljava/lang/String;
    :cond_0
    return-void

    .line 1098
    .restart local v0       #temp:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0
.end method

.method public sendAccessibilityEvent(ILjava/lang/String;Z)V
    .locals 1
    .parameter "eventType"
    .parameter "eventName"
    .parameter "passTimeUse"

    .prologue
    .line 388
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;Z)V
    .locals 3
    .parameter "event"
    .parameter "text"
    .parameter "passTimeUse"

    .prologue
    const-string v2, ""

    .line 393
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->imageNumber:I

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 396
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 398
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 399
    const-string v0, ""

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 401
    if-eqz p2, :cond_5

    .line 402
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->imageNumber:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->imageNumber:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->imageNumber:I

    const/4 v2, 0x7

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :goto_1
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 410
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 403
    :cond_1
    const-string v0, "17"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 404
    :cond_2
    const-string v0, "18"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const-string v1, "#"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 405
    :cond_3
    const-string v0, "67"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const-string v1, "Delete"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 406
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 407
    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected setFormattedDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const-string v10, "--"

    const-string v9, ""

    const-string v7, "-"

    .line 853
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 856
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, dialString:Ljava/lang/String;
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 858
    .local v1, digits:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 859
    const/4 v2, 0x0

    .line 860
    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 862
    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 863
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    :cond_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v1, v2, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 869
    .end local v2           #i:I
    :cond_1
    const-string v5, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 870
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 871
    .local v3, msize:I
    sub-int v5, v3, v8

    const-string v6, ""

    invoke-interface {v1, v5, v3, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 882
    .end local v3           #msize:I
    :cond_2
    :goto_1
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v5, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 883
    return-object v0

    .line 872
    :cond_3
    const-string v5, "-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 873
    const/4 v5, 0x0

    const-string v6, ""

    invoke-interface {v1, v5, v8, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 874
    :cond_4
    const-string v5, "--"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 875
    const-string v5, "--"

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 876
    .local v4, tt:I
    add-int/lit8 v5, v4, 0x2

    const-string v6, "-"

    invoke-interface {v1, v4, v5, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method public updateVVMNewMessageCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 716
    const v1, 0x7f06008c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    .line 718
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "count_for_vvm"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 719
    .local v0, count:I
    if-lez v0, :cond_2

    .line 720
    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    .line 721
    const/16 v0, 0x63

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :goto_0
    const-string v1, "voicemail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void

    .line 726
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
