.class Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/sec/android/app/cradle/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public numDays:I

.field public startMillis:J

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "id"
    .parameter "startMillis"
    .parameter "numDays"
    .parameter
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->id:I

    .line 122
    iput-wide p2, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->startMillis:J

    .line 123
    iput p4, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->numDays:I

    .line 124
    iput-object p5, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 125
    iput-object p6, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 126
    iput-object p7, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 127
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/sec/android/app/cradle/EventLoader;)V
    .locals 8
    .parameter "eventLoader"

    .prologue
    .line 130
    invoke-static {p1}, Lcom/sec/android/app/cradle/EventLoader;->access$200(Lcom/sec/android/app/cradle/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->startMillis:J

    iget v4, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->numDays:I

    iget v5, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcom/sec/android/app/cradle/EventLoader;->access$300(Lcom/sec/android/app/cradle/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/cradle/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V

    .line 134
    iget v0, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->id:I

    invoke-static {p1}, Lcom/sec/android/app/cradle/EventLoader;->access$300(Lcom/sec/android/app/cradle/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 135
    invoke-static {p1}, Lcom/sec/android/app/cradle/EventLoader;->access$000(Lcom/sec/android/app/cradle/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/cradle/EventLoader;->access$000(Lcom/sec/android/app/cradle/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public skipRequest(Lcom/sec/android/app/cradle/EventLoader;)V
    .locals 2
    .parameter "eventLoader"

    .prologue
    .line 142
    invoke-static {p1}, Lcom/sec/android/app/cradle/EventLoader;->access$000(Lcom/sec/android/app/cradle/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/cradle/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method
