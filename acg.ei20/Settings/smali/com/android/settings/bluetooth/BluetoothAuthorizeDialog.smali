.class public Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;,
        Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$LoadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAuthorizeDialog"

.field private static final V:Z

.field private static isScreenOn:Z

.field private static mContext:Landroid/content/Context;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final PAIR_SOUND_PATH:Ljava/lang/String;

.field private mAlwaysAccept:Z

.field private mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIntFltr:Landroid/content/IntentFilter;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mPopupSoundId:I

.field private mService:Ljava/lang/String;

.field private mSoundPool:Landroid/media/SoundPool;

.field private name:Ljava/lang/String;

.field private svc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlwaysAccept:Z

    .line 81
    const-string v0, "/media/audio/ui/TW_Error.ogg"

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->PAIR_SOUND_PATH:Ljava/lang/String;

    .line 296
    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mPopupSoundId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .parameter "deviceName"
    .parameter "svc"

    .prologue
    const-string v6, "BluetoothAuthorizeDialog"

    .line 175
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "createView"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 178
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    .local v1, messageView1:Landroid/widget/TextView;
    const v3, 0x7f09062f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "Ajith: getting checkbox from view and putting an onclick listener to it"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 184
    .local v0, alwaysCheckBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 185
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :goto_0
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "createView 2"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v2

    .line 192
    :cond_0
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "Ajith:alwaysCheckbox is null"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAutoReply()Z
    .locals 5

    .prologue
    .line 216
    const v2, 0x7f0b0016

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 217
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 218
    .local v1, isChecked:Z
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v1
.end method

.method private onAuthorize()V
    .locals 4

    .prologue
    .line 223
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onAuthorize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 226
    return-void
.end method

.method private onDecline()V
    .locals 4

    .prologue
    .line 244
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onDecline"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 247
    return-void
.end method

.method private quitActivity()V
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 294
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 250
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    packed-switch p2, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 253
    :pswitch_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onAuthorize()V

    goto :goto_0

    .line 263
    :pswitch_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const v8, 0x7f090635

    const/4 v6, 0x1

    const-string v7, "BluetoothAuthorizeDialog"

    .line 86
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "onCreate"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "Error: this activity may be started only with intent broadcom.android.bluetooth.intent.action.AUTHORIZE_REQUEST"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->finish()V

    .line 98
    :cond_0
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-direct {v3, p0, v10}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    .line 99
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    .line 100
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v4, "broadcom.android.bluetooth.intent.action.AUTHORIZE_CANCEL"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v4, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mIntFltr:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 112
    const-string v3, "broadcom.android.bluetooth.intent.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    .line 114
    const-string v3, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    .line 115
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    .line 116
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    .line 117
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    const v4, 0x3000000a

    const-string v5, "BluetoothAuthorizeDialog"

    invoke-virtual {v3, v4, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 123
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v6, v6, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 124
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$LoadListener;

    invoke-direct {v4, p0, v10}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$LoadListener;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media/audio/ui/TW_Error.ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, filePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v0, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mPopupSoundId:I

    .line 129
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_pbap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    const v3, 0x7f090630

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 151
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x10801ee

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 154
    const v3, 0x7f09062e

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 156
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 158
    const v3, 0x7f090643

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 159
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 160
    const v3, 0x7f090644

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 161
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->setupAlert()V

    .line 164
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->pm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    .line 165
    sget-boolean v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isScreenOn:Z

    if-nez v3, :cond_1

    .line 166
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 171
    :cond_1
    const-string v3, "BluetoothAuthorizeDialog"

    const-string v3, "onCreate 2"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 131
    .end local v2           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_opp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    const v3, 0x7f090631

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_ftp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 134
    const v3, 0x7f090632

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_dun"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    const v3, 0x7f090634

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 137
    :cond_5
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_spp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 138
    const v3, 0x7f090633

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 140
    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    :cond_7
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_mse"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 142
    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    :cond_8
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const-string v4, "service_mns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 144
    invoke-virtual {p0, v8}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0

    .line 146
    :cond_9
    const v3, 0x7f090636

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->svc:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mPopupSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 281
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 283
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 231
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 239
    :goto_0
    return v0

    .line 234
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->mService:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Ljava/lang/String;ZZ)Z

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    .line 239
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
