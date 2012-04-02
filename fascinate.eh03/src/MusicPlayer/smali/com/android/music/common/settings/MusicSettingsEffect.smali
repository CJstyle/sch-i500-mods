.class public Lcom/android/music/common/settings/MusicSettingsEffect;
.super Landroid/app/Activity;
.source "MusicSettingsEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCheckedValue:I

.field public static final mEffectString:[I

.field private static mRadioButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwRadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private static mRadioGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

.field public static mappingMenuArray:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mKillReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingEffectToast:Landroid/widget/Toast;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 64
    const-class v0, Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsEffect;->TAG:Ljava/lang/String;

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mappingMenuArray:[I

    .line 100
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mEffectString:[I

    .line 107
    const/4 v0, 0x0

    sput v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    return-void

    .line 93
    nop

    :array_0
    .array-data 0x4
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t
    .end array-data

    .line 100
    :array_1
    .array-data 0x4
        0x5t 0x0t 0xat 0x7ft
        0x10t 0x0t 0xat 0x7ft
        0x15t 0x0t 0xat 0x7ft
        0x13t 0x0t 0xat 0x7ft
        0x14t 0x0t 0xat 0x7ft
        0x12t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mContext:Landroid/content/Context;

    .line 74
    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mSettingEffectToast:Landroid/widget/Toast;

    .line 75
    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEffect$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEffect$1;-><init>(Lcom/android/music/common/settings/MusicSettingsEffect;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mConnection:Landroid/content/ServiceConnection;

    .line 123
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEffect$2;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEffect$2;-><init>(Lcom/android/music/common/settings/MusicSettingsEffect;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEffect$3;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEffect$3;-><init>(Lcom/android/music/common/settings/MusicSettingsEffect;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mKillReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsEffect$4;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsEffect$4;-><init>(Lcom/android/music/common/settings/MusicSettingsEffect;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 448
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEffect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    return p0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mSettingEffectToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/music/common/settings/MusicSettingsEffect;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mSettingEffectToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/music/common/settings/MusicSettingsEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEffect;->setDisplayByValue()V

    return-void
.end method

.method private effectLayoutInit()V
    .locals 3

    .prologue
    .line 315
    const v1, 0x7f0c00bd

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    sput-object v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    .line 318
    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    const v1, 0x7f0c00be

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    const v1, 0x7f0c00bf

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    const v1, 0x7f0c00c0

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    const v1, 0x7f0c00c1

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    const v1, 0x7f0c00c2

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    const v1, 0x7f0c00c3

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 330
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    new-instance v2, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;

    invoke-direct {v2, p0, v0}, Lcom/android/music/common/settings/MusicSettingsEffect$SettingsMenuOnClickListener;-><init>(Lcom/android/music/common/settings/MusicSettingsEffect;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method private getCheckedValue()V
    .locals 2

    .prologue
    .line 298
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    .line 299
    sget v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mEffectString:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 300
    const/4 v0, 0x0

    sput v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    .line 302
    :cond_0
    return-void
.end method

.method private setDisplayByValue()V
    .locals 1

    .prologue
    .line 310
    sget v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    invoke-static {v0}, Lcom/android/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 311
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 312
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    iput-object p0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsEffect;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 175
    const v3, 0x7f030025

    invoke-virtual {p0, v3}, Lcom/android/music/common/settings/MusicSettingsEffect;->setContentView(I)V

    .line 178
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v3}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v3, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/music/common/settings/MusicSettingsEffect;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 190
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.music.kill.garbageActivity"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, killIntentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mKillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/music/common/settings/MusicSettingsEffect;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mAudioManager:Landroid/media/AudioManager;

    .line 198
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEffect;->effectLayoutInit()V

    .line 200
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    invoke-static {v0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindFromService(Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;)V

    .line 261
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEffect;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEffect;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mKillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsEffect;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 277
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const v1, 0x7f0a00f3

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mSettingEffectToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mSettingEffectToast:Landroid/widget/Toast;

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mSettingEffectToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsEffect;->finish()V

    .line 231
    :goto_1
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect;->mSettingEffectToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEffect;->getCheckedValue()V

    .line 227
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    sget v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->setSelected(Z)V

    .line 228
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioGroup:Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    sget-object v0, Lcom/android/music/common/settings/MusicSettingsEffect;->mRadioButtons:Ljava/util/ArrayList;

    sget v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mCheckedValue:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 230
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsEffect;->setDisplayByValue()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 256
    return-void
.end method
