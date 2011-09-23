.class Lcom/android/server/status/StatusBarService$7;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarService;->setupQuickPanelCallView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "StatusBar"

    .line 1579
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v6, v0

    .line 1582
    .local v6, speakerButton:Landroid/widget/Button;
    const/4 v5, 0x0

    .line 1583
    .local v5, isSpeakerOn:Z
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 1584
    .local v2, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v7, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v7, v7, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1585
    .local v1, audioManager:Landroid/media/AudioManager;
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1587
    .local v4, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 1588
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v5

    .line 1592
    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1593
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->setBluetoothAudioON(Z)V

    .line 1596
    :cond_0
    if-nez v5, :cond_2

    move v7, v10

    :goto_0
    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->turnOnSpeaker(Z)V

    .line 1600
    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1601
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/ITelephony;->setBluetoothAudioON(Z)V

    .line 1613
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v4           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    return-void

    .restart local v1       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .restart local v4       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_2
    move v7, v9

    .line 1596
    goto :goto_0

    .line 1606
    :cond_3
    const-string v7, "StatusBar"

    const-string v8, "fail to retrieve call : Unable to find ITelephony interface"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1608
    .end local v1           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v4           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 1609
    .local v3, ex:Landroid/os/RemoteException;
    const-string v7, "StatusBar"

    const-string v7, "RemoteException from getPhoneInterface()"

    invoke-static {v11, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
