.class public Lcom/android/mms/transaction/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/android/mms/transaction/PushReceiver;->findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/android/mms/transaction/PushReceiver;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v0

    return v0
.end method

.method private static findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    .locals 11
    .parameter "context"
    .parameter "pdu"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x3d

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 201
    const/16 v0, 0x86

    if-ne p2, v0, :cond_0

    .line 202
    new-instance v8, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/DeliveryInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 207
    .local v8, messageId:Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v9, sb:Ljava/lang/StringBuilder;
    const-string v0, "m_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v0, "m_type"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    const/16 v0, 0x80

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 221
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 223
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 227
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 231
    :goto_1
    return-wide v0

    .line 204
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .restart local p1
    :cond_0
    new-instance v8, Ljava/lang/String;

    check-cast p1, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/ReadOrigInd;->getMessageId()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .restart local v8       #messageId:Ljava/lang/String;
    goto :goto_0

    .line 227
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    .locals 8
    .parameter "context"
    .parameter "nInd"

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    .line 237
    .local v0, rawLocation:[B
    if-eqz v0, :cond_4

    .line 238
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 240
    .local v2, location:Ljava/lang/String;
    const/4 v0, 0x0

    .line 241
    .local v0, checkTId:Ljava/lang/String;
    invoke-static {p0}, Landroid/provider/MMSDomesticHelper;->isDomesticTestMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, isSimbol:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v1

    .line 244
    .local v1, rawTransactionId:[B
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 246
    .local p1, TId:Ljava/lang/String;
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .end local v1           #rawTransactionId:[B
    move-result v1

    .line 248
    .local v1, isSimbol:I
    const-string v3, "Mms/PushReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 252
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_0
    const-string v3, "Mms/PushReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_5

    .line 257
    const-string v1, "Mms/PushReceiver"

    .end local v1           #isSimbol:I
    const-string v3, "The last char is ="

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 259
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #TId:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    .end local v2           #location:Ljava/lang/String;
    .local p1, location:Ljava/lang/String;
    :goto_0
    const-string v1, "Mms/PushReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v0

    .end local v0           #checkTId:Ljava/lang/String;
    .local v7, checkTId:Ljava/lang/String;
    move-object v0, p1

    .end local p1           #location:Ljava/lang/String;
    .local v0, location:Ljava/lang/String;
    move-object p1, v7

    .line 266
    .end local v7           #checkTId:Ljava/lang/String;
    .local p1, checkTId:Ljava/lang/String;
    :goto_1
    const-string v4, "ct_l = ?"

    .line 267
    .local v4, selection:Ljava/lang/String;
    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    .end local p1           #checkTId:Ljava/lang/String;
    const/4 p1, 0x0

    aput-object v0, v5, p1

    .line 268
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x1

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "_id"

    .end local v0           #location:Ljava/lang/String;
    aput-object v0, v3, p1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 272
    .local p0, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_4

    .line 274
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    if-lez p1, :cond_3

    .line 276
    const/4 p1, 0x1

    .line 279
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, p1

    .line 283
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local p0           #cursor:Landroid/database/Cursor;
    :goto_2
    return p0

    .line 279
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local p0       #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 283
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local p0           #cursor:Landroid/database/Cursor;
    :cond_4
    const/4 p0, 0x0

    goto :goto_2

    .line 279
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local p0       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .local v0, checkTId:Ljava/lang/String;
    .restart local v2       #location:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, TId:Ljava/lang/String;
    :cond_5
    move-object p1, v2

    .end local v2           #location:Ljava/lang/String;
    .local p1, location:Ljava/lang/String;
    goto :goto_0

    .restart local v2       #location:Ljava/lang/String;
    .local p1, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_6
    move-object p1, v0

    .end local v0           #checkTId:Ljava/lang/String;
    .local p1, checkTId:Ljava/lang/String;
    move-object v0, v2

    .end local v2           #location:Ljava/lang/String;
    .local v0, location:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "Mms/PushReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received PUSH Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 191
    .local v0, pm:Landroid/os/PowerManager;
    const-string v2, "MMS PushReceiver"

    invoke-virtual {v0, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 193
    .local v1, wl:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 194
    new-instance v2, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;-><init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V

    new-array v3, v5, [Landroid/content/Intent;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    .end local v0           #pm:Landroid/os/PowerManager;
    .end local v1           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_0
    return-void
.end method
