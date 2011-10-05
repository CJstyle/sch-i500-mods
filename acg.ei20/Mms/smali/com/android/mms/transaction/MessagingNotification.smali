.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

.field private static final LOG_HISTORY_URI:Landroid/net/Uri;

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static mToastHandler:Landroid/os/Handler;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "sub_cs"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 107
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "address"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    .line 141
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 143
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    .line 164
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 85
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 85
    invoke-static/range {p0 .. p10}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    return-void
.end method

.method private static final accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .locals 1
    .parameter "set"
    .parameter "info"

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 276
    iget v0, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static acquire(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1109
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1110
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "Mms:app"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1114
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1116
    return-void
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 266
    invoke-static {p0, v0, v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 267
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 268
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 269
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0901b7

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 207
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 210
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 212
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllHistoryAsRead(Landroid/content/Context;)V

    .line 214
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v2

    .line 215
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v3

    .line 218
    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v4

    add-int/2addr v4, v8

    .line 220
    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v5

    add-int/2addr v4, v5

    .line 223
    const/16 v5, 0x7b

    invoke-static {p0, v5}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 224
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    const-string v5, "Mms:app"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isNew="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, p0, p1, v4, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    .line 232
    :cond_0
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    .line 236
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0, p0, p2}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    .line 241
    :cond_1
    if-eqz p1, :cond_2

    .line 245
    if-eqz v2, :cond_3

    .line 246
    new-array v0, v9, [Ljava/lang/Object;

    iget-object v1, v2, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    aput-object v1, v0, v8

    invoke-virtual {p0, v10, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    const-string v2, "TTS_TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    :cond_2
    return-void

    .line 248
    :cond_3
    if-eqz v3, :cond_4

    .line 249
    new-array v0, v9, [Ljava/lang/Object;

    iget-object v1, v3, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mTitle:Ljava/lang/String;

    aput-object v1, v0, v8

    invoke-virtual {p0, v10, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_4
    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 658
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 660
    invoke-static {p1, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, displayAddress:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 662
    const v4, 0x7f09015d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v4, ""

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 671
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 672
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 673
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 678
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 679
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_2
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 683
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 686
    return-object v3

    .line 664
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_3
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 495
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 498
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 499
    return-void
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 903
    const/4 v7, 0x0

    .line 904
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 906
    .local v8, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 913
    if-nez v7, :cond_1

    .line 914
    const/4 v0, 0x0

    .line 919
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 921
    :cond_0
    :goto_0
    return v0

    .line 916
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 919
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 921
    goto :goto_0

    .line 919
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static final getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 347
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 351
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 352
    const/4 p0, 0x0

    .line 391
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local p0
    :goto_0
    return-object p0

    .line 356
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .end local v1           #resolver:Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 357
    const/4 p0, 0x0

    .line 391
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 359
    .restart local p0
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 360
    .local v12, msgId:J
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 362
    .local v1, msgUri:Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, address:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v1           #msgUri:Landroid/net/Uri;
    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, subject:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 366
    .local v7, threadId:J
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v4

    .line 368
    .local v9, timeMillis:J
    const-string v1, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    const-string v1, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMmsNewMessageNotificationInfo: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", first addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_2
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 374
    .local v1, priority:I
    const/16 v4, 0x82

    if-ne v1, v4, :cond_3

    const v1, 0x7f02009a

    move v5, v1

    .line 376
    .end local v1           #priority:I
    .local v5, msg_notification_icon_id:I
    :goto_1
    const/4 v6, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v1

    .line 381
    .local v1, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #address:Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v2, "200"

    const/4 v3, 0x0

    invoke-static {p0, v12, v13, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 384
    .end local v3           #subject:Ljava/lang/String;
    .end local v5           #msg_notification_icon_id:I
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 386
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "200"

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 391
    .end local v1           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local v12           #msgId:J
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .line 374
    .local v1, priority:I
    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #subject:Ljava/lang/String;
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local v12       #msgId:J
    .restart local p0
    :cond_3
    const v1, 0x7f020098

    move v5, v1

    goto :goto_1

    .line 391
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #subject:Ljava/lang/String;
    .local v1, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object p0, v1

    goto/16 :goto_0
.end method

.method private static getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 1081
    packed-switch p1, :pswitch_data_0

    .line 1087
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1083
    :pswitch_0
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1085
    :pswitch_1
    const v0, 0x7f0900e9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1081
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 690
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 9
    .parameter "address"
    .parameter "body"
    .parameter "context"
    .parameter "iconResourceId"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "count"

    .prologue
    .line 477
    invoke-static {p2, p5, p6}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 478
    .local v1, clickIntent:Landroid/content/Intent;
    const/high16 p5, 0x3400

    invoke-virtual {v1, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    .end local p5
    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-static {p2, p0, p5, p6}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 484
    .local p5, senderInfo:Ljava/lang/String;
    const/4 p6, 0x0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p5, p6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 486
    .local v7, senderInfoName:Ljava/lang/String;
    invoke-static {p2, p0, p4, p1}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 489
    .local v4, ticker:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v2, p1

    move v3, p3

    move-wide/from16 v5, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    return-object v0
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 397
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 401
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move-object v0, v5

    .line 416
    :goto_0
    return-object v0

    .line 405
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 416
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_0

    .line 408
    :cond_1
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, address:Ljava/lang/String;
    const-wide/16 v9, 0xbb8

    .line 411
    .local v9, timeMillis:J
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v2, 0x7f0900fc

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v9, v10}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #address:Ljava/lang/String;
    .end local v9           #timeMillis:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static final getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 423
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 1 AND read = 0)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 427
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 428
    const/4 p0, 0x0

    .line 464
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local p0
    :goto_0
    return-object p0

    .line 432
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .end local v1           #resolver:Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 433
    const/4 p0, 0x0

    .line 464
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 436
    .restart local p0
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 437
    .local v12, msgId:J
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, address:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, body:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 440
    .local v7, threadId:J
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 444
    .local v9, timeMillis:J
    const-string v1, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmsNewMessageNotificationInfo: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", first addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 449
    .local v1, priority:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const v1, 0x7f02009a

    move v5, v1

    .line 451
    .end local v1           #priority:I
    .local v5, msg_notification_icon_id:I
    :goto_1
    const/4 v6, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v1

    .line 455
    .local v1, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #address:Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    const-string v2, "300"

    const/4 v3, 0x0

    invoke-static {p0, v12, v13, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 457
    .end local v3           #body:Ljava/lang/String;
    .end local v5           #msg_notification_icon_id:I
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 459
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "300"

    const/4 v5, 0x0

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 464
    .end local v1           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local v12           #msgId:J
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .line 449
    .local v1, priority:I
    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local v12       #msgId:J
    .restart local p0
    :cond_2
    const v1, 0x7f020098

    move v5, v1

    goto :goto_1

    .line 464
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .local v1, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object p0, v1

    goto/16 :goto_0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 14
    .parameter "context"
    .parameter "threadIdResult"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v13, 0x0

    .line 814
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v13

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 816
    .local v10, undeliveredCursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    move v0, v13

    .line 857
    :goto_0
    return v0

    .line 819
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 820
    .local v7, count:I
    const-wide/16 v11, 0x0

    .line 822
    .local v11, undeliveredThreadId:J
    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 823
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 824
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 825
    const/4 v0, 0x0

    aput-wide v11, p1, v0

    .line 839
    :cond_1
    :goto_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 841
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 842
    .local v8, firstId:J
    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    if-lez v7, :cond_6

    .line 843
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 844
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_5

    .line 845
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 827
    .end local v8           #firstId:J
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 828
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-lez v7, :cond_1

    .line 829
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 830
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 831
    const/4 v0, 0x0

    aput-wide v11, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 855
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 835
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 846
    .restart local v8       #firstId:J
    :cond_5
    cmp-long v0, v11, v8

    if-eqz v0, :cond_2

    .line 847
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 851
    :cond_6
    const/4 v0, 0x1

    :try_start_1
    aput-wide v8, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 855
    .end local v8           #firstId:J
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 857
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 179
    return-void
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1098
    if-eqz p0, :cond_0

    const-string v0, "undelivered_flag"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 1102
    if-eqz p0, :cond_0

    const-string v0, "failed_download_flag"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidThreadId(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 861
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "isNew"
    .parameter "isStatusMessage"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 695
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 696
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 711
    const-string v0, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 712
    if-nez v0, :cond_0

    .line 806
    :goto_0
    return-void

    .line 716
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 726
    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    .line 727
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v3

    .line 730
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 733
    const/4 v5, 0x1

    if-le v3, v5, :cond_6

    .line 734
    const p2, 0x7f0900ff

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 736
    const p3, 0x7f090100

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 738
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 761
    :goto_1
    const/high16 v3, 0x1400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 762
    const/4 v3, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v3, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 765
    const v3, 0x7f020099

    iput v3, v4, Landroid/app/Notification;->icon:I

    .line 767
    iput-object p3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 769
    invoke-virtual {v4, p0, p3, p2, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 771
    if-eqz p4, :cond_5

    .line 773
    const-string p2, "power"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 774
    const p3, 0x1000001a

    const-string p4, "New message notification LCD on"

    invoke-virtual {p2, p3, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p3

    .line 776
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 p4, 0x0

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 777
    const-wide/16 v2, 0x1388

    invoke-virtual {p3, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 780
    const-string p2, "audio"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 781
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result p3

    .line 782
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p4, "vibrate_in_silent"

    const/4 v2, 0x1

    invoke-static {p0, p4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_b

    const/4 p0, 0x1

    .line 783
    :goto_2
    invoke-virtual {p2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_c

    const/4 p2, 0x1

    .line 785
    :goto_3
    if-eqz p2, :cond_1

    if-nez p0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    const/4 p0, 0x1

    if-ne p3, p0, :cond_3

    .line 786
    :cond_2
    iget p0, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v4, Landroid/app/Notification;->defaults:I

    .line 789
    :cond_3
    const-string p0, "pref_key_ringtone"

    const/4 p2, 0x0

    invoke-interface {v1, p0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 794
    const-string p2, "file://"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 795
    const/16 p2, 0x2f

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 798
    :cond_4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 p0, 0x0

    :goto_4
    iput-object p0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 801
    :cond_5
    if-eqz p1, :cond_e

    .line 802
    const/16 p0, 0x213

    invoke-virtual {v0, p0, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 740
    :cond_6
    if-eqz p1, :cond_7

    const v5, 0x7f090113

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 744
    :goto_5
    const v6, 0x7f090115

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 745
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    if-eqz p1, :cond_8

    .line 748
    const-string v2, "failed_download_flag"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 758
    :goto_6
    const-string v2, "thread_id"

    invoke-virtual {v7, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object p2, v6

    move-object p3, v5

    move-object v2, v7

    goto/16 :goto_1

    .line 740
    :cond_7
    const v5, 0x7f090114

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 750
    :cond_8
    if-gtz v3, :cond_9

    .line 751
    const/16 p1, 0x315

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 754
    :cond_9
    const/4 p2, 0x0

    aget-wide p2, v2, p2

    const-wide/16 v8, 0x0

    cmp-long p2, p2, v8

    if-eqz p2, :cond_a

    const/4 p2, 0x0

    aget-wide p2, v2, p2

    .line 755
    :goto_7
    const-string v2, "undelivered_flag"

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    .line 754
    :cond_a
    const-wide/16 p2, 0x0

    goto :goto_7

    .line 782
    :cond_b
    const/4 p0, 0x0

    goto/16 :goto_2

    .line 783
    :cond_c
    const/4 p2, 0x0

    goto/16 :goto_3

    .line 798
    :cond_d
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_4

    .line 804
    :cond_e
    const/16 p0, 0x315

    invoke-virtual {v0, p0, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 726
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 699
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 700
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "noisy"

    .prologue
    .line 703
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 704
    return-void
.end method

.method public static setBadge(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "count"

    .prologue
    .line 1120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1124
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ConversationList"

    invoke-static {v0, v1, v2, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1125
    return-void
.end method

.method private static updateAllHistoryAsRead(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1262
    const-string v1, "logtype=? OR logtype=?"

    .line 1263
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "200"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "300"

    aput-object v4, v2, v3

    .line 1265
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1266
    const-string v4, "new"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1267
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1268
    return-void
.end method

.method public static updateClass0SoundnVibrate(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 925
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 926
    .local v4, notification:Landroid/app/Notification;
    const-string v10, "notification"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 928
    .local v3, nm:Landroid/app/NotificationManager;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 929
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v10, "pref_key_enable_notifications"

    invoke-interface {v7, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    .line 959
    :goto_0
    return-void

    .line 933
    :cond_0
    const-string v10, "power"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 934
    .local v5, pm:Landroid/os/PowerManager;
    const v10, 0x1000001a

    const-string v11, "New message notification LCD on"

    invoke-virtual {v5, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    .line 936
    .local v9, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11, v13}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 937
    const-wide/16 v10, 0x1388

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 940
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 941
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v8

    .line 942
    .local v8, vibrateSetting:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "vibrate_in_silent"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v12, :cond_5

    move v2, v12

    .line 943
    .local v2, bVibrateSilent:Z
    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_6

    move v1, v12

    .line 945
    .local v1, bNowSilent:Z
    :goto_2
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-nez v1, :cond_3

    if-ne v8, v12, :cond_3

    .line 946
    :cond_2
    iget v10, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v4, Landroid/app/Notification;->defaults:I

    .line 949
    :cond_3
    const-string v10, "pref_key_ringtone"

    invoke-interface {v7, v10, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 953
    .local v6, ringtoneStr:Ljava/lang/String;
    const-string v10, "file://"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 954
    const/16 v10, 0x2f

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 957
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v14

    :goto_3
    iput-object v10, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 958
    const/16 v10, 0x3e7

    invoke-virtual {v3, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .end local v1           #bNowSilent:Z
    .end local v2           #bVibrateSilent:Z
    .end local v6           #ringtoneStr:Ljava/lang/String;
    :cond_5
    move v2, v13

    .line 942
    goto :goto_1

    .restart local v2       #bVibrateSilent:Z
    :cond_6
    move v1, v13

    .line 943
    goto :goto_2

    .line 957
    .restart local v1       #bNowSilent:Z
    .restart local v6       #ringtoneStr:Ljava/lang/String;
    :cond_7
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_3
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 3
    .parameter "context"
    .parameter "isStatusMessage"
    .parameter "message"
    .parameter "timeMillis"

    .prologue
    .line 505
    if-nez p1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 511
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1092
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1093
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1095
    :cond_0
    return-void
.end method

.method public static updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1186
    const/4 v4, 0x6

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v7, v4

    const/4 v4, 0x1

    const-string v5, "date"

    aput-object v5, v7, v4

    const/4 v4, 0x2

    const-string v5, "msg_box"

    aput-object v5, v7, v4

    const/4 v4, 0x3

    const-string v5, "sub"

    aput-object v5, v7, v4

    const/4 v4, 0x4

    const-string v5, "sub_cs"

    aput-object v5, v7, v4

    const/4 v4, 0x5

    const-string v5, "read"

    aput-object v5, v7, v4

    .line 1194
    if-nez p1, :cond_0

    .line 1195
    const/16 p0, 0x0

    .line 1256
    :goto_0
    return p0

    .line 1198
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1199
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1200
    if-nez v4, :cond_1

    .line 1201
    const/16 p0, 0x0

    goto :goto_0

    .line 1205
    :cond_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    .line 1206
    const/16 p0, 0x0

    .line 1254
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1208
    :cond_2
    const-wide/16 v6, 0x0

    .line 1209
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1210
    const/4 v10, 0x1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    .line 1211
    const/4 v12, 0x3

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v12, v13}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 1212
    const/4 v13, 0x2

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    int-to-long v13, v13

    .line 1213
    const/4 v15, 0x5

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1219
    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    if-nez v16, :cond_3

    .line 1220
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p0

    .line 1229
    :goto_1
    if-eqz p2, :cond_8

    .line 1230
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 1233
    :goto_2
    const-string v6, "logtype=? AND ( messageid=? OR messageid=?)"

    .line 1234
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "200"

    aput-object v17, v7, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v7, v16

    const/16 v16, 0x2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v16

    .line 1236
    sget-object p1, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1240
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p1, v0

    const/16 p2, 0x0

    :goto_3
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_7

    aget-object v6, p0, p2

    .line 1241
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1243
    const-string v16, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1244
    const-string v16, "type"

    const-wide/16 v17, 0x1

    cmp-long v17, v13, v17

    if-nez v17, :cond_5

    const/16 v17, 0x1

    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    const-string v16, "number"

    move-object v0, v7

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v6, "messageid"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v0, v7

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1247
    const-string v6, "m_subject"

    invoke-virtual {v7, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v6, "new"

    if-nez v15, :cond_6

    const/16 v16, 0x1

    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    const-string v6, "content://logs/mms"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1240
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1221
    :cond_3
    const-wide/16 v16, 0x2

    cmp-long v16, v13, v16

    if-nez v16, :cond_4

    .line 1222
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    goto/16 :goto_1

    .line 1224
    :cond_4
    const/16 p0, 0x0

    .line 1254
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1244
    :cond_5
    const/16 v17, 0x2

    goto :goto_4

    .line 1248
    :cond_6
    const/16 v16, 0x0

    goto :goto_5

    .line 1254
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1256
    const/16 p0, 0x1

    goto/16 :goto_0

    .line 1254
    :catchall_0
    move-exception p0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_8
    move-wide/from16 p1, v6

    goto/16 :goto_2
.end method

.method public static updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 1129
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v3, v0

    const/4 v0, 0x3

    const-string v1, "body"

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "type"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    const-string v1, "read"

    aput-object v1, v3, v0

    .line 1137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1138
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1139
    if-nez p0, :cond_0

    .line 1140
    const/4 p0, 0x0

    .line 1181
    :goto_0
    return p0

    .line 1144
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p1

    if-nez p1, :cond_1

    .line 1145
    const/4 p1, 0x0

    .line 1179
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move p0, p1

    goto :goto_0

    .line 1148
    :cond_1
    const/4 p1, 0x0

    :try_start_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1149
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1150
    const/4 p1, 0x2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1151
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1152
    const/4 v6, 0x4

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    .line 1153
    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1155
    if-eqz v0, :cond_2

    .line 1157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x32

    if-le v9, v10, :cond_2

    .line 1158
    const/4 v9, 0x0

    const/16 v10, 0x32

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1161
    :cond_2
    const-string v9, "logtype=? AND messageid=?"

    .line 1162
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "300"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 1164
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v11, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1166
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1168
    const-string v10, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1169
    const-string v4, "type"

    const-wide/16 v10, 0x1

    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    const-string v4, "number"

    invoke-virtual {v9, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    const-string p1, "messageid"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1172
    const-string p1, "m_content"

    invoke-virtual {v9, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string p1, "new"

    if-nez v8, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1175
    const-string p1, "content://logs/sms"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1176
    if-eqz p1, :cond_3

    .line 1177
    invoke-virtual {v1, p1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1179
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1181
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 1169
    :cond_4
    const/4 v5, 0x2

    goto :goto_1

    .line 1173
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 1179
    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1273
    const-string v1, "logtype=? AND messageid=?"

    .line 1274
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p3, v2, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1276
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1277
    const-string v4, "new"

    if-eqz p4, :cond_0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1278
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1279
    return-void

    :cond_0
    move v5, v6

    .line 1277
    goto :goto_0
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 3
    .parameter "context"
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconRes"
    .parameter "isNew"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "messageCount"
    .parameter "uniqueThreadCount"

    .prologue
    .line 533
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 535
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v0, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    .end local p0
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    :goto_0
    return-void

    .line 539
    .restart local p0
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p3, p5, p6, p7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 540
    .local v0, notification:Landroid/app/Notification;
    iput-object p8, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 541
    iput p9, v0, Landroid/app/Notification;->missedCount:I

    .line 547
    const/4 p3, 0x1

    if-le p10, p3, :cond_1

    .line 548
    .end local p3
    const p1, 0x7f0900fe

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1
    move-result-object p8

    .line 549
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 551
    .restart local p1
    const/high16 p3, 0x3400

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    const-string p3, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    :cond_1
    const/4 p3, 0x1

    if-le p9, p3, :cond_2

    .line 562
    const p2, 0x7f0900fd

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p2
    const/4 p5, 0x0

    invoke-static {p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .end local p5
    move-result-object p6

    .end local p6
    aput-object p6, p3, p5

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 567
    .restart local p2
    :cond_2
    const/4 p3, 0x0

    const/high16 p5, 0x800

    invoke-static {p0, p3, p1, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 571
    .local p3, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, p0, p8, p2, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 573
    if-eqz p4, :cond_9

    .line 597
    const-string p3, "pref_key_backlight"

    .end local p3           #pendingIntent:Landroid/app/PendingIntent;
    const/4 p4, 0x1

    invoke-interface {v1, p3, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .end local p4
    move-result p3

    .line 599
    .local p3, backlight:Z
    if-eqz p3, :cond_3

    .line 601
    const-string p3, "power"

    .end local p3           #backlight:Z
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 602
    .local p3, pm:Landroid/os/PowerManager;
    const p4, 0x1000001a

    const-string p5, "New message notification LCD on"

    invoke-virtual {p3, p4, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p4

    .line 604
    .local p4, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p5

    const/4 p7, 0x0

    invoke-virtual {p3, p5, p6, p7}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 605
    const-wide/16 p5, 0x1388

    invoke-virtual {p4, p5, p6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 610
    .end local p3           #pm:Landroid/os/PowerManager;
    .end local p4           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_3
    const-string p3, "audio"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    .line 611
    .local p3, audioManager:Landroid/media/AudioManager;
    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result p6

    .line 612
    .local p6, vibrateSetting:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const-string p5, "vibrate_in_silent"

    const/4 p7, 0x1

    invoke-static {p4, p5, p7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p4

    const/4 p5, 0x1

    if-ne p4, p5, :cond_a

    const/4 p4, 0x1

    move p5, p4

    .line 613
    .local p5, bVibrateSilent:Z
    :goto_1
    invoke-virtual {p3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    .end local p3           #audioManager:Landroid/media/AudioManager;
    const/4 p4, 0x2

    if-eq p3, p4, :cond_b

    const/4 p3, 0x1

    move p4, p3

    .line 614
    .local p4, bNowSilent:Z
    :goto_2
    const-string p3, "pref_key_vibrate"

    const/4 p7, 0x0

    invoke-interface {v1, p3, p7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .line 616
    .local p3, bAlwaysvibrate:Z
    if-eqz p3, :cond_6

    if-eqz p4, :cond_4

    if-nez p5, :cond_5

    :cond_4
    if-nez p4, :cond_6

    const/4 p3, 0x1

    if-ne p6, p3, :cond_6

    .line 617
    .end local p3           #bAlwaysvibrate:Z
    :cond_5
    iget p3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 p3, p3, 0x2

    iput p3, v0, Landroid/app/Notification;->defaults:I

    .line 623
    :cond_6
    const-string p3, "pref_key_backlight"

    const/4 p4, 0x1

    invoke-interface {v1, p3, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .end local p4           #bNowSilent:Z
    move-result p3

    .line 625
    .local p3, backlight:Z
    if-eqz p3, :cond_7

    .line 626
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->acquire(Landroid/content/Context;)V

    .line 630
    :cond_7
    const-string p3, "pref_key_ringtone"

    .end local p3           #backlight:Z
    const/4 p4, 0x0

    invoke-interface {v1, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 635
    .local p3, ringtoneStr:Ljava/lang/String;
    const-string p4, "file://"

    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 636
    const/16 p4, 0x2f

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 639
    :cond_8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .end local p3           #ringtoneStr:Ljava/lang/String;
    :goto_3
    iput-object p3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 642
    .end local p5           #bVibrateSilent:Z
    .end local p6           #vibrateSetting:I
    :cond_9
    iget p3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x1

    iput p3, v0, Landroid/app/Notification;->flags:I

    .line 643
    iget p3, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 p3, p3, 0x4

    iput p3, v0, Landroid/app/Notification;->defaults:I

    .line 646
    const/4 p3, 0x0

    sget-object p4, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    const/4 p5, 0x0

    invoke-static {p0, p3, p4, p5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    iput-object p3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 649
    const-string p3, "notification"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    .line 652
    .local p0, nm:Landroid/app/NotificationManager;
    const/16 p3, 0x7b

    invoke-virtual {p0, p3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 612
    .local p0, context:Landroid/content/Context;
    .local p3, audioManager:Landroid/media/AudioManager;
    .restart local p6       #vibrateSetting:I
    :cond_a
    const/4 p4, 0x0

    move p5, p4

    goto :goto_1

    .line 613
    .end local p3           #audioManager:Landroid/media/AudioManager;
    .restart local p5       #bVibrateSilent:Z
    :cond_b
    const/4 p3, 0x0

    move p4, p3

    goto :goto_2

    .line 639
    .local p3, ringtoneStr:Ljava/lang/String;
    :cond_c
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_3
.end method

.method public static updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "status"
    .parameter "threadId"
    .parameter "address"

    .prologue
    .line 962
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 963
    .local v1, notification:Landroid/app/Notification;
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 968
    .local v0, nm:Landroid/app/NotificationManager;
    packed-switch p1, :pswitch_data_0

    .line 1050
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p5
    :cond_0
    :goto_0
    return-void

    .line 982
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p5
    :pswitch_0
    const p1, 0x7f0900f1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1
    move-result-object v2

    .line 983
    .local v2, title:Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 984
    .local p2, reportStatusText:Ljava/lang/String;
    const p1, 0x7f020097

    iput p1, v1, Landroid/app/Notification;->icon:I

    .line 990
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 993
    const-string p1, ""

    .line 995
    .local p1, displayAddress:Ljava/lang/String;
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 996
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 997
    const/4 p1, 0x1

    invoke-static {p5, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    .end local p1           #displayAddress:Ljava/lang/String;
    move-result-object p1

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1000
    .restart local p1       #displayAddress:Ljava/lang/String;
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    .end local p5
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #displayAddress:Ljava/lang/String;
    const-string p5, " : "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1002
    .local p2, description:Ljava/lang/String;
    invoke-static {p0, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object p1

    .line 1003
    .local p1, clickIntent:Landroid/content/Intent;
    const/high16 p3, 0x3400

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1007
    .end local p3
    const/4 p3, 0x0

    const/high16 p4, 0x800

    invoke-static {p0, p3, p1, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1010
    .local p1, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 1011
    .local p4, sp:Landroid/content/SharedPreferences;
    const-string p3, "pref_key_enable_notifications"

    const/4 p5, 0x1

    invoke-interface {p4, p3, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1015
    const/16 p3, 0x378

    invoke-static {p0, p3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1018
    const-string p3, "power"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 1019
    .local p3, pm:Landroid/os/PowerManager;
    const p5, 0x1000001a

    const-string v3, "New message notification LCD on"

    invoke-virtual {p3, p5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p5

    .line 1021
    .local p5, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p3, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1022
    const-wide/16 v3, 0x1388

    invoke-virtual {p5, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1024
    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1026
    invoke-virtual {v1, p0, v2, p2, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1029
    const-string p1, "audio"

    .end local p1           #pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 1030
    .local p1, audioManager:Landroid/media/AudioManager;
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    .end local p2           #description:Ljava/lang/String;
    move-result p3

    .line 1031
    .local p3, vibrateSetting:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    const-string p2, "vibrate_in_silent"

    const/4 p5, 0x1

    invoke-static {p0, p2, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .end local p5           #wl:Landroid/os/PowerManager$WakeLock;
    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    move p2, p0

    .line 1032
    .local p2, bVibrateSilent:Z
    :goto_1
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_7

    .end local p1           #audioManager:Landroid/media/AudioManager;
    const/4 p0, 0x1

    .line 1034
    .local p0, bNowSilent:Z
    :goto_2
    if-eqz p0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    if-nez p0, :cond_4

    const/4 p0, 0x1

    if-ne p3, p0, :cond_4

    .line 1035
    .end local p0           #bNowSilent:Z
    :cond_3
    iget p0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v1, Landroid/app/Notification;->defaults:I

    .line 1038
    :cond_4
    const-string p0, "pref_key_ringtone"

    const/4 p1, 0x0

    invoke-interface {p4, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1042
    .local p0, ringtoneStr:Ljava/lang/String;
    const-string p1, "file://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1043
    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1047
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x0

    .end local p0           #ringtoneStr:Ljava/lang/String;
    :goto_3
    iput-object p0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1049
    const/16 p0, 0x378

    invoke-virtual {v0, p0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1031
    .end local p2           #bVibrateSilent:Z
    .restart local p1       #audioManager:Landroid/media/AudioManager;
    :cond_6
    const/4 p0, 0x0

    move p2, p0

    goto :goto_1

    .line 1032
    .end local p1           #audioManager:Landroid/media/AudioManager;
    .restart local p2       #bVibrateSilent:Z
    :cond_7
    const/4 p0, 0x0

    goto :goto_2

    .line 1047
    .restart local p0       #ringtoneStr:Ljava/lang/String;
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_3

    .line 968
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 879
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 880
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 884
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 890
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 891
    .local v0, msgThreadId:[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 894
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 896
    :cond_0
    return-void

    .line 890
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method