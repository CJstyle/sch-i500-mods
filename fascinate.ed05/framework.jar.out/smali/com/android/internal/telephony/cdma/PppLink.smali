.class final Lcom/android/internal/telephony/cdma/PppLink;
.super Lcom/android/internal/telephony/DataLink;
.source "PppLink.java"


# static fields
.field static final DOWN_ASCII_STRING:[B = null

.field static final EVENT_POLL_DATA_CONNECTION:I = 0x2

.field static final EVENT_PPP_OPERSTATE_CHANGED:I = 0x8

.field static final EVENT_PPP_PIDFILE_CHANGED:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final PATH_PPP_OPERSTATE:Ljava/lang/String; = "/sys/class/net/ppp0/operstate"

.field static final POLL_SYSFS_MILLIS:I = 0x1f4

.field static final PPP_CONNECTING_TIMEOUT:I = 0x16

.field static final PROPERTY_PPPD_EXIT_CODE:Ljava/lang/String; = "net.cdma.ppp-exit"

.field static final SERVICE_PPPD_CDMA:Ljava/lang/String; = "pppd_cdma"

.field static final UNKNOWN_ASCII_STRING:[B

.field static final UP_ASCII_STRING:[B


# instance fields
.field lastPppdExitCode:I

.field private final mCheckPPPBuffer:[B

.field private phone:Lcom/android/internal/telephony/PhoneBase;

.field ppp_connecting_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    .line 71
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    return-void

    .line 61
    nop

    :array_0
    .array-data 0x1
        0x75t
        0x70t
    .end array-data

    .line 65
    nop

    :array_1
    .array-data 0x1
        0x64t
        0x6ft
        0x77t
        0x6et
    .end array-data

    .line 71
    :array_2
    .array-data 0x1
        0x75t
        0x6et
        0x6bt
        0x6et
        0x6ft
        0x77t
        0x6et
    .end array-data
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 2
    .parameter "dc"
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataLink;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 80
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    .line 84
    iput v1, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    .line 90
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/PppLink;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 91
    return-void
.end method

.method private checkPPP()V
    .locals 10

    .prologue
    const-string v9, "pppd_cdma"

    const-string v8, ""

    const-string v7, "CDMA"

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    move v0, v4

    .line 176
    .local v0, connecting:Z
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/sys/class/net/ppp0/operstate"

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v3, file:Ljava/io/RandomAccessFile;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 178
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 182
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v5, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v5, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v4, v5, :cond_6

    .line 187
    :cond_0
    const-string v4, "CDMA"

    const-string v5, "found ppp interface. Notifying CDMA connected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_1

    .line 191
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 192
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v5, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UP:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    .line 226
    .end local v3           #file:Ljava/io/RandomAccessFile;
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 229
    const-string v4, "net.cdma.ppp-exit"

    const-string v5, ""

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, exitCode:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 234
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    .line 236
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pppd exited with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 240
    const-string v4, "pppd_cdma"

    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_3

    .line 243
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v5, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_EXITED:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 255
    :cond_3
    :goto_2
    iget v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    .line 258
    .end local v2           #exitCode:Ljava/lang/String;
    :cond_4
    return-void

    .line 173
    .end local v0           #connecting:Z
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    .line 195
    .restart local v0       #connecting:Z
    .restart local v3       #file:Ljava/io/RandomAccessFile;
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v5, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 199
    const-string v4, "CDMA"

    const-string v5, "ppp interface went down."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 206
    .end local v3           #file:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 207
    .local v1, ex:Ljava/io/IOException;
    instance-of v4, v1, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_7

    .line 208
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Poll ppp0 ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v5, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_DOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 214
    const-string v4, "CDMA"

    const-string v4, "ppplink process IOException handle"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    goto/16 :goto_1

    .line 246
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v2       #exitCode:Ljava/lang/String;
    :cond_8
    iget v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_3

    .line 248
    const-string v4, "CDMA"

    const-string v4, "***** pppd abnormal state, stop the pppd *****"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 250
    const-string v4, "pppd_cdma"

    invoke-static {v9}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_3

    .line 252
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v5, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_EXITED:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public connect()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 99
    const-string v1, "net.cdma.ppp-exit"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "pppd_cdma"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 101
    const-string v1, "pppd"

    const-string v2, "Start PPPD Now"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v1, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/PppLink;->removeMessages(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, poll:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 106
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/internal/telephony/DataLink$PppState;->DISCONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 111
    const-string v0, "pppd_cdma"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->removeMessages(I)V

    .line 95
    return-void
.end method

.method public getLastLinkExitCode()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/DataLink$PppState;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->state:Lcom/android/internal/telephony/DataLink$PppState;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 149
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 153
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/PppLink;->checkPPP()V

    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/PppLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/PppLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 158
    .local v1, poll:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 159
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/PppLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_2

    .line 160
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1           #poll:Landroid/os/Message;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 165
    .local v0, ex:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_POLL_DATA_CONNECTION DataConnectionTracker already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ppp status not updated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/PppLink;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #poll:Landroid/os/Message;
    :cond_2
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 302
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PppLink] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public setPasswordInfo(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const-string v4, " "

    const-string v7, "Error closing \'/etc/ppp/pap-secrets\'"

    const-string v6, "CDMA"

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 123
    .local v2, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/etc/ppp/pap-secrets"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v2           #output:Ljava/io/FileOutputStream;
    .local v3, output:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    :cond_0
    const-string/jumbo v4, "user"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v4, "server"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v4, "password"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 140
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_0
    move-object v2, v3

    .line 145
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    return-void

    .line 136
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 137
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "CDMA"

    const-string v5, "Could not create \'/etc/ppp/pap-secrets\'"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 141
    :catch_1
    move-exception v1

    .line 142
    const-string v4, "CDMA"

    const-string v4, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 140
    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 139
    :cond_4
    :goto_4
    throw v4

    .line 141
    :catch_2
    move-exception v1

    .line 142
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "CDMA"

    const-string v5, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 141
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 142
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "CDMA"

    const-string v4, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 139
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 136
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public setPppConnectionOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "name"
    .parameter "server"
    .parameter "password"
    .parameter "pppAuth"

    .prologue
    const-string v5, "net.cdma.pppd.authtype"

    const-string v10, "net.cdma.datalinkinterface"

    const-string v9, "/dev/ttyCDMA0"

    const-string v8, ""

    const-string v7, "net.cdma.pppd.password"

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v1, options_builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 265
    .local v3, output:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 267
    .local v2, options_output:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    if-ne p4, v4, :cond_1

    .line 268
    const-string v4, "net.cdma.pppd.authtype"

    const-string v4, "require-pap"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v4, "net.cdma.datalinkinterface"

    const-string v4, "/dev/ttyCDMA0"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 272
    const-string v4, "net.cdma.pppd.password"

    const-string v4, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string v4, "net.cdma.pppd.password"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_1
    const/4 v4, 0x2

    if-ne p4, v4, :cond_3

    .line 276
    const-string v4, "net.cdma.pppd.authtype"

    const-string v4, "require-chap"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "net.cdma.datalinkinterface"

    const-string v4, "/dev/ttyCDMA0"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 280
    const-string v4, "net.cdma.pppd.password"

    const-string v4, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    const-string v4, "net.cdma.pppd.password"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_3
    const/4 v4, 0x3

    if-ne p4, v4, :cond_5

    .line 285
    const-string v4, "net.cdma.pppd.authtype"

    const-string v4, "require-eap"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v4, "net.cdma.datalinkinterface"

    const-string v4, "/dev/ttyCDMA0"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 289
    const-string v4, "net.cdma.pppd.password"

    const-string v4, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_4
    const-string v4, "net.cdma.pppd.password"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :cond_5
    const-string v4, "net.cdma.pppd.authtype"

    const-string v4, "noauth"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v4, "net.cdma.pppd.user"

    const-string v5, ""

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v4, "net.cdma.pppd.password"

    const-string v4, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v4, "net.cdma.datalinkinterface"

    const-string v4, "/dev/ttyCDMA0"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setState(Lcom/android/internal/telephony/DataLink$PppState;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->log(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    .line 308
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/PppLink;->state:Lcom/android/internal/telephony/DataLink$PppState;

    .line 309
    return-void
.end method
