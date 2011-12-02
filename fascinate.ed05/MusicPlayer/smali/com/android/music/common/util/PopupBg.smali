.class public Lcom/android/music/common/util/PopupBg;
.super Landroid/app/Activity;
.source "PopupBg.java"


# static fields
.field public static final KEY_SILENT_POPUPSHOW:Ljava/lang/String; = "com.android.music.KEY_SILENT_POPUPSHOW"


# instance fields
.field final mHandler:Landroid/os/Handler;

.field mIntent:Landroid/content/Intent;

.field mMode:Ljava/lang/String;

.field private mPlayStart:Ljava/lang/Runnable;

.field mPopup:Landroid/app/AlertDialog$Builder;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/music/common/util/PopupBg;->mMode:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/music/common/util/PopupBg;->mIntent:Landroid/content/Intent;

    .line 134
    new-instance v0, Lcom/android/music/common/util/PopupBg$4;

    invoke-direct {v0, p0}, Lcom/android/music/common/util/PopupBg$4;-><init>(Lcom/android/music/common/util/PopupBg;)V

    iput-object v0, p0, Lcom/android/music/common/util/PopupBg;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/music/common/util/PopupBg;->mHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/android/music/common/util/PopupBg$5;

    invoke-direct {v0, p0}, Lcom/android/music/common/util/PopupBg$5;-><init>(Lcom/android/music/common/util/PopupBg;)V

    iput-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPlayStart:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/common/util/PopupBg;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPlayStart:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method exitPopupBg()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/music/common/util/PopupBg;->finish()V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/music/common/util/PopupBg;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 32
    const v1, 0x7f030029

    invoke-virtual {p0, v1}, Lcom/android/music/common/util/PopupBg;->setContentView(I)V

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/android/music/common/util/PopupBg;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/common/util/PopupBg;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0}, Lcom/android/music/common/util/PopupBg;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/util/PopupBg;->mIntent:Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/android/music/common/util/PopupBg;->mIntent:Landroid/content/Intent;

    const-string v2, "ringermode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/util/PopupBg;->mMode:Ljava/lang/String;

    .line 38
    sget-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->mSilentPopupShow:Z

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/music/common/util/PopupBg;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/music/common/util/PopupBg;->exitPopupBg()V

    .line 44
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/common/util/PopupBg;->mIntent:Landroid/content/Intent;

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/common/util/PopupBg;->showPopupBg()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/util/PopupBg;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 58
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 69
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/music/common/util/PopupBg;->exitPopupBg()V

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    return-void
.end method

.method showPopupBg()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "silent"

    iget-object v1, p0, Lcom/android/music/common/util/PopupBg;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPopup:Landroid/app/AlertDialog$Builder;

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPopup:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00a5

    new-instance v2, Lcom/android/music/common/util/PopupBg$1;

    invoke-direct {v2, p0}, Lcom/android/music/common/util/PopupBg$1;-><init>(Lcom/android/music/common/util/PopupBg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 102
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPopup:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00a6

    new-instance v2, Lcom/android/music/common/util/PopupBg$2;

    invoke-direct {v2, p0}, Lcom/android/music/common/util/PopupBg$2;-><init>(Lcom/android/music/common/util/PopupBg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/music/common/util/MusicPlayerUtil;->setSilentPopupShow(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPopup:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    iget-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPopup:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/music/common/util/PopupBg$3;

    invoke-direct {v1, p0}, Lcom/android/music/common/util/PopupBg$3;-><init>(Lcom/android/music/common/util/PopupBg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    :cond_0
    return-void

    .line 88
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/common/util/PopupBg;->mPopup:Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
