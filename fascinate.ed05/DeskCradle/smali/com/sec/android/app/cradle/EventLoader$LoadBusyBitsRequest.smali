.class Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;
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
    name = "LoadBusyBitsRequest"
.end annotation


# instance fields
.field public allDayCounts:[I

.field public busybits:[I

.field public numDays:I

.field public startDay:I

.field public uiCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II[I[ILjava/lang/Runnable;)V
    .locals 0
    .parameter "startDay"
    .parameter "numDays"
    .parameter "busybits"
    .parameter "allDayCounts"
    .parameter "uiCallback"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->startDay:I

    .line 63
    iput p2, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->numDays:I

    .line 64
    iput-object p3, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->busybits:[I

    .line 65
    iput-object p4, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->allDayCounts:[I

    .line 66
    iput-object p5, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->uiCallback:Ljava/lang/Runnable;

    .line 67
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/sec/android/app/cradle/EventLoader;)V
    .locals 5
    .parameter "eventLoader"

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-static {p1}, Lcom/sec/android/app/cradle/EventLoader;->access$000(Lcom/sec/android/app/cradle/EventLoader;)Landroid/os/Handler;

    move-result-object v2

    .line 71
    .local v2, handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/sec/android/app/cradle/EventLoader;->access$100(Lcom/sec/android/app/cradle/EventLoader;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, dayIndex:I
    :goto_0
    iget v3, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->numDays:I

    if-ge v1, v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->busybits:[I

    aput v4, v3, v1

    .line 76
    iget-object v3, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->allDayCounts:[I

    aput v4, v3, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/cradle/EventLoader$LoadBusyBitsRequest;->uiCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void
.end method

.method public skipRequest(Lcom/sec/android/app/cradle/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 107
    return-void
.end method
