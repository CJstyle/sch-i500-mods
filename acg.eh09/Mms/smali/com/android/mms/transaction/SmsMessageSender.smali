.class public Lcom/android/mms/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected expiry:I

.field protected final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field protected mMessageText:Ljava/lang/String;

.field protected final mNumberOfDests:I

.field protected mServiceCenter:Ljava/lang/String;

.field protected mThreadId:J

.field protected mTimestamp:J

.field protected replyPath:Z

.field protected serviceType:I

.field protected userSelectedEncodingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->replyPath:Z

    .line 54
    const/16 v2, 0xff

    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->expiry:I

    .line 55
    iput v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->serviceType:I

    .line 70
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 74
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 75
    if-eqz p2, :cond_1

    .line 76
    array-length v2, p2

    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 77
    iget v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 84
    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 85
    iget-wide v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->userSelectedEncodingType:I

    .line 93
    const-string v2, "pref_key_sms_reply_path"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->replyPath:Z

    .line 96
    const-string v2, "pref_key_manage_smsc_address"

    const-string v3, "Not Set"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, smsc:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 98
    iput-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 101
    :cond_0
    return-void

    .line 80
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    .end local v1           #smsc:Ljava/lang/String;
    :cond_1
    iput v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 12
    .parameter "threadId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 154
    const/4 v7, 0x0

    .line 158
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 162
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 169
    :cond_0
    if-eqz v7, :cond_1

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    :cond_2
    :goto_0
    return-object v0

    .line 166
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v9, v0, :cond_4

    move v8, v9

    .line 167
    .local v8, replyPathPresent:Z
    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 169
    :goto_2
    if-eqz v7, :cond_2

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #replyPathPresent:Z
    :cond_4
    move v8, v11

    .line 166
    goto :goto_1

    .restart local v8       #replyPathPresent:Z
    :cond_5
    move-object v0, v10

    .line 167
    goto :goto_2

    .line 169
    .end local v8           #replyPathPresent:Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 170
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private queueMessage(J)Z
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v0, :cond_1

    .line 112
    :cond_0
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Null message body or dest."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    const-string v1, "pref_key_sms_delivery_reports"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move v10, v11

    .line 120
    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v10, v0, :cond_2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/queued"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    iget-wide v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.SEND_MESSAGE"

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v1, v2, v12, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    return v11
.end method


# virtual methods
.method public sendMessage(J)Z
    .locals 1
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsMessageSender;->queueMessage(J)Z

    move-result v0

    return v0
.end method
