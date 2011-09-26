.class public abstract Lcom/android/mms/transaction/Transaction;
.super Lcom/android/mms/transaction/Observable;
.source "Transaction.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mId:Ljava/lang/String;

.field private final mServiceId:I

.field protected mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

.field protected mTransactionState:Lcom/android/mms/transaction/TransactionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V
    .locals 1
    .parameter "context"
    .parameter "serviceId"
    .parameter "settings"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mms/transaction/Observable;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/android/mms/transaction/TransactionState;

    invoke-direct {v0}, Lcom/android/mms/transaction/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    .line 66
    iput p2, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    .line 67
    iput-object p3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 68
    return-void
.end method

.method private ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 10
    .parameter "url"
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const-string v9, "Cannot establish route for "

    const-string v8, ": Unknown host"

    .line 209
    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 213
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    invoke-virtual {p2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, proxyAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/transaction/Transaction;->lookupHost(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, inetAddr:I
    if-ne v1, v6, :cond_0

    .line 217
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot establish route for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Unknown host"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_0
    invoke-virtual {v0, v7, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 221
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot establish route to proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 225
    .end local v1           #inetAddr:I
    .end local v2           #proxyAddr:Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 226
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/Transaction;->lookupHost(Ljava/lang/String;)I

    move-result v1

    .line 227
    .restart local v1       #inetAddr:I
    if-ne v1, v6, :cond_2

    .line 228
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot establish route for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Unknown host"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    :cond_2
    invoke-virtual {v0, v7, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v4

    if-nez v4, :cond_3

    .line 232
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot establish route to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .locals 6
    .parameter "hostname"

    .prologue
    .line 249
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 255
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 256
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .local v0, addr:I
    move v4, v0

    .line 260
    .end local v0           #addr:I
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_0
    return v4

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object v0
.end method

.method protected getPdu(Ljava/lang/String;)[B
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 193
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const-wide/16 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    move-object v3, p1

    invoke-static/range {v0 .. v8}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    return v0
.end method

.method public getState()Lcom/android/mms/transaction/TransactionState;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isEquivalent(Lcom/android/mms/transaction/Transaction;)Z
    .locals 2
    .parameter "transaction"

    .prologue
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract process()V
.end method

.method protected sendPdu(J[B)[B
    .locals 1
    .parameter "token"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu(J[BLjava/lang/String;)[B
    .locals 9
    .parameter "token"
    .parameter "pdu"
    .parameter "mmscUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-direct {p0, p4, v0}, Lcom/android/mms/transaction/Transaction;->ensureRouteToHost(Ljava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 170
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v6

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v8

    move-wide v1, p1

    move-object v3, p4

    move-object v4, p3

    invoke-static/range {v0 .. v8}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([B)[B
    .locals 3
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([BLjava/lang/String;)[B
    .locals 2
    .parameter "pdu"
    .parameter "mmscUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
