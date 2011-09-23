.class public Lcom/android/internal/telephony/cdma/CdmaDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "CdmaDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaDataConnection$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final PS_NET_DOWN_REASON_AUTH_FAILED:I = 0x1d

.field private static final PS_NET_DOWN_REASON_OPERATOR_DETERMINED_BARRING:I = 0x8

.field private static final PS_NET_DOWN_REASON_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PS_NET_DOWN_REASON_OPTION_UNSUBSCRIBED:I = 0x21


# instance fields
.field protected dataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

.field dataLink:Lcom/android/internal/telephony/DataLink;

.field private dcTracker:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)V
    .locals 0
    .parameter "phone"
    .parameter "name"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static makeDataConnection(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 3
    .parameter "dataConnectionTracker"
    .parameter "phone"

    .prologue
    .line 71
    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCountLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount:I

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaDataConnection-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)V

    .line 75
    .local v0, cdmaDc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->setdataLink(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 76
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->start()V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 78
    return-object v0

    .line 73
    .end local v0           #cdmaDc:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setdataLink(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 5
    .parameter "dataConnectionTracker"
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 82
    const-string v1, "CDMA"

    const-string v2, "CdmaDataConnection : setdataLink()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    .line 85
    new-instance v1, Lcom/android/internal/telephony/cdma/PppLink;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/cdma/PppLink;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/DataLink;->setOnLinkChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dcTracker:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    .line 90
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 91
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "DataConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    return-void
.end method


# virtual methods
.method protected getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1
    .parameter "rilCause"

    .prologue
    .line 153
    sparse-switch p1, :sswitch_data_0

    .line 167
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 169
    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :goto_0
    return-object v0

    .line 155
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 156
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 158
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 159
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 161
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 162
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 164
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 165
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x1d -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
    .end sparse-switch
.end method

.method protected isDnsOk([Ljava/lang/String;)Z
    .locals 4
    .parameter "domainNameServers"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "0.0.0.0"

    .line 174
    const-string v0, "0.0.0.0"

    aget-object v0, p1, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0"

    aget-object v0, p1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 179
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 185
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method protected onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
    .locals 9
    .parameter "cp"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    const-string v0, "CdmaDataConnection Connecting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 106
    iput-wide v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->createTime:J

    .line 107
    iput-wide v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailTime:J

    .line 108
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 109
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 111
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "dun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "CdmaDataConnection using DUN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 114
    const/4 v8, 0x1

    .line 120
    .local v8, dataProfile:I
    :goto_0
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 121
    .local v7, msg:Landroid/os/Message;
    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 126
    const-string v0, "onConnect() mWakeLock.acquire"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 128
    return-void

    .line 116
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #dataProfile:I
    :cond_0
    const/4 v8, 0x0

    .restart local v8       #dataProfile:I
    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CdmaDataConnection Disconnecting..., state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$State;

    if-ne v0, v1, :cond_2

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataLink;->disconnect()V

    .line 141
    :cond_2
    return-void
.end method

.method protected onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    .locals 13
    .parameter "linkState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "ril.cdma.ppp.down"

    const-string v12, "0"

    const-string v11, ""

    .line 189
    const/4 v5, 0x0

    .line 191
    .local v5, result:Lcom/android/internal/telephony/DataConnection$LinkStateResult;
    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaDataConnection$1;->$SwitchMap$com$android$internal$telephony$DataLinkInterface$LinkState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 247
    :goto_0
    return-object v5

    .line 193
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    if-eqz v6, :cond_2

    .line 194
    const-string v6, "net.cdma.ppp.interface"

    const-string v7, "ppp0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "remote-ip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "remote-ip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->gatewayAddress:Ljava/lang/String;

    .line 199
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 200
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "local-ip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ipAddress:Ljava/lang/String;

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ipAddress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gateway="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DNS1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DNS2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v6, v6, v9

    const-string v7, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v6, v6, v10

    const-string v7, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDnsCheckDisabled()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ipAddress:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 210
    :cond_1
    const v6, 0xc3b4

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 211
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataLink;->disconnect()V

    .line 212
    const-string v6, "NULL DNS Server!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 215
    sget-object v5, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 216
    goto/16 :goto_0

    .line 219
    .end local v4           #prefix:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 222
    const-string v6, "ril.cdma.ppp.up"

    const-string v7, "0"

    invoke-static {v6, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, pppUp:I
    const-string v6, "ril.cdma.ppp.up"

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v5, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Up:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 225
    goto/16 :goto_0

    .line 228
    .end local v3           #pppUp:I
    :pswitch_1
    const-string v6, "onLinkStateChanged() LINK_DOWN"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 229
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dcTracker:Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    const/16 v7, 0x22

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 230
    .local v0, msg:Landroid/os/Message;
    iput v10, v0, Landroid/os/Message;->arg1:I

    .line 231
    const-string v6, "PPP Down"

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    const-string v6, "ril.cdma.ppp.down"

    const-string v6, "0"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 234
    .local v1, pppDown:I
    const-string v6, "ril.cdma.ppp.down"

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v5, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Down:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    .line 237
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #pppDown:I
    :pswitch_2
    const-string v6, "onLinkStateChanged() LINK_EXITED"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 238
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->cid:I

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->ModemHangup(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onDisconnect()V

    .line 241
    sget-object v6, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 242
    const-string v6, "ril.cdma.ppp.exit"

    const-string v7, "0"

    invoke-static {v6, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 243
    .local v2, pppExit:I
    const-string v6, "ril.cdma.ppp.down"

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v5, Lcom/android/internal/telephony/DataConnection$LinkStateResult;->LINK_Exited:Lcom/android/internal/telephony/DataConnection$LinkStateResult;

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "net.cdma.datalinkinterface"

    .line 258
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 259
    .local v4, response:[Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 261
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataConnection Init failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 264
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v6, v7, :cond_0

    .line 267
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .line 268
    .local v5, result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v6, v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 269
    sget-object v6, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 324
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DataConnection setup result=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' on cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->cid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 325
    return-object v5

    .line 271
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto :goto_0

    .line 273
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_1
    iget v6, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mTag:I

    if-eq v6, v7, :cond_2

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BUG: onSetupConnectionCompleted is stale cp.tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mtag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->mTag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 277
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto :goto_0

    .line 283
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    if-eqz v6, :cond_4

    .line 284
    array-length v6, v4

    if-le v6, v9, :cond_3

    .line 285
    aget-object v2, v4, v9

    .line 286
    .local v2, dataLinkInterfaceName:Ljava/lang/String;
    const-string v6, "net.cdma.datalinkinterface"

    invoke-static {v11, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dataLinkInterfaceName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "net.cdma.datalinkinterface"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 291
    .end local v2           #dataLinkInterfaceName:Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING_PPP:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 292
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataLink;->connect()V

    .line 293
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .line 295
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_4
    array-length v6, v4

    if-lt v6, v8, :cond_7

    .line 296
    aget-object v6, v4, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->cid:I

    .line 297
    aget-object v6, v4, v9

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    .line 298
    array-length v6, v4

    if-le v6, v8, :cond_6

    .line 299
    aget-object v6, v4, v8

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ipAddress:Ljava/lang/String;

    .line 300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "net."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, prefix:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "gw"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->gatewayAddress:Ljava/lang/String;

    .line 302
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 303
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dns2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 305
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "interface="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ipAddress="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gateway="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DNS1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " DNS2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 310
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 311
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .line 313
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .line 316
    .end local v3           #prefix:Ljava/lang/String;
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .line 319
    .end local v5           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v5       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFasilCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
