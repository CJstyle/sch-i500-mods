.class public abstract Lcom/android/mms/transaction/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# instance fields
.field private mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/transaction/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/mms/transaction/Observer;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public detach(Lcom/android/mms/transaction/Observer;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 66
    :goto_0
    monitor-exit v0

    .line 67
    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyObservers()V
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    .line 75
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Observer;

    invoke-interface {v0, p0}, Lcom/android/mms/transaction/Observer;->update(Lcom/android/mms/transaction/Observable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 82
    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    throw v0

    .line 84
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 82
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/mms/transaction/Observable;->mIterator:Ljava/util/Iterator;

    .line 84
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method
