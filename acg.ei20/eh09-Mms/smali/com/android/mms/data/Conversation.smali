.class public Lcom/android/mms/data/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Conversation$Cache;
    }
.end annotation


# static fields
.field private static final ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final READ_PROJECTION:[Ljava/lang/String;

.field private static final UNREAD_PROJECTION:[Ljava/lang/String;

.field private static isCached:Z

.field private static mLoadingThreads:Z

.field private static mReadContentValues:Landroid/content/ContentValues;

.field private static mSeenContentValues:Landroid/content/ContentValues;

.field private static final sAllThreadsUri:Landroid/net/Uri;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasUnreadMessages:Z

.field private mIsCbSms:Z

.field private mMarkAsBlockedSyncer:Ljava/lang/Object;

.field private mMarkAsReadBlocked:Z

.field private mMessageCount:I

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSnippet:Ljava/lang/String;

.field private mThreadId:J

.field private mUnreadMessageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    const-string v5, "read"

    .line 38
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "message_count"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "recipient_ids"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v5, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "read"

    aput-object v5, v0, v4

    sput-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    .line 57
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "read"

    aput-object v5, v0, v3

    sput-object v0, Lcom/android/mms/data/Conversation;->READ_PROJECTION:[Ljava/lang/String;

    .line 1080
    sput-boolean v3, Lcom/android/mms/data/Conversation;->isCached:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 99
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 101
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZ)V
    .locals 2
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 105
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/data/Conversation;->loadFromThreadId(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 109
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "allowQuery"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1, p0, p2, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 114
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/mms/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/data/Conversation;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mms/data/Conversation;->buildSeenContentValues()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/mms/data/Conversation;->mSeenContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/data/Conversation;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/data/Conversation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/mms/data/Conversation;->buildReadContentValues()V

    return-void
.end method

.method static synthetic access$700()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/data/Conversation;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/data/Conversation;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    return-wide v0
.end method

.method public static asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V
    .locals 6
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 629
    sget-object v3, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method private buildReadContentValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    .line 298
    sget-object v0, Lcom/android/mms/data/Conversation;->mReadContentValues:Landroid/content/ContentValues;

    const-string v1, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    :cond_0
    return-void
.end method

.method private buildSeenContentValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 290
    sget-object v0, Lcom/android/mms/data/Conversation;->mSeenContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/Conversation;->mSeenContentValues:Landroid/content/ContentValues;

    .line 292
    sget-object v0, Lcom/android/mms/data/Conversation;->mSeenContentValues:Landroid/content/ContentValues;

    const-string v1, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    :cond_0
    return-void
.end method

.method private static cacheAllThreads(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1083
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 1085
    .local v9, startT:J
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1086
    :try_start_0
    sget-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    if-eqz v1, :cond_0

    .line 1087
    monitor-exit v0

    .line 1150
    :goto_0
    return-void

    .line 1089
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1090
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1094
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1097
    .local v13, threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1100
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1101
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1102
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1103
    .local v11, threadId:J
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1107
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1108
    :try_start_2
    invoke-static {v11, v12}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 1109
    .local v7, conv:Lcom/android/mms/data/Conversation;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1111
    if-nez v7, :cond_2

    .line 1115
    :try_start_3
    new-instance v7, Lcom/android/mms/data/Conversation;

    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    const/4 v0, 0x0

    invoke-direct {v7, p0, v6, v0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1117
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    :try_start_4
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1118
    :try_start_5
    invoke-static {v7}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V

    .line 1119
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1120
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1121
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v0, "Tried to add duplicate Conversation to Cache"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1134
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v8           #e:Ljava/lang/IllegalStateException;
    .end local v11           #threadId:J
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_1

    .line 1135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1137
    :cond_1
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1138
    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1139
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 1090
    .end local v6           #c:Landroid/database/Cursor;
    .end local v13           #threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 1109
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v11       #threadId:J
    .restart local v13       #threadsOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_3
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v1

    .line 1122
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 1123
    .local v8, e:Ljava/util/ConcurrentModificationException;
    const-string v0, "Tried to modificated same object in same time"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1129
    .end local v8           #e:Ljava/util/ConcurrentModificationException;
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v7, v6, v0}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .line 1134
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v11           #threadId:J
    :cond_3
    if-eqz v6, :cond_4

    .line 1135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1137
    :cond_4
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1138
    const/4 v1, 0x0

    :try_start_c
    sput-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    .line 1139
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1143
    invoke-static {v13}, Lcom/android/mms/data/Conversation$Cache;->keepOnly(Ljava/util/Set;)V

    .line 1149
    const-string v0, "Mms/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversation.cacheAllThreads:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v9

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1139
    :catchall_4
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V
    .locals 8
    .parameter "context"
    .parameter "conv"
    .parameter "c"
    .parameter "allowQuery"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 758
    monitor-enter p1

    .line 759
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/mms/data/Conversation;->mThreadId:J

    .line 760
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/mms/data/Conversation;->mDate:J

    .line 761
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/android/mms/data/Conversation;->mMessageCount:I

    .line 762
    const/16 v3, 0x9

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p1, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I

    .line 765
    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-static {p2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, snippet:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 767
    const v3, 0x7f090011

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 769
    :cond_0
    iput-object v2, p1, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;

    .line 771
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v6

    :goto_0
    invoke-direct {p1, v3}, Lcom/android/mms/data/Conversation;->setHasUnreadMessages(Z)V

    .line 772
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v6

    :goto_1
    iput-boolean v3, p1, Lcom/android/mms/data/Conversation;->mHasError:Z

    .line 773
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v6

    :goto_2
    iput-boolean v3, p1, Lcom/android/mms/data/Conversation;->mHasAttachment:Z

    .line 774
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, recipientIds:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 779
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    monitor-enter p1

    .line 780
    :try_start_1
    iput-object v1, p1, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 781
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 782
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v5}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/data/Contact;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CBmessages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 783
    iput-boolean v6, p1, Lcom/android/mms/data/Conversation;->mIsCbSms:Z

    .line 785
    :cond_1
    const-string v3, "Mms:threadcache"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillFromCursor: conv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recipientIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "xxxxxxxx"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    :cond_2
    return-void

    .end local v0           #recipientIds:Ljava/lang/String;
    .end local v1           #recipients:Lcom/android/mms/data/ContactList;
    .restart local p0
    :cond_3
    move v3, v5

    .line 771
    goto :goto_0

    :cond_4
    move v3, v5

    .line 772
    goto :goto_1

    :cond_5
    move v3, v5

    .line 773
    goto :goto_2

    .line 774
    .end local v2           #snippet:Ljava/lang/String;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 781
    .restart local v0       #recipientIds:Ljava/lang/String;
    .restart local v1       #recipients:Lcom/android/mms/data/ContactList;
    .restart local v2       #snippet:Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;
    .locals 8
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 270
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 271
    .local v3, threadId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 272
    invoke-static {v3, v4}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 273
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 274
    invoke-static {p0, v0, p1, v7}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    move-object v1, v0

    .line 286
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .local v1, conv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 278
    .end local v1           #conv:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    invoke-direct {v0, p0, p1, v7}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 280
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    .line 286
    .restart local v1       #conv:Ljava/lang/Object;
    goto :goto_0

    .line 281
    .end local v1           #conv:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 282
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v5, "Tried to add duplicate Conversation to Cache"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 283
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 284
    .local v2, e:Ljava/util/ConcurrentModificationException;
    const-string v5, "Tried to modificated same object in same time"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    .locals 5
    .parameter "context"
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation$Cache;->get(J)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 130
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 141
    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    .local v1, conv:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 133
    .end local v1           #conv:Ljava/lang/Object;
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :cond_0
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 135
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    .line 141
    .restart local v1       #conv:Ljava/lang/Object;
    goto :goto_0

    .line 136
    .end local v1           #conv:Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v3, "Tried to add duplicate Conversation to Cache"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 138
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 139
    .local v2, e:Ljava/util/ConcurrentModificationException;
    const-string v3, "Tried to modificated same object in same time"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "allowQuery"

    .prologue
    const/4 v6, 0x1

    .line 185
    if-nez p1, :cond_0

    .line 186
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 205
    :goto_0
    return-object v4

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 194
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 198
    .local v2, threadId:J
    invoke-static {p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 199
    .end local v2           #threadId:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 200
    .local v0, exception:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1, p2, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v4

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;
    .locals 8
    .parameter "context"
    .parameter "recipients"
    .parameter "allowQuery"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Mms/conv"

    .line 150
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 151
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    .line 175
    :goto_0
    return-object v4

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Conversation$Cache;->get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 155
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_1

    move-object v4, v0

    .line 156
    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v2

    .line 159
    .local v2, threadId:J
    new-instance v0, Lcom/android/mms/data/Conversation;

    .end local v0           #conv:Lcom/android/mms/data/Conversation;
    invoke-direct {v0, p0, v2, v3, p2}, Lcom/android/mms/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 160
    .restart local v0       #conv:Lcom/android/mms/data/Conversation;
    const-string v4, "Mms/conv"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversation.get: created new conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 163
    const-string v4, "Mms/conv"

    const-string v4, "Conversation.get: new conv\'s recipients don\'t match input recpients xxxxxxxx"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/android/mms/data/Conversation$Cache;->put(Lcom/android/mms/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v4, v0

    .line 175
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "Tried to add duplicate Conversation to Cache"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 171
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, e:Ljava/util/ConcurrentModificationException;
    const-string v4, "Tried to modificated same object in same time"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;Ljava/util/ArrayList;Z)Lcom/android/mms/data/Conversation;
    .locals 3
    .parameter "context"
    .parameter
    .parameter "allowQuery"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/android/mms/data/Conversation;"
        }
    .end annotation

    .prologue
    .local p1, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 212
    if-nez p1, :cond_0

    .line 213
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 218
    :goto_0
    return-object v2

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1, v2, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .local v0, conversation:Lcom/android/mms/data/Conversation;
    move-object v2, v0

    .line 218
    goto :goto_0
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J
    .locals 11
    .parameter "context"
    .parameter "list"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 574
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 575
    .local v4, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 576
    .local v1, cacheContact:Lcom/android/mms/data/Contact;
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 577
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 580
    invoke-static {v3, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 584
    :goto_1
    if-eqz v1, :cond_1

    .line 585
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 582
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 587
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    .line 591
    .local v5, retVal:J
    const-string v7, "Mms:app"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 592
    const-string v7, "[Conversation] getOrCreateThreadId for (%s) returned %d"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    const/4 v9, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_3
    return-wide v5
.end method

.method public static getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 223
    const/4 v6, 0x0

    .line 236
    :goto_0
    return-object v6

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 227
    .local v3, recipientCount:I
    const-string v2, ""

    .line 229
    .local v2, numbers:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 230
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 231
    .local v5, tmpl:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, number:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .local v4, s:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #number:Ljava/lang/String;
    .end local v4           #s:Ljava/lang/StringBuffer;
    .end local v5           #tmpl:Ljava/lang/String;
    :cond_1
    move-object v6, v2

    .line 236
    goto :goto_0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "threadId"

    .prologue
    .line 430
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 965
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 966
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 969
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 970
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    .line 971
    return-void
.end method

.method private loadFromThreadId(JZ)Z
    .locals 8
    .parameter "threadId"
    .parameter "allowQuery"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1153
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1156
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1157
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v6, p3}, Lcom/android/mms/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/Conversation;Landroid/database/Cursor;Z)V

    .line 1159
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromThreadId: fillFromCursor returned differnt thread_id! threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1170
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1164
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromThreadId: Can\'t find thread ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static loadingThreads()Z
    .locals 2

    .prologue
    .line 1075
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-boolean v1, Lcom/android/mms/data/Conversation;->mLoadingThreads:Z

    monitor-exit v0

    return v1

    .line 1077
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setHasUnreadMessages(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    .line 552
    monitor-exit p0

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startCaching(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 974
    sget-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    if-eqz v0, :cond_0

    .line 982
    :goto_0
    return-void

    .line 975
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/Conversation;->isCached:Z

    .line 977
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Conversation$3;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Conversation$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static startDelete(Landroid/content/AsyncQueryHandler;IZJZ)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"
    .parameter "threadId"
    .parameter "isDeleteList"

    .prologue
    const/4 v2, 0x0

    .line 688
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 690
    .local v3, uri:Landroid/net/Uri;
    if-eqz p5, :cond_1

    .line 692
    if-eqz p2, :cond_0

    const-string v0, "deletable=1"

    move-object v4, v0

    .local v4, selection:Ljava/lang/String;
    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v5, v2

    .line 696
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 697
    return-void

    .line 692
    .end local v4           #selection:Ljava/lang/String;
    :cond_0
    const-string v0, "deletable=1 AND locked=0"

    move-object v4, v0

    goto :goto_0

    .line 695
    :cond_1
    if-eqz p2, :cond_2

    move-object v4, v2

    .restart local v4       #selection:Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v4           #selection:Ljava/lang/String;
    :cond_2
    const-string v0, "locked=0"

    move-object v4, v0

    goto :goto_1
.end method

.method public static startDeleteAll(Landroid/content/AsyncQueryHandler;IZZ)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"
    .parameter "isDeleteList"

    .prologue
    const/4 v2, 0x0

    .line 709
    if-eqz p3, :cond_1

    .line 711
    if-eqz p2, :cond_0

    const-string v0, "deletable=1"

    move-object v4, v0

    .line 715
    .local v4, selection:Ljava/lang/String;
    :goto_0
    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 716
    return-void

    .line 711
    .end local v4           #selection:Ljava/lang/String;
    :cond_0
    const-string v0, "deletable=1 AND locked=0"

    move-object v4, v0

    goto :goto_0

    .line 714
    :cond_1
    if-eqz p2, :cond_2

    move-object v4, v2

    .restart local v4       #selection:Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v4           #selection:Ljava/lang/String;
    :cond_2
    const-string v0, "locked=0"

    move-object v4, v0

    goto :goto_1
.end method

.method public static startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 667
    const-string v0, "Mms/conv"

    const-string v1, "speed check : startQueryForAll is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC,_id DESC"

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public static startQueryForFakeView(Landroid/content/AsyncQueryHandler;II)V
    .locals 8
    .parameter "handler"
    .parameter "token"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 646
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 647
    const-string v0, "Mms/conv"

    const-string v1, "speed check : startQueryForFakeView is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    sget-object v3, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date DESC,_id DESC LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V
    .locals 8
    .parameter "handler"
    .parameter "threadId"
    .parameter "token"

    .prologue
    const/4 v5, 0x0

    .line 727
    invoke-virtual {p0, p3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 728
    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    .line 729
    .local v3, uri:Landroid/net/Uri;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 730
    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 732
    :cond_0
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method public static startQueryHaveLockedThread(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 744
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 745
    const-string v0, "content://mms-sms/allLocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 746
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/mms/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v5, "locked=1"

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method


# virtual methods
.method public blockMarkAsRead(Z)V
    .locals 2
    .parameter "block"

    .prologue
    .line 397
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockMarkAsRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-eq p1, v1, :cond_1

    .line 403
    iput-boolean p1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    .line 404
    iget-boolean v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsReadBlocked:Z

    if-nez v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mMarkAsBlockedSyncer:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 409
    :cond_1
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized checkReadReport(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "context"
    .parameter "exit"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 306
    .local v2, threadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 308
    .local v0, threadId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 309
    const/16 v3, 0x80

    new-instance v4, Lcom/android/mms/data/Conversation$1;

    invoke-direct {v4, p0, v2, p2}, Lcom/android/mms/data/Conversation$1;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Ljava/lang/Runnable;)V

    invoke-static {p1, v0, v1, v3, v4}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    :goto_0
    monitor-exit p0

    return-void

    .line 337
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    .end local v0           #threadId:J
    .end local v2           #threadUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clearThreadId()V
    .locals 3

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearThreadId old threadId was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now zero"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation$Cache;->remove(J)V

    .line 470
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureThreadId()J
    .locals 3

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Conversation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/android/mms/data/ContactList;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    :try_start_1
    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 453
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 454
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getting TrheadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 452
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 607
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/Conversation;

    move-object v2, v0

    .line 608
    .local v2, other:Lcom/android/mms/data/Conversation;
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    iget-object v4, v2, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 610
    .end local v2           #other:Lcom/android/mms/data/Conversation;
    :goto_0
    monitor-exit p0

    return v3

    .line 609
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 610
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    goto :goto_0

    .line 607
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThreadId()J
    .locals 2

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/Conversation;->mUnreadMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 420
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAttachment()Z
    .locals 1

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraft()Z
    .locals 4

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 500
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUnreadMessages()Z
    .locals 1

    .prologue
    .line 544
    monitor-enter p0

    .line 545
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mHasUnreadMessages:Z

    monitor-exit p0

    return v0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 616
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCbSms()Z
    .locals 1

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/data/Conversation;->mIsCbSms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markAsRead()V
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 350
    .local v0, threadUri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/Conversation$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/data/Conversation$2;-><init>(Lcom/android/mms/data/Conversation;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 394
    return-void
.end method

.method public sameRecipient(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 243
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    .line 244
    .local v2, size:I
    if-le v2, v4, :cond_0

    move v3, v5

    .line 256
    :goto_0
    return v3

    .line 247
    :cond_0
    if-nez p1, :cond_2

    .line 248
    if-nez v2, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    move v3, v5

    .line 251
    goto :goto_0

    .line 253
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 256
    .local v0, incomingRecipient:Lcom/android/mms/data/ContactList;
    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public declared-synchronized setDraftState(Z)V
    .locals 4
    .parameter "hasDraft"

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 511
    :goto_0
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 483
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    const-string v0, "[%s] (tid %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/data/Conversation;->mRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/android/mms/data/Conversation;->mThreadId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
