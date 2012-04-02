.class public Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.super Landroid/app/Activity;
.source "DialerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
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

.field mAddedCount:I

.field mAfterText:Ljava/lang/CharSequence;

.field mBeforeText:Ljava/lang/CharSequence;

.field private mDialSoundId:I

.field private mDialSoundLock:Ljava/lang/Object;

.field private mDialer:Landroid/view/View;

.field private mDialerHandler:Landroid/os/Handler;

.field mDialerRunnerble:Ljava/lang/Runnable;

.field private mDialpadChooser:Landroid/widget/ListView;

.field private mDialpadChooserAdapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

.field mFromIndex:I

.field private final mIconChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAddCallMode:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiveHandler:Landroid/os/Handler;

.field mRemovedCount:I

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

    .line 2602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    .line 2630
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

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$IconChangedReceiver;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIconChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    .line 269
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    .line 278
    iput v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->imageNumber:I

    .line 281
    const-string v0, "DialerFile.sp"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PREFS_NAME:Ljava/lang/String;

    .line 282
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSp:Landroid/content/SharedPreferences;

    .line 345
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->needToShowDialpadChooser:Z

    .line 352
    iput v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mFromIndex:I

    .line 353
    iput v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddedCount:I

    .line 354
    iput v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mRemovedCount:I

    .line 355
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mBeforeText:Ljava/lang/CharSequence;

    .line 356
    iput-object v2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAfterText:Ljava/lang/CharSequence;

    .line 359
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerHandler:Landroid/os/Handler;

    .line 1281
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$3;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerRunnerble:Ljava/lang/Runnable;

    .line 2263
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundLock:Ljava/lang/Object;

    .line 2266
    const-string v0, "/media/audio/ui/TW_Waterdrop.ogg"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->DIALKEY_SOUND_PATH:Ljava/lang/String;

    .line 2267
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->NUM_DIALKEY_SOUND_STREAMS:I

    .line 4164
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mReceiveHandler:Landroid/os/Handler;

    .line 4368
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

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_PHONE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-object p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mReceiveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;Ljava/lang/String;I)V
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

