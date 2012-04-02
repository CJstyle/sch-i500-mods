.class Lcom/sec/android/app/cradle/EventLoader$ShutdownRequest;
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
    name = "ShutdownRequest"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/cradle/EventLoader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/cradle/EventLoader$ShutdownRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public processRequest(Lcom/sec/android/app/cradle/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 47
    return-void
.end method

.method public skipRequest(Lcom/sec/android/app/cradle/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 50
    return-void
.end method
