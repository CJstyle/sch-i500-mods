.class Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;
.super Landroid/os/UEventObserver;
.source "KiesUsbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 167
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mUsbEventObserver -> UpdateCurrentState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbObserver$2;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-static {v0}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbObserver;)V

    .line 170
    return-void
.end method