.method static synthetic access$2800()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2900()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->condition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listCreateSimple(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_flag:Z

    return v0
.end method

.method static synthetic access$3202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput-boolean p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_flag:Z

    return p0
.end method

.method static synthetic access$3300()I
    .locals 1

    .prologue
    .line 149
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    return v0
.end method

.method static synthetic access$3302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 149
    sput p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    return p0
.end method

.method static synthetic access$3400()I
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
    .locals 9
    .parameter
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "+"

    const-string v7, "*"

    const-string v6, "#"

    .line 2725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2728
    sub-int v2, v1, v5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2730
    if-eqz p1, :cond_c

    .line 2731
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2733
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2887
    :cond_0
    :goto_1
    :pswitch_0
    return-object v0

    .line 2735
    :pswitch_1
    if-ne v1, v5, :cond_1

    .line 2736
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2737
    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v1, v4

    .line 2740
    :goto_2
    if-ge v1, v3, :cond_0

    .line 2741
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2742
    const-string v2, "a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
    const-string v2, "b"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2744
    const-string v2, "c"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2749
    :pswitch_2
    if-ne v1, v5, :cond_2

    .line 2750
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2751
    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2752
    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v4

    .line 2754
    :goto_3
    if-ge v1, v3, :cond_0

    .line 2755
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2756
    const-string v2, "d"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2757
    const-string v2, "e"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2758
    const-string v2, "f"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2754
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2763
    :pswitch_3
    if-ne v1, v5, :cond_3

    .line 2764
    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2765
    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2766
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    move v1, v4

    .line 2768
    :goto_4
    if-ge v1, v3, :cond_0

    .line 2769
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2770
    const-string v2, "g"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2771
    const-string v2, "h"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2772
    const-string v2, "i"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2768
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2777
    :pswitch_4
    if-ne v1, v5, :cond_4

    .line 2778
    const-string v1, "j"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2779
    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2780
    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    move v1, v4

    .line 2782
    :goto_5
    if-ge v1, v3, :cond_0

    .line 2783
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2784
    const-string v2, "j"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    const-string v2, "k"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2786
    const-string v2, "l"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2782
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2791
    :pswitch_5
    if-ne v1, v5, :cond_5

    .line 2792
    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    move v1, v4

    .line 2796
    :goto_6
    if-ge v1, v3, :cond_0

    .line 2797
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2798
    const-string v2, "m"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2799
    const-string v2, "n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    const-string v2, "o"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2796
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2805
    :pswitch_6
    if-ne v1, v5, :cond_6

    .line 2806
    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2807
    const-string v1, "q"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2808
    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2809
    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    move v1, v4

    .line 2811
    :goto_7
    if-ge v1, v3, :cond_0

    .line 2812
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2813
    const-string v2, "p"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    const-string v2, "q"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2815
    const-string v2, "r"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2816
    const-string v2, "s"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2811
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2821
    :pswitch_7
    if-ne v1, v5, :cond_7

    .line 2822
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2823
    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2824
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move v1, v4

    .line 2826
    :goto_8
    if-ge v1, v3, :cond_0

    .line 2827
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2828
    const-string v2, "t"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2829
    const-string v2, "u"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2830
    const-string v2, "v"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2826
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2835
    :pswitch_8
    if-ne v1, v5, :cond_8

    .line 2836
    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2837
    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2838
    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2839
    const-string v1, "z"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    move v1, v4

    .line 2841
    :goto_9
    if-ge v1, v3, :cond_0

    .line 2842
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2843
    const-string v2, "w"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    const-string v2, "x"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2845
    const-string v2, "y"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2846
    const-string v2, "z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2841
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2851
    :pswitch_9
    if-ne v1, v5, :cond_9

    .line 2852
    const-string v1, "#"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    move v1, v4

    .line 2854
    :goto_a
    if-ge v1, v3, :cond_0

    .line 2855
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2854
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2860
    :pswitch_a
    if-ne v1, v5, :cond_a

    .line 2861
    const-string v1, "*"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    move v1, v4

    .line 2863
    :goto_b
    if-ge v1, v3, :cond_0

    .line 2864
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {p0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2863
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2869
    :pswitch_b
    if-ne v1, v5, :cond_b

    .line 2870
    const-string v1, "+"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    move v1, v4

    .line 2872
    :goto_c
    if-ge v1, v3, :cond_0

    .line 2873
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    move v3, v4

    goto/16 :goto_0

    .line 2733
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
    .line 2172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2174
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2175
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 2177
    return-void
.end method

.method private callVoicemail()V
    .locals 5

    .prologue
    .line 2163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "voicemail"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2165
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2166
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2167
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 2169
    return-void
.end method

.method private checkHapticEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2087
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

    .line 2578
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getSelectionStart()I

    move-result v0

    .line 2579
    .local v0, anchor:I
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    .line 2581
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2582
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2584
    .local v4, selectionEnd:I
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2585
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2586
    if-ne v5, v4, :cond_1

    .line 2587
    if-nez v5, :cond_0

    .line 2600
    :goto_0
    return-void

    .line 2591
    :cond_0
    const-string v6, ""

    invoke-interface {v1, v8, v5, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2593
    :cond_1
    const-string v6, ""

    invoke-interface {v1, v5, v4, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 2597
    :cond_2
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v2

    .line 2598
    .local v2, len:I
    const-string v6, ""

    invoke-interface {v1, v8, v2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private dailogBuildcreate()V
    .locals 4

    .prologue
    .line 2604
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listCreate(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    .line 2605
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2628
    :goto_0
    return-void

    .line 2608
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2609
    new-instance v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;

    const v2, 0x7f030009

    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$SearchListAdapter;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 2610
    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$4;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2624
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 2625
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2626
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    .line 2627
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private dialpadChooserVisible()Z
    .locals 1

    .prologue
    .line 4531
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
    .locals 4
    .parameter

    .prologue
    .line 2891
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

    .line 2911
    :cond_0
    :goto_0
    return-void

    .line 2895
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2901
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    if-eqz v0, :cond_0

    .line 2902
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2904
    :try_start_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2905
    :catch_0
    move-exception v0

    .line 2906
    const-string v1, "DialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "digitsSetText.setSelection : IndexOutOfBoundsException during setSelection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private eventHandlingForDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1581
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    .line 1582
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1583
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    .line 1584
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1585
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 1586
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1584
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1588
    :cond_1
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playSoundViberateUi(Landroid/view/View;I)V

    .line 1589
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1590
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1591
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1592
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1593
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mTouchEventHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sget v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->LONGPRESS_TIMEOUT:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1595
    :cond_2
    return-void
.end method

.method private eventHandlingForUp(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1598
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    .line 1599
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 1600
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 1601
    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResouceID(II)I

    move-result v0

    .line 1603
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mTouchEventHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1604
    if-eqz v0, :cond_0

    .line 1605
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 1606
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1681
    :cond_1
    :goto_0
    :pswitch_0
    sput-boolean v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    .line 1682
    return-void

    .line 1608
    :pswitch_1
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1609
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1613
    :pswitch_2
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1614
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1618
    :pswitch_3
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1619
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1623
    :pswitch_4
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1624
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1628
    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1629
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1633
    :pswitch_6
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1634
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1638
    :pswitch_7
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1639
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1643
    :pswitch_8
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1644
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1648
    :pswitch_9
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1649
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1653
    :pswitch_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1655
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_0

    .line 1657
    :cond_2
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1658
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto/16 :goto_0

    .line 1669
    :pswitch_b
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLongpressed:Z

    if-nez v0, :cond_1

    .line 1670
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto/16 :goto_0

    .line 1675
    :pswitch_c
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto/16 :goto_0

    .line 1606
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
    .parameter
    .parameter

    .prologue
    .line 1953
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1954
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1956
    if-ltz p2, :cond_2

    div-int/lit8 v2, v0, 0x4

    if-ge p2, v2, :cond_2

    .line 1957
    if-ltz p1, :cond_0

    div-int/lit8 v0, v1, 0x3

    if-ge p1, v0, :cond_0

    .line 1958
    const v0, 0x7f06007a

    .line 1990
    :goto_0
    return v0

    .line 1959
    :cond_0
    div-int/lit8 v0, v1, 0x3

    if-lt p1, v0, :cond_1

    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_1

    .line 1960
    const v0, 0x7f06007b

    goto :goto_0

    .line 1961
    :cond_1
    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_b

    if-ge p1, v1, :cond_b

    .line 1962
    const v0, 0x7f06007c

    goto :goto_0

    .line 1965
    :cond_2
    div-int/lit8 v2, v0, 0x4

    if-lt p2, v2, :cond_5

    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x4

    if-ge p2, v2, :cond_5

    .line 1966
    if-ltz p1, :cond_3

    div-int/lit8 v0, v1, 0x3

    if-ge p1, v0, :cond_3

    .line 1967
    const v0, 0x7f06007e

    goto :goto_0

    .line 1968
    :cond_3
    div-int/lit8 v0, v1, 0x3

    if-lt p1, v0, :cond_4

    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_4

    .line 1969
    const v0, 0x7f06007f

    goto :goto_0

    .line 1970
    :cond_4
    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_b

    if-ge p1, v1, :cond_b

    .line 1971
    const v0, 0x7f060080

    goto :goto_0

    .line 1973
    :cond_5
    mul-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x4

    if-lt p2, v2, :cond_8

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge p2, v2, :cond_8

    .line 1974
    if-ltz p1, :cond_6

    div-int/lit8 v0, v1, 0x3

    if-ge p1, v0, :cond_6

    .line 1975
    const v0, 0x7f060082

    goto :goto_0

    .line 1976
    :cond_6
    div-int/lit8 v0, v1, 0x3

    if-lt p1, v0, :cond_7

    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_7

    .line 1977
    const v0, 0x7f060083

    goto :goto_0

    .line 1978
    :cond_7
    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_b

    if-ge p1, v1, :cond_b

    .line 1979
    const v0, 0x7f060084

    goto :goto_0

    .line 1981
    :cond_8
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    if-lt p2, v2, :cond_b

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x4

    if-ge p2, v0, :cond_b

    .line 1982
    if-ltz p1, :cond_9

    div-int/lit8 v0, v1, 0x3

    if-ge p1, v0, :cond_9

    .line 1983
    const v0, 0x7f060086

    goto/16 :goto_0

    .line 1984
    :cond_9
    div-int/lit8 v0, v1, 0x3

    if-lt p1, v0, :cond_a

    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    if-ge p1, v0, :cond_a

    .line 1985
    const v0, 0x7f060087

    goto/16 :goto_0

    .line 1986
    :cond_a
    mul-int/lit8 v0, v1, 0x2

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_b

    if-ge p1, v1, :cond_b

    .line 1987
    const v0, 0x7f060088

    goto/16 :goto_0

    .line 1990
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getSpeedDialNumber(JZ)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2105
    const-string v6, ""

    .line 2106
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2107
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

    move-result-object v0

    .line 2109
    if-eqz v0, :cond_2

    .line 2110
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2111
    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2118
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 2127
    :goto_1
    return-object v0

    .line 2113
    :cond_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 2114
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 2115
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    move-object v1, v6

    goto :goto_0

    .line 2120
    :cond_2
    if-nez p3, :cond_3

    .line 2121
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 2122
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2123
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method private getTouchWizFont()Landroid/graphics/Typeface;
    .locals 10

    .prologue
    const-string v9, "DialerActivity"

    const-string v8, "fonts/Input_TouchWiz_2010205.ttf"

    .line 722
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "tempInput_TouchWiz_2010205.ttf"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 724
    .local v5, tempFontFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 726
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Input_TouchWiz_2010205.ttf"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 727
    .local v4, fontStream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v6, 0x2000

    invoke-direct {v1, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 728
    .local v1, buffStream:Ljava/io/BufferedInputStream;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 730
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 733
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, bRead:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 734
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 738
    .end local v0           #bRead:I
    .end local v1           #buffStream:Ljava/io/BufferedInputStream;
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v4           #fontStream:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 739
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

    .line 740
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Input_TouchWiz_2010205.ttf"

    invoke-static {v6, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 746
    .end local v2           #ex:Ljava/io/IOException;
    :goto_1
    return-object v6

    .line 736
    .restart local v0       #bRead:I
    .restart local v1       #buffStream:Ljava/io/BufferedInputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #fontStream:Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 737
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 746
    .end local v0           #bRead:I
    .end local v1           #buffStream:Ljava/io/BufferedInputStream;
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v4           #fontStream:Ljava/io/InputStream;
    :cond_1
    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_1

    .line 741
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 742
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

    .line 743
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
    .line 2439
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->checkHapticEnable()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrateOn:Z

    .line 2440
    return-void
.end method

.method private static final isNonSeparator(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 2915
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
    .line 4344
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
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 1463
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1464
    .local v0, event:Landroid/view/KeyEvent;
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1471
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    .line 1472
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->testMode(ILjava/lang/String;)V

    .line 1474
    :cond_0
    return-void
.end method

.method private listCreate(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter
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
    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "DialerActivity"

    .line 3686
    sput v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3688
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3693
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3698
    :goto_0
    if-nez v1, :cond_0

    .line 3747
    :goto_1
    return-object v0

    .line 3694
    :catch_0
    move-exception v2

    move v2, v5

    .line 3695
    goto :goto_0

    .line 3702
    :cond_0
    if-ne v1, v6, :cond_1

    .line 3705
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 3706
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3707
    sput v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 3710
    :cond_1
    sget v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 3713
    :pswitch_0
    if-gt v2, v6, :cond_2

    if-ge v2, v7, :cond_3

    .line 3715
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3718
    :cond_3
    if-eq v1, v6, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    .line 3719
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3728
    :cond_5
    :goto_2
    const-string v1, "DialerActivity"

    const-string v1, "resultFromTouch"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3722
    :cond_6
    if-eq v2, v7, :cond_5

    .line 3724
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3725
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3726
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 3734
    :pswitch_1
    if-gt v2, v6, :cond_7

    if-ge v2, v7, :cond_8

    .line 3736
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3739
    :cond_8
    const/4 v3, 0x3

    if-lt v1, v3, :cond_9

    if-eq v2, v7, :cond_9

    .line 3741
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3742
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3744
    :cond_9
    const-string v1, "DialerActivity"

    const-string v1, "resultFromIntent,Prefix"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3710
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
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3310
    .line 3311
    sput v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3316
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3322
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v7

    .line 3391
    :goto_1
    return-object v0

    .line 3317
    :catch_0
    move-exception v1

    move v1, v5

    .line 3319
    goto :goto_0

    .line 3327
    :cond_0
    if-ne v0, v4, :cond_1

    .line 3329
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3330
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3331
    sput v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 3334
    :cond_1
    sget v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    packed-switch v2, :pswitch_data_0

    move-object v0, v7

    .line 3390
    :goto_2
    const-string v1, "DialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<++++++++++>List create stop : count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3337
    :pswitch_0
    if-gt v1, v4, :cond_2

    if-ge v1, v6, :cond_d

    .line 3339
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    .line 3342
    :goto_3
    if-eq v0, v4, :cond_3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 3344
    :cond_3
    if-nez v2, :cond_4

    .line 3345
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v0

    goto :goto_2

    .line 3348
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-object v0, v2

    goto :goto_2

    .line 3354
    :cond_5
    if-eq v1, v6, :cond_b

    .line 3355
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v0

    .line 3356
    if-nez v0, :cond_7

    .line 3357
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v0

    .line 3358
    if-nez v0, :cond_6

    .line 3359
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v0

    goto :goto_2

    .line 3361
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    goto :goto_2

    .line 3364
    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    .line 3365
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    goto :goto_2

    .line 3373
    :pswitch_1
    if-gt v1, v4, :cond_8

    if-ge v1, v6, :cond_c

    .line 3375
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    .line 3378
    :goto_4
    if-ne v0, v4, :cond_9

    move-object v0, v2

    goto :goto_2

    .line 3379
    :cond_9
    const/4 v3, 0x3

    if-lt v0, v3, :cond_b

    if-eq v1, v6, :cond_b

    .line 3381
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v0

    .line 3382
    if-nez v0, :cond_a

    .line 3383
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v0

    goto :goto_2

    .line 3385
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    goto :goto_2

    :cond_b
    move-object v0, v2

    goto :goto_2

    :cond_c
    move-object v2, v7

    goto :goto_4

    :cond_d
    move-object v2, v7

    goto :goto_3

    .line 3334
    nop

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2270
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2271
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2274
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSoundPool:Landroid/media/SoundPool;

    .line 2276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/TW_Waterdrop.ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2277
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundId:I

    .line 2279
    iget v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundId:I

    if-gtz v1, :cond_1

    .line 2280
    const-string v1, "DialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Soundpool could not load file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_1
    return-void
.end method

.method private loadLastDialedNumber()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-string v8, "number"

    const-string v7, "DialerActivity"

    .line 4540
    .line 4543
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

    move-result-object v0

    .line 4550
    :goto_0
    if-nez v0, :cond_0

    .line 4551
    const-string v0, "DialerActivity"

    const-string v0, "CallLog is empty"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    :goto_1
    return-void

    .line 4546
    :catch_0
    move-exception v0

    .line 4547
    const-string v1, "DialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLastDialedNumber(): Exception during quering CallLog database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    .line 4554
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4556
    :cond_1
    const-string v1, "number"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitsSetText(Ljava/lang/String;)V

    .line 4558
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4560
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2985
    .line 2988
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2991
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2992
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 2993
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 2997
    :goto_0
    if-eqz v0, :cond_0

    .line 2998
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3001
    :cond_0
    return-object v1

    .line 2997
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 2998
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 2997
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    :cond_2
    move-object v1, v6

    goto :goto_0
.end method

.method private static makeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v3, -0x1

    const-string v7, ")"

    const-string v6, "("

    const-string v5, " "

    const-string v4, ""

    .line 2936
    move-object v0, p0

    .line 2938
    :goto_0
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 2939
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2941
    :cond_0
    :goto_1
    const-string v1, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2942
    const-string v1, " "

    const-string v1, ""

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2944
    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 2945
    const-string v1, ")"

    const-string v1, ""

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2947
    :cond_2
    :goto_3
    const-string v1, "("

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 2948
    const-string v1, "("

    const-string v1, ""

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2950
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mannerModeSet()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2074
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2075
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 2076
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 2078
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setRingerMode(ZZ)V

    .line 2079
    const v0, 0x7f09004d

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2084
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 2075
    goto :goto_0

    .line 2081
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setRingerMode(ZZ)V

    .line 2082
    const v0, 0x7f09004e

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private phoneIsCdma()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2389
    .line 2391
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2392
    if-eqz v0, :cond_1

    .line 2393
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2398
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 2393
    goto :goto_0

    .line 2395
    :catch_0
    move-exception v0

    .line 2396
    const-string v1, "DialerActivity"

    const-string v2, "phone.getActivePhoneType() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2375
    .line 2377
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 2378
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2382
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 2378
    goto :goto_0

    .line 2379
    :catch_0
    move-exception v0

    .line 2380
    const-string v1, "DialerActivity"

    const-string v2, "phone.isIdle() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private phoneIsOffhook()Z
    .locals 4

    .prologue
    .line 2405
    const/4 v0, 0x0

    .line 2407
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2408
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2412
    :cond_0
    :goto_0
    return v0

    .line 2409
    :catch_0
    move-exception v1

    .line 2410
    const-string v2, "DialerActivity"

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private placeCall_result()V
    .locals 7

    .prologue
    const/16 v3, 0x31

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2192
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2193
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2194
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsOffhook()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2195
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    .line 2198
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2199
    const-string v0, "DialerActivity"

    const-string v1, "placeCall_result(), call voice mail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 2203
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2204
    int-to-long v1, v1

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    .line 2205
    const-string v2, ""

    if-eq v1, v2, :cond_2

    move-object v0, v1

    .line 2212
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2214
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2216
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsOffhook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2219
    const-string v0, "com.android.phone.extra.SEND_EMPTY_FLASH"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v6

    .line 2225
    :goto_1
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2226
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2227
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 2228
    if-nez v0, :cond_0

    goto :goto_0

    .line 2240
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->loadLastDialedNumber()V

    goto :goto_0

    :cond_5
    move v0, v5

    goto :goto_1
.end method

.method private placeCall_result(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 2180
    const-string v0, ""

    if-ne p1, v0, :cond_0

    .line 2189
    :goto_0
    return-void

    .line 2182
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2184
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2185
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2187
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method private placeVideoCall()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v6, "DialerActivity"

    .line 2133
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2134
    const-string v0, "DialerActivity"

    const-string v0, "In placeVideoCall method"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 2138
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2139
    int-to-long v1, v1

    invoke-direct {p0, v1, v2, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v1

    .line 2140
    const-string v2, ""

    if-eq v1, v2, :cond_0

    move-object v0, v1

    .line 2144
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2147
    const-string v0, "videocall"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2148
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2149
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2150
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 2152
    const-string v0, "DialerActivity"

    const-string v0, "Out placeVideoCall method"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_1
    :goto_0
    return-void

    .line 2154
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 2155
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2156
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private playDialkeySound()V
    .locals 2

    .prologue
    .line 2291
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 2321
    :cond_0
    :goto_0
    return-void

    .line 2300
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 2301
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2303
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2304
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2309
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundId:I

    if-lez v0, :cond_0

    .line 2310
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2319
    :try_start_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private playSoundViberateUi(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "tcase"

    .prologue
    const/4 v1, 0x1

    .line 1771
    if-nez p2, :cond_0

    .line 1829
    :goto_0
    return-void

    .line 1773
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1775
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1778
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1780
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1784
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1788
    :pswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1792
    :pswitch_4
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1796
    :pswitch_5
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1800
    :pswitch_6
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1804
    :pswitch_7
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1808
    :pswitch_8
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1812
    :pswitch_9
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1816
    :pswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1820
    :pswitch_b
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1824
    :pswitch_c
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->playTone(I)V

    goto :goto_0

    .line 1778
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
    .locals 4
    .parameter

    .prologue
    .line 2336
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDTMFToneEnabled:Z

    if-nez v0, :cond_1

    .line 2368
    :cond_0
    :goto_0
    return-void

    .line 2345
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 2346
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 2347
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2352
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2353
    :try_start_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    .line 2354
    const-string v1, "DialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    monitor-exit v0

    goto :goto_0

    .line 2367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2366
    :cond_2
    :try_start_1
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x96

    invoke-virtual {v1, p1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 2367
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private resolveIntent()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "DialerActivity"

    .line 828
    .line 832
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 834
    const-string v1, "ignore-state"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move v6, v1

    move-object v1, v0

    .line 845
    :goto_0
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 846
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 847
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 848
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->needToShowDialpadChooser:Z

    .line 850
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIsAddCallMode:Z

    .line 852
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->canMakeCall()Z

    move-result v0

    .line 855
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 856
    const-string v4, "android.intent.action.DIAL"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 860
    :cond_0
    const-string v0, "FromPhone"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 861
    if-ne v0, v7, :cond_2

    .line 863
    const-string v0, "DialerActivity"

    const-string v0, "Dial intent from Phone(DM)"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 914
    :goto_1
    return v0

    .line 836
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v1, v0

    move v6, v8

    goto :goto_0

    .line 869
    :cond_2
    const-string v0, "add_call_mode"

    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIsAddCallMode:Z

    .line 870
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 872
    if-eqz v0, :cond_3

    .line 873
    sput v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 874
    const-string v2, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 876
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 878
    const-string v1, "DialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> Set Number String:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 881
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 882
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitsSetText(Ljava/lang/String;)V

    .line 912
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->needToShowDialpadChooser:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    move v0, v6

    .line 914
    goto :goto_1

    .line 886
    :cond_4
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 887
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "data1"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 892
    if-eqz v0, :cond_3

    .line 893
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 895
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 896
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 897
    const-string v1, "DialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> Set Number String:222  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitsSetText(Ljava/lang/String;)V

    .line 900
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 905
    :cond_7
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 907
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 909
    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->needToShowDialpadChooser:Z

    goto :goto_2
.end method

.method private returnToInCallScreen(Z)V
    .locals 3
    .parameter

    .prologue
    .line 4513
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4514
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->showCallScreenWithDialpad(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4528
    :cond_0
    :goto_0
    return-void

    .line 4515
    :catch_0
    move-exception v0

    .line 4516
    const-string v1, "DialerActivity"

    const-string v2, "phone.showCallScreenWithDialpad() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4058
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4059
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4061
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4062
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4063
    packed-switch v3, :pswitch_data_0

    .line 4157
    :pswitch_0
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4061
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4065
    :pswitch_1
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4074
    :pswitch_2
    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4083
    :pswitch_3
    const-string v3, "3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4092
    :pswitch_4
    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4101
    :pswitch_5
    const-string v3, "5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4110
    :pswitch_6
    const-string v3, "6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4121
    :pswitch_7
    const-string v3, "7"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4130
    :pswitch_8
    const-string v3, "8"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4141
    :pswitch_9
    const-string v3, "9"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4144
    :pswitch_a
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4147
    :pswitch_b
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4150
    :pswitch_c
    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4153
    :pswitch_d
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4161
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4063
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private sendSMS()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-string v5, "sms"

    const-string v4, "android.intent.action.SENDTO"

    .line 2251
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2254
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v2, "sms"

    invoke-static {v5, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2255
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2260
    :goto_0
    return-void

    .line 2257
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v1, "sms"

    const-string v1, ""

    invoke-static {v5, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2258
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setCallView()V
    .locals 5

    .prologue
    .line 754
    const v4, 0x7f06008d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 755
    .local v0, mDialButton:Landroid/widget/ImageButton;
    const v4, 0x7f06008e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 756
    .local v2, mVideoDialButton:Landroid/widget/ImageButton;
    const v4, 0x7f06008f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 758
    .local v1, mMessageButton:Landroid/widget/ImageButton;
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    if-eqz v2, :cond_0

    .line 768
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 771
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 772
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 776
    const v4, 0x7f06008b

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 777
    .local v3, voiceMailButton:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 778
    return-void
.end method

.method private setInputNumber(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 2955
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    .line 2956
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_flag:Z

    .line 2957
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2958
    .local v1, mNumber:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->message_counter:I

    if-ge v0, v2, :cond_1

    .line 2959
    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_0

    .line 2976
    aget-char v2, v1, v0

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    aget-char v2, v1, v0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 2977
    aget-char v2, v1, v0

    const/16 v3, 0x29

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    .line 2958
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2961
    :sswitch_0
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2964
    :sswitch_1
    const/16 v2, 0x37

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2967
    :sswitch_2
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2970
    :sswitch_3
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2973
    :sswitch_4
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto :goto_1

    .line 2981
    :cond_1
    return-void

    .line 2959
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
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v7, 0x1

    const-string v9, "prefix_number"

    .line 974
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefix_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 975
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "prefix_number"

    aput-object v9, v2, v7

    const/4 v0, 0x2

    const-string v1, "prefix_checked"

    aput-object v1, v2, v0

    .line 980
    const-string v6, ""

    .line 982
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/prefix_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "prefix_checked=\'1\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 986
    if-eqz v0, :cond_1

    .line 987
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 989
    :cond_0
    const-string v1, "prefix_number"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 990
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 992
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 993
    sput v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 994
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 995
    sput-boolean v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 996
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitsSetText(Ljava/lang/String;)V

    .line 999
    :cond_1
    return-void

    :cond_2
    move-object v1, v6

    goto :goto_0
.end method

.method private setRingerMode(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2091
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 2093
    if-eqz p1, :cond_1

    .line 2094
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2102
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 2094
    goto :goto_0

    .line 2097
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 2098
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
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3931
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 3932
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 3933
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getPhotoID()I

    move-result v0

    .line 3934
    invoke-virtual {p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getType()I

    move-result v2

    .line 3949
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f06006b

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 3951
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 3952
    invoke-virtual {v6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 3955
    if-eqz v0, :cond_0

    .line 3956
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3957
    int-to-long v7, v0

    invoke-direct {p0, v7, v8, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->loadPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3958
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3963
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4053
    :goto_1
    const v0, 0x7f060074

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4054
    return-void

    .line 3960
    :cond_0
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f02009a

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3966
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3968
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3969
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3970
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3971
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3972
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3973
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3985
    :pswitch_1
    invoke-direct {p0, v1, p2, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->revert2Number(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3987
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3988
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3989
    if-lez v2, :cond_5

    .line 3991
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3992
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3996
    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3999
    const v2, 0x7f06006c

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4000
    const v2, 0x7f06006d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    add-int v2, v0, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4001
    const v2, 0x7f06006e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4009
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.contacts/contacts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4010
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4012
    if-eqz v0, :cond_4

    .line 4013
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4014
    const-string v1, "data1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4015
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 4017
    :goto_6
    const v1, 0x7f060070

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4018
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4019
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3996
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 4003
    :catch_0
    move-exception v0

    .line 4004
    const-string v0, "DialerActivity"

    const-string v1, "Substring index out of range"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4023
    :pswitch_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4024
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4025
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4032
    :goto_7
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4033
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4034
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4036
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4037
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4038
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    add-int v0, v3, v4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 4028
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4029
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 4041
    :pswitch_3
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4044
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4046
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4047
    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4048
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    add-int v0, v3, v4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    move-object v1, v6

    goto/16 :goto_5

    :cond_4
    move-object v0, v6

    goto/16 :goto_6

    :cond_5
    move v0, v2

    goto/16 :goto_2

    .line 3963
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSearchView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    .line 667
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    .line 668
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setByPassInputType(Z)V

    .line 669
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 670
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 672
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 673
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getTouchWizFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 676
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    new-array v2, v3, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 699
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 700
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 701
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setScaledDensity(F)V

    .line 703
    const v1, 0x7f060067

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 704
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 706
    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    .line 707
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 710
    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    const v1, 0x7f060073

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    const v1, 0x7f060066

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    .line 714
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 716
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 717
    return-void
.end method

.method private setupDialpad()V
    .locals 1

    .prologue
    .line 659
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialer:Landroid/view/View;

    .line 660
    const v0, 0x7f060090

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    .line 661
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 662
    return-void
.end method

.method private setupKeypad()V
    .locals 1

    .prologue
    .line 750
    const v0, 0x7f060078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 751
    return-void
.end method

.method private showDialpadChooser(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4349
    const v0, 0x7f060077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4350
    if-eqz p1, :cond_2

    .line 4351
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4352
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4353
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4357
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooserAdapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

    if-nez v0, :cond_1

    .line 4358
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooserAdapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

    .line 4359
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooserAdapter:Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4366
    :cond_1
    :goto_0
    return-void

    .line 4362
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4363
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4364
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialpadChooser:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private smartSearch_Log(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter
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
    const/16 v5, 0x22

    const/4 v8, 0x0

    const-string v9, "number"

    const-string v7, ","

    const-string v3, "%"

    .line 3637
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3639
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    if-nez v0, :cond_0

    move-object v0, v6

    .line 3682
    :goto_0
    return-object v0

    .line 3642
    :cond_0
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3644
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 3648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3649
    const-string v0, "replace"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3650
    const/16 v0, 0x28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3651
    const-string v0, "number"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3652
    const-string v0, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3654
    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3656
    const-string v0, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3657
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3658
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3659
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3661
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v5, "contactid"

    const-string v7, " = 0 and "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3663
    if-nez v7, :cond_1

    .line 3664
    sput-boolean v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    move-object v0, v6

    .line 3665
    goto :goto_0

    .line 3668
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3670
    :cond_2
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, ""

    const-string v1, "number"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3675
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3676
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3680
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 3682
    goto/16 :goto_0

    .line 3678
    :cond_3
    sput-boolean v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    goto :goto_1
.end method

.method private smartSearch_Log_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 10
    .parameter

    .prologue
    const/16 v5, 0x22

    const/4 v8, 0x0

    const-string v9, "number"

    const-string v7, ","

    const-string v3, "%"

    .line 3260
    const/4 v6, 0x0

    .line 3262
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    if-nez v0, :cond_0

    move-object v0, v6

    .line 3306
    :goto_0
    return-object v0

    .line 3265
    :cond_0
    const-string v0, "content://logs/call/search_log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3267
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 3271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3272
    const-string v0, "replace"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3273
    const/16 v0, 0x28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3274
    const-string v0, "number"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3275
    const-string v0, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3276
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3277
    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3278
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3279
    const-string v0, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3280
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3281
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3282
    const/16 v0, 0x29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3284
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_LOG:[Ljava/lang/String;

    const-string v5, "contactid"

    const-string v7, " = 0 and "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ?"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "date DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3286
    if-nez v7, :cond_1

    .line 3287
    sput-boolean v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    move-object v0, v6

    .line 3288
    goto :goto_0

    .line 3291
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3292
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3294
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, ""

    const-string v1, "number"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3304
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3301
    :cond_2
    sput-boolean v8, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    move-object v0, v6

    goto :goto_1
.end method

.method private smartSearch_Name(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter
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
    .line 3434
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3435
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 3439
    if-ge v0, v9, :cond_0

    move-object v0, v8

    .line 3502
    :goto_0
    return-object v0

    .line 3443
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3445
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 3446
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3456
    :goto_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 3458
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3460
    const/4 v0, 0x0

    move v12, v0

    :goto_2
    if-ge v12, v11, :cond_1

    .line 3463
    :try_start_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, p1

    .line 3468
    :goto_3
    if-nez v6, :cond_5

    .line 3500
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3501
    const-string v0, "DialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<++++++++++>smartSearch_Name searchlist number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 3502
    goto :goto_0

    .line 3448
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v8

    .line 3449
    goto :goto_0

    .line 3450
    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v9, 0x1

    if-ge v0, v1, :cond_4

    .line 3451
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int v2, v9, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 3453
    :cond_4
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int v2, v9, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3464
    :catch_0
    move-exception v0

    .line 3465
    const-string v0, "DialerActivity"

    const-string v2, "Selection exception. Zeroing selection"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_3

    .line 3470
    :cond_5
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "%"

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3475
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "has_phone_number"

    const-string v5, " = 1 AND ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? OR "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name_alt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3479
    if-eqz v0, :cond_8

    .line 3480
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3481
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 3482
    sget v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3483
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3487
    :cond_6
    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3493
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3494
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3497
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3460
    :cond_8
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto/16 :goto_2
.end method

.method private smartSearch_Name_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 11
    .parameter

    .prologue
    .line 3044
    const/4 v2, 0x0

    .line 3045
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3046
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 3047
    if-ge v0, v8, :cond_0

    move-object v0, v2

    .line 3097
    :goto_0
    return-object v0

    .line 3051
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3053
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 3054
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3064
    :goto_1
    const-string v0, "content://com.android.contacts/contacts/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3066
    const/4 v0, 0x0

    move v10, v0

    move-object v6, v2

    :goto_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 3067
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3068
    if-nez p1, :cond_5

    .line 3095
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    .line 3097
    goto :goto_0

    .line 3056
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 3057
    goto :goto_0

    .line 3058
    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v8, 0x1

    if-ge v0, v1, :cond_4

    .line 3059
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v3, 0x1

    sub-int v3, v8, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 3061
    :cond_4
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    const/4 v3, 0x1

    sub-int v3, v8, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->addArray(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3070
    :cond_5
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 3074
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_NAME:[Ljava/lang/String;

    const-string v3, "has_phone_number"

    const-string v5, " = 1 AND ("

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? OR "

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name_alt"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, " LIKE ? )"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3078
    if-eqz v0, :cond_7

    .line 3079
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3080
    sget v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3083
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3084
    if-nez v6, :cond_6

    .line 3085
    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v3, "photo_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3092
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 3066
    :goto_4
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move-object v6, v0

    goto/16 :goto_2

    :cond_6
    move-object v2, v6

    goto :goto_3

    :cond_7
    move-object v0, v6

    goto :goto_4
.end method

.method private smartSearch_Number(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter
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
    const/4 v11, 0x2

    const/16 v7, 0x22

    const/4 v9, 0x0

    const-string v12, ""

    const-string v10, "data1"

    .line 3506
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3508
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    if-nez v0, :cond_0

    move-object v0, v6

    .line 3633
    :goto_0
    return-object v0

    .line 3511
    :cond_0
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3515
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 3519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3520
    const-string v2, "data1"

    .line 3522
    const-string v2, "replace("

    .line 3524
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3525
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v9, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3529
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3530
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3531
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3532
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3533
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3534
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3537
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3538
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3539
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3540
    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3541
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3547
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3549
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3552
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3555
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3556
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3557
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3558
    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3559
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3564
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3566
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3567
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3568
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3570
    const-string v2, " LIKE ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3572
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3575
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v0, :cond_1

    .line 3576
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 3583
    :goto_1
    if-nez v7, :cond_2

    .line 3584
    sput-boolean v9, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    .line 3585
    goto/16 :goto_0

    .line 3579
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

    const-string v5, "display_name_reverse"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 3587
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3589
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3590
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    move-object v9, v0

    .line 3594
    :goto_2
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v0, :cond_3

    .line 3595
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3609
    :goto_3
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3611
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v8

    move-object v1, v9

    .line 3627
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3631
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 3633
    goto/16 :goto_0

    .line 3601
    :cond_3
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name_reverse"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 3617
    :cond_4
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3624
    :goto_6
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3625
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 3622
    :cond_5
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3629
    :cond_6
    sput-boolean v9, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    goto :goto_5

    :cond_7
    move-object v8, v0

    move-object v9, v1

    goto/16 :goto_2
.end method

.method private smartSearch_Number_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 14
    .parameter

    .prologue
    const/4 v11, 0x2

    const/16 v7, 0x22

    const/4 v9, 0x0

    const-string v12, ""

    const-string v10, "data1"

    .line 3101
    const/4 v6, 0x0

    .line 3103
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    if-nez v0, :cond_0

    move-object v0, v6

    .line 3256
    :goto_0
    return-object v0

    .line 3106
    :cond_0
    const-string v0, "content://com.android.contacts/data/phones/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3110
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 3116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3118
    const-string v2, "data1"

    .line 3120
    const-string v2, "replace("

    .line 3122
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v9, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3127
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3128
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3130
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3131
    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    const-string v7, "-"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3147
    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3154
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3156
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3163
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3165
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3166
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3168
    const-string v2, " LIKE ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3172
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v0, :cond_1

    .line 3173
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT:[Ljava/lang/String;

    const-string v5, "display_name"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 3181
    :goto_1
    if-nez v7, :cond_2

    .line 3182
    sput-boolean v9, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    .line 3183
    goto/16 :goto_0

    .line 3177
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_RESULT_REVERSE:[Ljava/lang/String;

    const-string v5, "display_name_reverse"

    const-string v7, " COLLATE LOCALIZED ASC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    .line 3185
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3186
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3187
    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v1

    move-object v8, v0

    .line 3191
    :goto_2
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    if-eqz v0, :cond_3

    .line 3192
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3206
    :goto_3
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3208
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v6

    move-object v2, v8

    .line 3224
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-nez v3, :cond_7

    .line 3254
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3198
    :cond_3
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name_reverse"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data1"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 3214
    :cond_4
    sget v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3221
    :goto_6
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3222
    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto :goto_4

    .line 3219
    :cond_5
    sget v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    goto :goto_6

    .line 3228
    :cond_6
    sput-boolean v9, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    move-object v0, v6

    goto :goto_5

    :cond_7
    move-object v6, v1

    move-object v8, v2

    goto/16 :goto_2
.end method

.method private smartSearch_SpeedDial(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter
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

    const/4 v9, 0x0

    .line 3395
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3396
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3402
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3407
    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    :cond_0
    move-object v0, v6

    .line 3430
    :goto_1
    return-object v0

    .line 3403
    :catch_0
    move-exception v0

    move v0, v9

    .line 3404
    goto :goto_0

    .line 3413
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

    int-to-long v7, v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3416
    if-eqz v7, :cond_3

    .line 3417
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3418
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3419
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "number"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3424
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3426
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 3430
    goto :goto_1
.end method

.method private smartSearch_SpeedDial_S(Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 3005
    .line 3006
    const-string v0, "content://com.android.contacts/contacts/speeddial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3011
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3016
    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    :cond_0
    move-object v0, v4

    .line 3040
    :goto_1
    return-object v0

    .line 3012
    :catch_0
    move-exception v0

    move v0, v7

    .line 3013
    goto :goto_0

    .line 3023
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

    move-result-object v6

    .line 3026
    if-eqz v6, :cond_3

    .line 3027
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3028
    sget v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->count:I

    .line 3029
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    const-string v1, "photo_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "number"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3036
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    move-object v0, v4

    goto :goto_2

    :cond_3
    move-object v0, v4

    goto :goto_1
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 2920
    if-nez p0, :cond_0

    .line 2921
    const/4 v4, 0x0

    .line 2932
    :goto_0
    return-object v4

    .line 2923
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2924
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2926
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2927
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2928
    .local v0, c:C
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2929
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2926
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2932
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private subDialogBuilder(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v6, "data1"

    .line 2632
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2634
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->PROJECTION_PHONE:[Ljava/lang/String;

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2636
    if-eqz v0, :cond_3

    .line 2637
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2638
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2640
    :cond_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    const-string v2, "data1"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2641
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    const-string v2, "data1"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2644
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2646
    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 2647
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 2648
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->numberArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2

    .line 2647
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2650
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2651
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->listResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$5;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2661
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 2662
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2663
    :cond_5
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    .line 2664
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2665
    return-void
.end method

.method private testMode(ILjava/lang/String;)V
    .locals 1
    .parameter "keyPressValue"
    .parameter "code"

    .prologue
    .line 4338
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleTestMode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4339
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 4341
    :cond_0
    return-void
.end method

.method private updateDialString(Ljava/lang/String;)V
    .locals 8
    .parameter "newDigits"

    .prologue
    .line 2550
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getSelectionStart()I

    move-result v0

    .line 2551
    .local v0, anchor:I
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getSelectionEnd()I

    move-result v3

    .line 2553
    .local v3, point:I
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2554
    .local v5, selectionStart:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2556
    .local v4, selectionEnd:I
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2557
    .local v1, digits:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2558
    if-ne v5, v4, :cond_0

    .line 2561
    invoke-interface {v1, v5, v5, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2571
    :goto_0
    return-void

    .line 2563
    :cond_0
    invoke-interface {v1, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2565
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    .line 2568
    :cond_1
    sget-object v6, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v2

    .line 2569
    .local v2, len:I
    invoke-interface {v1, v2, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private declared-synchronized vibrate()V
    .locals 3

    .prologue
    .line 2419
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrateOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2432
    :goto_0
    monitor-exit p0

    return-void

    .line 2422
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 2423
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrator:Landroid/os/Vibrator;

    .line 2428
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11
    .parameter "input"

    .prologue
    const/16 v6, 0x3e8

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, ""

    .line 451
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, temp:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 454
    .local v2, mTextSize:I
    iput-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->digitText:Ljava/lang/String;

    .line 457
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setBackgroundResource(I)V

    .line 458
    if-nez v2, :cond_1

    .line 459
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddBtn:Landroid/widget/Button;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 461
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setCursorVisible(Z)V

    .line 463
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    if-le v2, v6, :cond_2

    .line 472
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 492
    :cond_2
    const-string v5, "ril.IMSI"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, imsi:Ljava/lang/String;
    const-string v5, "15"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "999999999999999"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 495
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.provider.Telephony.SECRET_CODE"

    const-string v6, "android_secret_code://$$15"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 496
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 497
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    const-string v6, ""

    invoke-virtual {v5, v10}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 502
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    if-le v2, v8, :cond_4

    const/4 v5, 0x5

    if-ge v2, v5, :cond_4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 503
    const/4 v5, 0x2

    sput v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 505
    :cond_4
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-static {p0, v4, v5}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 507
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    const-string v6, ""

    invoke-virtual {v5, v10}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 512
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v5, :cond_6

    .line 513
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 514
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v5, :cond_7

    .line 515
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 517
    :cond_7
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    if-eqz v5, :cond_8

    .line 518
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 519
    .local v3, msg:Landroid/os/Message;
    const/16 v5, 0x11

    iput v5, v3, Landroid/os/Message;->what:I

    .line 520
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 523
    .end local v3           #msg:Landroid/os/Message;
    :cond_8
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setFormattedDigits(Ljava/lang/String;)Ljava/lang/String;

    .line 527
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAfterText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mBeforeText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAfterText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 529
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAfterText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v8, :cond_9

    .line 531
    iput v7, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mFromIndex:I

    .line 532
    iput v8, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddedCount:I

    .line 552
    :goto_1
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 554
    const-string v5, "DIALER APP"

    const-string v6, "Accessibility enabled, Sending event"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mBeforeText:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mFromIndex:I

    iget v7, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mRemovedCount:I

    iget v8, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddedCount:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_0

    .line 534
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAfterText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mBeforeText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_a

    .line 536
    iput v8, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddedCount:I

    .line 537
    iput v7, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mRemovedCount:I

    .line 538
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAfterText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v8

    iput v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mFromIndex:I

    goto :goto_1

    .line 540
    :cond_a
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAfterText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mBeforeText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 542
    iput v7, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddedCount:I

    .line 543
    iput v8, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mRemovedCount:I

    .line 544
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mBeforeText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v8

    iput v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mFromIndex:I

    goto :goto_1

    .line 548
    :cond_b
    iput v7, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAddedCount:I

    .line 549
    iput v7, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mRemovedCount:I

    .line 550
    iput v7, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mFromIndex:I

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 383
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mBeforeText:Ljava/lang/CharSequence;

    .line 384
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v6, 0x1

    const-string v10, "DialerActivity"

    .line 1292
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1293
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 1298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1300
    if-nez v1, :cond_6

    .line 1304
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 1306
    if-ne v0, v7, :cond_0

    .line 1308
    const-string v0, "DialerActivity"

    const-string v0, "!!!!Voice command Intent!!!!!!"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1313
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v6

    .line 1372
    :goto_1
    return v0

    .line 1319
    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1322
    const-string v0, "DialerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "long key detected, call voice mail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    move v0, v6

    .line 1325
    goto :goto_1

    .line 1328
    :cond_1
    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    .line 1330
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getKeyNum(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSpeedDialNumber(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeCall_result(Ljava/lang/String;)V

    move v0, v6

    .line 1331
    goto :goto_1

    .line 1333
    :cond_2
    if-ne v0, v8, :cond_3

    .line 1335
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    move v0, v6

    .line 1336
    goto :goto_1

    .line 1338
    :cond_3
    if-ne v0, v9, :cond_7

    .line 1340
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mannerModeSet()V

    move v0, v6

    .line 1341
    goto :goto_1

    .line 1351
    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1353
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->finish()V

    move v0, v6

    .line 1354
    goto :goto_1

    .line 1356
    :cond_5
    if-lt v0, v8, :cond_7

    if-gt v0, v9, :cond_7

    .line 1358
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    move v0, v6

    .line 1359
    goto :goto_1

    .line 1365
    :cond_6
    if-ne v0, v7, :cond_7

    .line 1367
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerRunnerble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v0, v6

    .line 1368
    goto :goto_1

    .line 1372
    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1314
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getContentViewResource()I
    .locals 1

    .prologue
    .line 824
    const v0, 0x7f030008

    return v0
.end method

.method public getKeyNum(I)J
    .locals 3
    .parameter "eventCode"

    .prologue
    .line 1237
    packed-switch p1, :pswitch_data_0

    .line 1273
    :pswitch_0
    const/16 v0, 0xff

    .line 1276
    .local v0, keyNum:I
    :goto_0
    int-to-long v1, v0

    return-wide v1

    .line 1240
    .end local v0           #keyNum:I
    :pswitch_1
    const/4 v0, 0x0

    .line 1241
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1243
    .end local v0           #keyNum:I
    :pswitch_2
    const/4 v0, 0x1

    .line 1244
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1246
    .end local v0           #keyNum:I
    :pswitch_3
    const/4 v0, 0x2

    .line 1247
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1249
    .end local v0           #keyNum:I
    :pswitch_4
    const/4 v0, 0x3

    .line 1250
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1252
    .end local v0           #keyNum:I
    :pswitch_5
    const/4 v0, 0x4

    .line 1253
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1255
    .end local v0           #keyNum:I
    :pswitch_6
    const/4 v0, 0x5

    .line 1256
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1258
    .end local v0           #keyNum:I
    :pswitch_7
    const/4 v0, 0x6

    .line 1259
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1261
    .end local v0           #keyNum:I
    :pswitch_8
    const/4 v0, 0x7

    .line 1262
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1264
    .end local v0           #keyNum:I
    :pswitch_9
    const/16 v0, 0x8

    .line 1265
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1267
    .end local v0           #keyNum:I
    :pswitch_a
    const/16 v0, 0x9

    .line 1268
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1270
    .end local v0           #keyNum:I
    :pswitch_b
    const/16 v0, 0xa

    .line 1271
    .restart local v0       #keyNum:I
    goto :goto_0

    .line 1237
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
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2668
    packed-switch p1, :pswitch_data_0

    .line 2679
    :cond_0
    :goto_0
    return-void

    .line 2670
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2671
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2672
    sput v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 2673
    sput-boolean v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 2674
    sput-boolean v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 2675
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2676
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    .line 2668
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1994
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2052
    :goto_0
    return-void

    .line 1996
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 1997
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialog(I)V

    goto :goto_0

    .line 2001
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 2002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f060071

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f060072

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2005
    sput v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 2006
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 2007
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 2008
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2009
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setSelection(I)V

    goto :goto_0

    .line 2013
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 2014
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dailogBuildcreate()V

    goto :goto_0

    .line 2018
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 2020
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialer/SpecialCharSequenceMgr;->handleDSACode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2021
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeCall_result()V

    goto/16 :goto_0

    .line 2023
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->finish()V

    goto/16 :goto_0

    .line 2027
    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 2028
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeVideoCall()V

    goto/16 :goto_0

    .line 2032
    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vibrate()V

    .line 2033
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 2034
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 2035
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->keyPressed(I)V

    goto/16 :goto_0

    .line 2039
    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendSMS()V

    goto/16 :goto_0

    .line 2043
    :sswitch_7
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2044
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setCursorVisible(Z)V

    .line 2046
    :cond_1
    sput v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    goto/16 :goto_0

    .line 2049
    :sswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    goto/16 :goto_0

    .line 1994
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

    .line 572
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 580
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentViewResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setContentView(I)V

    .line 582
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setSearchView()V

    .line 583
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setupKeypad()V

    .line 584
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setCallView()V

    .line 585
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setupDialpad()V

    .line 587
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 588
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 590
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->condition:Landroid/os/ConditionVariable;

    .line 592
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resolveIntent()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 593
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 596
    :cond_0
    new-instance v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$keyHandler;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$1;)V

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mTouchEventHandler:Landroid/os/Handler;

    .line 598
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->argsName:Ljava/util/ArrayList;

    .line 602
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 603
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "Intent.action.RECEIVE_VVM_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIconChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 622
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2447
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 2449
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2450
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setCursorVisible(Z)V

    .line 2453
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2454
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2686
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    .line 2687
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 2721
    :goto_0
    return-object v0

    .line 2689
    :pswitch_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

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

    .line 2691
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$6;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 2687
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2462
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2464
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090050

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2466
    const v1, 0x7f090018

    invoke-interface {p1, v6, v4, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200d6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2468
    const v1, 0x7f09004b

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2470
    const v1, 0x7f09001a

    invoke-interface {p1, v5, v7, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200e0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2472
    invoke-interface {p1, v7, v8, v7, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2474
    const/4 v0, 0x5

    const v1, 0x7f090051

    invoke-interface {p1, v8, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2477
    return v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1227
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1229
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mIconChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1231
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const-string v3, "DialerActivity"

    .line 4464
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;

    .line 4466
    iget v0, v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$DialpadChooserAdapter$ChoiceItem;->id:I

    .line 4467
    packed-switch v0, :pswitch_data_0

    .line 4501
    const-string v1, "DialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick: unexpected itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    :cond_0
    :goto_0
    return-void

    .line 4472
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 4479
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->returnToInCallScreen(Z)V

    goto :goto_0

    .line 4486
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    .line 4490
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4492
    if-eqz v0, :cond_0

    .line 4493
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->sendThreeWayCallFlashCode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4495
    :catch_0
    move-exception v0

    .line 4496
    const-string v1, "DialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ITelephony.endCall() threw RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4467
    nop

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

    .line 1477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1494
    :cond_0
    :goto_0
    return v2

    .line 1481
    :pswitch_0
    const/4 v0, 0x6

    if-le p2, v0, :cond_1

    const/16 v0, 0x11

    if-lt p2, v0, :cond_2

    :cond_1
    const/16 v0, 0x43

    if-ne p2, v0, :cond_0

    .line 1482
    :cond_2
    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendAccessibilityEvent(ILjava/lang/String;Z)V

    goto :goto_0

    .line 1477
    nop

    :pswitch_data_0
    .packed-switch 0x7f060065
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1378
    packed-switch p1, :pswitch_data_0

    .line 1410
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1380
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1381
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1383
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1384
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1386
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    move v0, v4

    .line 1390
    goto :goto_0

    .line 1393
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1394
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1396
    const-string v0, "DialerActivity"

    const-string v1, "long key detected, call voice mail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->callVoicemail()V

    :cond_1
    move v0, v4

    .line 1399
    goto :goto_0

    .line 1404
    :pswitch_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1387
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1378
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
    .line 1414
    packed-switch p1, :pswitch_data_0

    .line 1459
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1417
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

    .line 1435
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1420
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1425
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDialerRunnerble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1426
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

    .line 1433
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->placeCall_result()V

    goto :goto_1

    .line 1455
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 1456
    const/4 v0, 0x0

    goto :goto_0

    .line 1414
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

    .line 2056
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2057
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 2070
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 2059
    :pswitch_0
    const/4 v1, 0x2

    sput v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    .line 2060
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setCursorVisible(Z)V

    move v1, v2

    .line 2061
    goto :goto_0

    .line 2064
    :pswitch_1
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 2065
    sput-boolean v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 2066
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->clearDialString()V

    move v1, v2

    .line 2067
    goto :goto_0

    .line 2057
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
    .line 954
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setIntent(Landroid/content/Intent;)V

    .line 955
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resolveIntent()Z

    .line 956
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2509
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2532
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2538
    :goto_0
    return v0

    .line 2511
    :pswitch_0
    const-string v0, ","

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->updateDialString(Ljava/lang/String;)V

    move v0, v2

    .line 2512
    goto :goto_0

    .line 2515
    :pswitch_1
    const-string v0, ";"

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->updateDialString(Ljava/lang/String;)V

    move v0, v2

    .line 2516
    goto :goto_0

    .line 2519
    :pswitch_2
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialog(I)V

    move v0, v2

    .line 2520
    goto :goto_0

    .line 2523
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.contacts.action.SPEED_DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2524
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 2525
    goto :goto_0

    .line 2528
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendSMS()V

    move v0, v2

    .line 2529
    goto :goto_0

    .line 2538
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2509
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1176
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->dialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->subdialogResult:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1182
    :cond_1
    invoke-static {}, Landroid/os/Power;->getMultiTouchState()I

    move-result v0

    if-nez v0, :cond_2

    .line 1183
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Power;->setMultiTouchState(Z)I

    .line 1186
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1187
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1190
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1191
    :try_start_0
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_3

    .line 1192
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1193
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1195
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->closeOptionsMenu()V

    .line 1199
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    if-eqz v0, :cond_4

    .line 1200
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1201
    :cond_4
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    if-eqz v0, :cond_5

    .line 1202
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1206
    :cond_5
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    if-eqz v0, :cond_6

    .line 1208
    :try_start_1
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->quit()Z
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1213
    :goto_0
    sput-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    .line 1219
    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1220
    return-void

    .line 1195
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 959
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 967
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2486
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2488
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 2489
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeGroup(I)V

    .line 2496
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->VT_ENABLE:Z

    if-nez v0, :cond_1

    .line 2497
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeGroup(I)V

    .line 2500
    :cond_1
    return v3

    .line 2490
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2491
    const v0, 0x7f090018

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2493
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 970
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 971
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "phone"

    .line 1002
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1003
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->updateVVMNewMessageCount()V

    .line 1005
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setSearchView()V

    .line 1008
    :try_start_0
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    const-string v1, "LooperThread"

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    .line 1009
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1016
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v5, :cond_4

    .line 1017
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setInputType(I)V

    .line 1023
    :goto_1
    invoke-static {}, Landroid/os/Power;->getMultiTouchState()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 1024
    invoke-static {v6}, Landroid/os/Power;->setMultiTouchState(Z)I

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_5

    move v0, v5

    :goto_2
    sput-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDTMFToneEnabled:Z

    .line 1033
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_1
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 1039
    :try_start_2
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x3

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1040
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setVolumeControlStream(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1046
    :cond_1
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1049
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1052
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/sec/android/app/dialertab/DialerTabActivity;

    if-eqz v1, :cond_2

    .line 1053
    check-cast v0, Lcom/sec/android/app/dialertab/DialerTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/DialerTabActivity;->getAndClearDialUri()Landroid/net/Uri;

    move-result-object v0

    .line 1054
    if-eqz v0, :cond_2

    .line 1055
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resolveIntent()Z

    .line 1061
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1062
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1064
    const-string v0, "phone"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->canMakeCall()Z

    move-result v0

    .line 1066
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_6

    .line 1067
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    .line 1073
    :goto_4
    sput-boolean v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedCtNumberBefore:Z

    .line 1074
    sput-boolean v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mSearchedLogBefore:Z

    .line 1076
    sput-boolean v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mWndFocusAfterResume:Z

    .line 1078
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->initVibrationPattern()V

    .line 1080
    const v0, 0x7f09004f

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nocall:Landroid/widget/Toast;

    .line 1081
    const v0, 0x7f09004c

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToast_nospeed:Landroid/widget/Toast;

    .line 1083
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    move v0, v5

    :goto_5
    sput-boolean v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->isReverse:Z

    .line 1085
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1086
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setPrefixNumber()V

    .line 1088
    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1110
    return-void

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 1021
    :cond_4
    sget-object v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setInputType(I)V

    goto/16 :goto_1

    :cond_5
    move v0, v6

    .line 1028
    goto/16 :goto_2

    .line 1041
    :catch_1
    move-exception v1

    .line 1042
    :try_start_4
    const-string v2, "DialerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mToneGenerator:Landroid/media/ToneGenerator;

    goto/16 :goto_3

    .line 1046
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 1069
    :cond_6
    invoke-direct {p0, v6}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->showDialpadChooser(Z)V

    goto :goto_4

    :cond_7
    move v0, v6

    .line 1083
    goto :goto_5
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 393
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mAfterText:Ljava/lang/CharSequence;

    .line 394
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 1498
    const v0, 0x7f060078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1499
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->r:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1501
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    .line 1502
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 1518
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v7, :cond_4

    :cond_0
    move v0, v6

    .line 1520
    :goto_0
    if-ge v0, v7, :cond_2

    .line 1521
    if-ge v0, v1, :cond_1

    .line 1522
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 1523
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 1524
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aget v3, v3, v0

    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aget v4, v4, v0

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResouceID(II)I

    move-result v3

    aput v3, v2, v0

    .line 1520
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    :cond_1
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aput v6, v2, v0

    .line 1527
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aput v6, v2, v0

    .line 1528
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aput v6, v2, v0

    goto :goto_1

    .line 1531
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->eventHandlingForDown(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1577
    :cond_3
    :goto_2
    return v6

    .line 1533
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v8, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9

    :cond_5
    move v2, v6

    .line 1535
    :goto_3
    if-ge v2, v7, :cond_8

    .line 1536
    sub-int v3, v1, v8

    if-ge v2, v3, :cond_7

    .line 1537
    if-ge v2, v0, :cond_6

    .line 1538
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v2

    .line 1539
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v2

    .line 1544
    :goto_4
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    sget-object v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aget v4, v4, v2

    sget-object v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aget v5, v5, v2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResouceID(II)I

    move-result v4

    aput v4, v3, v2

    .line 1535
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1541
    :cond_6
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v2

    .line 1542
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v2

    goto :goto_4

    .line 1546
    :cond_7
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aput v6, v3, v2

    .line 1547
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aput v6, v3, v2

    .line 1548
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aput v6, v3, v2

    goto :goto_5

    .line 1551
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->eventHandlingForUp(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 1553
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_3

    :cond_a
    move v0, v6

    .line 1556
    :goto_6
    if-ge v0, v7, :cond_3

    .line 1557
    if-ge v0, v1, :cond_e

    .line 1558
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 1559
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 1560
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aget v2, v2, v0

    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getResouceID(II)I

    move-result v2

    .line 1562
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v3, v3, v0

    if-eq v3, v2, :cond_d

    .line 1563
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mTouchEventHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1564
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v3, v3, v0

    if-eqz v3, :cond_b

    .line 1565
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1566
    :cond_b
    if-eqz v2, :cond_c

    .line 1567
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    .line 1568
    :cond_c
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aput v2, v3, v0

    .line 1556
    :cond_d
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1571
    :cond_e
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_x:[I

    aput v6, v2, v0

    .line 1572
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_y:[I

    aput v6, v2, v0

    .line 1573
    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->previous_id:[I

    aput v6, v2, v0

    goto :goto_7
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 1152
    if-eqz p1, :cond_0

    .line 1161
    sget-boolean v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mWndFocusAfterResume:Z

    if-eqz v1, :cond_0

    .line 1162
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, temp:Ljava/lang/String;
    sget v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->resultFlag:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 1165
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setInputNumber(Ljava/lang/String;)V

    .line 1170
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mWndFocusAfterResume:Z

    .line 1173
    .end local v0           #temp:Ljava/lang/String;
    :cond_0
    return-void

    .line 1167
    .restart local v0       #temp:Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
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
    .line 418
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;Z)V

    .line 420
    :cond_0
    return-void
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    const-string v3, "DIALER APP"

    .line 399
    const-string v1, "DIALER APP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAccessibilityEventTypeViewTextChanged, fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "beforeText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "removedCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "addedCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 402
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 404
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 405
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 407
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 408
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 409
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    const-string v1, "DIALER APP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.getText() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 414
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;Z)V
    .locals 3
    .parameter "event"
    .parameter "text"
    .parameter "passTimeUse"

    .prologue
    const-string v2, ""

    .line 423
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->imageNumber:I

    .line 425
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 426
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 428
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 429
    const-string v0, ""

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 431
    if-eqz p2, :cond_5

    .line 432
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

    .line 439
    :goto_1
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 440
    return-void

    .line 427
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

    .line 433
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

    .line 434
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

    .line 435
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

    .line 436
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 437
    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected setFormattedDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "--"

    const-string v8, ""

    const-string v5, "-"

    .line 922
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    sget-object v1, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mDigits:Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 924
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 926
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 928
    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 929
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    :cond_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 935
    :cond_1
    const-string v2, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 936
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 937
    sub-int v3, v2, v7

    const-string v4, ""

    invoke-interface {v1, v3, v2, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 950
    :cond_2
    :goto_1
    return-object v0

    .line 938
    :cond_3
    const-string v2, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 939
    const-string v2, ""

    invoke-interface {v1, v6, v7, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 940
    :cond_4
    const-string v2, "--"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 941
    const-string v2, "--"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 942
    add-int/lit8 v3, v2, 0x2

    const-string v4, "-"

    invoke-interface {v1, v2, v3, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method public updateVVMNewMessageCount()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 781
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 782
    const v1, 0x7f06008c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "count_for_vvm"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 785
    .local v0, count:I
    if-lez v0, :cond_2

    .line 786
    const/16 v1, 0x63

    if-le v0, v1, :cond_1

    .line 787
    const/16 v0, 0x63

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
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

    .line 814
    return-void

    .line 792
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->vvmInfoView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
