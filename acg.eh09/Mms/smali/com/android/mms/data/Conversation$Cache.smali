.class Lcom/android/mms/data/Conversation$Cache;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/data/Conversation$Cache;


# instance fields
.field private final mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 794
    invoke-static {}, Lcom/android/mms/data/Conversation$Cache;->getInstance()Lcom/android/mms/data/Conversation$Cache;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 804
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    .line 805
    return-void
.end method

.method static get(J)Lcom/android/mms/data/Conversation;
    .locals 6
    .parameter "threadId"

    .prologue
    .line 812
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v3

    .line 813
    :try_start_0
    const-string v4, "Mms:threadcache"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversation get with threadId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 831
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 832
    .local v2, mClonedCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Conversation;>;"
    sget-object v4, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v4, v4, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mClonedCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Conversation;>;"
    check-cast v2, Ljava/util/HashSet;

    .line 834
    .restart local v2       #mClonedCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Conversation;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 840
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_1

    .line 841
    monitor-exit v3

    move-object v3, v0

    .line 845
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :goto_0
    return-object v3

    .line 844
    :cond_2
    monitor-exit v3

    .line 845
    const/4 v3, 0x0

    goto :goto_0

    .line 844
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mClonedCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Conversation;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method static get(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/Conversation;
    .locals 6
    .parameter "list"

    .prologue
    .line 853
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v3

    .line 854
    :try_start_0
    const-string v4, "Mms:threadcache"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conversation get with ContactList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 868
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 869
    .local v2, mClonedCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Conversation;>;"
    sget-object v4, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v4, v4, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mClonedCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Conversation;>;"
    check-cast v2, Ljava/util/HashSet;

    .line 871
    .restart local v2       #mClonedCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Conversation;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 872
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/mms/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 873
    monitor-exit v3

    move-object v3, v0

    .line 877
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :goto_0
    return-object v3

    .line 876
    :cond_2
    monitor-exit v3

    .line 877
    const/4 v3, 0x0

    goto :goto_0

    .line 876
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #mClonedCache:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Conversation;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method static getInstance()Lcom/android/mms/data/Conversation$Cache;
    .locals 1

    .prologue
    .line 797
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Lcom/android/mms/data/Conversation$Cache;

    invoke-direct {v0}, Lcom/android/mms/data/Conversation$Cache;-><init>()V

    sput-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    .line 800
    :cond_0
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    .line 939
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 940
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 950
    :cond_0
    monitor-exit v2

    .line 955
    return-void

    .line 942
    :cond_1
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 943
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/Conversation;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 944
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 945
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 946
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 950
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/Conversation;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static put(Lcom/android/mms/data/Conversation;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 886
    sget-object v0, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v0

    .line 889
    :try_start_0
    const-string v1, "Mms:threadcache"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversation.Cache.put: conv= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    :cond_0
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache already contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/mms/data/Conversation;->access$900(Lcom/android/mms/data/Conversation;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 898
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 897
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v1, v1, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 898
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    return-void
.end method

.method static remove(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    .line 910
    sget-object v2, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    monitor-enter v2

    .line 911
    :try_start_0
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Conversation;

    .line 912
    .local v0, c:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 913
    sget-object v3, Lcom/android/mms/data/Conversation$Cache;->sInstance:Lcom/android/mms/data/Conversation$Cache;

    iget-object v3, v3, Lcom/android/mms/data/Conversation$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 914
    monitor-exit v2

    .line 918
    .end local v0           #c:Lcom/android/mms/data/Conversation;
    :goto_0
    return-void

    .line 917
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
